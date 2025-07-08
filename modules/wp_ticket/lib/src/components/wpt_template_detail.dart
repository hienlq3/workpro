import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/components/wpt_table_form.dart';
import 'package:wp_ticket/src/components/wpt_template_group.dart';
import 'package:wp_ticket/src/enums/base_form_type.dart';
import 'package:wp_ticket/src/models/base_form_model.dart';

class WptTemplateDetail extends StatelessWidget {
  final List<BaseFormModel> baseForms;
  const WptTemplateDetail({super.key, required this.baseForms});

  List<Widget> buildWidgets() {
    final List<Widget> widgets = [];
    List<BaseFormModel> currentChildren = [];
    int? currentSplitterId;
    BaseFormModel? currentSplitter;

    void addCurrentSplitterGroup() {
      if (currentSplitter != null) {
        widgets.add(
          WptTemplateGroup(
            key: ValueKey(currentSplitter!.id),
            splitter: currentSplitter!,
            children: currentChildren,
          ),
        );
        currentSplitter = null;
        currentChildren = [];
      }
    }

    for (final item in baseForms) {
      if (item.type == BaseFormType.splitter) {
        addCurrentSplitterGroup();
        currentSplitterId = item.splitterId;
        currentSplitter = item;
      } else if (currentSplitterId != null &&
          item.splitterId == currentSplitterId) {
        currentChildren.add(item);
      } else {
        addCurrentSplitterGroup();
        if (item.type == BaseFormType.table) {
          widgets.add(WptTableForm(key: ValueKey(item.id), baseForm: item));
        } else {
          widgets.add(
            WpLabelValueField(
              key: ValueKey(item.id),
              title: item.nameText,
              value: item.text,
            ),
          );
        }
      }
    }

    // Check cuối cùng
    addCurrentSplitterGroup();

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: buildWidgets());
  }
}
