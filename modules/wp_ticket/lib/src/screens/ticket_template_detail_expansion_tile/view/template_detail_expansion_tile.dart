import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/components/wpt_template_detail.dart';
import 'package:wp_ticket/src/models/base_form_model.dart';
import 'package:wp_ticket/src/screens/ticket_detail/bloc/ticket_detail_bloc.dart';

class TemplateDetailExpansionTile extends StatelessWidget {
  const TemplateDetailExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
      TicketDetailBloc,
      TicketDetailState,
      List<BaseFormModel>?
    >(
      selector: (state) {
        if (state is TicketDetailSuccess) {
          return state.baseForms;
        }
        return null;
      },
      builder: (context, baseForms) {
        if (baseForms == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return WpExpansionTile(
          key: const ValueKey('template_detail_tile'),
          title: 'Thông tin chi tiết phiếu yêu cầu',
          children: [WptTemplateDetail(baseForms: baseForms)],
        );
      },
    );
  }
}
