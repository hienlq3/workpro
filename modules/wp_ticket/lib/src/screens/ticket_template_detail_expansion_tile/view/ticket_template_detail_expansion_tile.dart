import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/components/wp_row_detail.dart';
import 'package:wp_ticket/src/enums/base_form_type.dart';
import 'package:wp_ticket/src/models/base_form_model.dart';
import 'package:wp_ticket/src/models/template_model.dart';
import 'package:wp_ticket/src/screens/ticket_detail/bloc/ticket_detail_bloc.dart';
import 'package:wp_ticket/src/screens/ticket_template_detail_expansion_tile/view/ticket_template_group.dart';

class TicketTemplateDetailExpansionTile extends StatelessWidget {
  const TicketTemplateDetailExpansionTile({super.key});

  List<Widget> buildWidgets({required TemplateModel template}) {
    final List<Widget> widgets = [];
    List<BaseFormModel> currentChildren = [];
    int? currentSplitterId;
    BaseFormModel? currentSplitter;

    template.individuals.sort(
      (a, b) => (a.position ?? 0).compareTo((b.position ?? 0)),
    );

    for (final item in template.individuals) {
      if (item.type == BaseFormType.splitter) {
        if (currentSplitter != null) {
          widgets.add(
            TicketTemplateGroup(
              splitter: currentSplitter,
              children: currentChildren,
            ),
          );
          currentChildren = [];
        }
        currentSplitterId = item.splitterId;
        currentSplitter = item;
      } else if (item.splitterId == currentSplitterId) {
        currentChildren.add(item);
      } else {
        if (currentSplitter != null) {
          widgets.add(
            TicketTemplateGroup(
              splitter: currentSplitter,
              children: currentChildren,
            ),
          );
          currentSplitter = null;
          currentChildren = [];
        }
        widgets.add(WpRowDetail(title: item.nameText, value: item.text));
      }
    }

    if (currentSplitter != null) {
      widgets.add(
        TicketTemplateGroup(
          splitter: currentSplitter,
          children: currentChildren,
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<TicketDetailBloc, TicketDetailState, TemplateModel?>(
      selector: (state) {
        if (state is TicketDetailSuccess) {
          return state.ticketTemplate;
        }
        return null;
      },
      builder: (context, ticketTemplate) {
        if (ticketTemplate == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return WpExpansionTile(
          title: 'Thông tin chi tiết phiếu yêu cầu',
          children: buildWidgets(template: ticketTemplate),
        );
      },
    );
  }
}
