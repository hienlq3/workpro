import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/components/wp_row_detail.dart';
import 'package:wp_ticket/src/models/base_form_model.dart';

class TicketTemplateGroup extends StatelessWidget {
  final BaseFormModel splitter;
  final List<BaseFormModel> children;

  const TicketTemplateGroup({
    required this.splitter,
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WpSplitterField(
      title: splitter.nameText,
      children:
          children
              .map(
                (item) => WpRowDetail(title: item.nameText, value: item.text),
              )
              .toList(),
    );
  }
}
