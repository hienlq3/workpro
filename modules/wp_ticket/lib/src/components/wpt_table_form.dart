import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/enums/base_form_type.dart';
import 'package:wp_ticket/src/models/base_form_model.dart';

class WptTableForm extends StatefulWidget {
  final BaseFormModel baseForm;

  const WptTableForm({super.key, required this.baseForm});

  @override
  State<WptTableForm> createState() => _TableFormState();
}

class _TableFormState extends State<WptTableForm> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final columnNumber = widget.baseForm.columns?.length ?? 0;
    final rowNumber = widget.baseForm.values?.length ?? 0;
    final columns = widget.baseForm.columns ?? [];
    final values = widget.baseForm.values ?? [];
    List<List<BaseFormModel>> twoDArray = List<List<BaseFormModel>>.generate(
      (rowNumber ~/ columnNumber),
      (rowIndex) => List<BaseFormModel>.generate(columnNumber, (columnIndex) {
        BaseFormModel value = values[(rowIndex * columnNumber + columnIndex)];
        final nameText = columns[columnIndex].nameText;
        final type = columns[columnIndex].type;
        value = value.copyWith(nameText: nameText, type: type);
        return value;
      }, growable: false),
      growable: false,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpacing.kSpace12,
      children: [
        Text(
          '${widget.baseForm.nameText}:',
          style: context.textTheme.kSubtitle2.copyWith(
            color: AppColor.wpTypographySubtitleColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.wpBorderBorder1Color),
            // borderRadius: BorderRadius.all(
            //   Radius.circular(AppRadius.kDefaultBorderRadius),
            // ),
          ),
          child: Scrollbar(
            thumbVisibility: true,
            // radius: const Radius.circular(AppRadius.kDefaultBorderRadius),
            trackVisibility: true,
            interactive: true,
            controller: _scrollController,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              controller: _scrollController,
              child: DataTable(
                key:
                    widget.baseForm.id != null
                        ? Key(widget.baseForm.id.toString())
                        : null,
                headingRowColor: WidgetStateProperty.all(
                  AppColor.wpBackgroundGrey1Color,
                ),
                columns:
                    List<DataColumn>.generate(
                      columnNumber,
                      (index) => DataColumn(
                        label: Text(
                          columns[index].nameText,
                          style: context.textTheme.kSubtitle2.copyWith(
                            color: AppColor.wpTypographySubtitleColor,
                          ),
                        ),
                      ),
                    ).toList(),
                rows:
                    twoDArray
                        .mapIndexed(
                          (columns, index) => DataRow(
                            color:
                                index % 2 == 1
                                    ? WidgetStateProperty.all(
                                      AppColor.wpBackgroundGrey1Color,
                                    )
                                    : null,
                            onLongPress: () {},
                            cells:
                                columns
                                    .map(
                                      (column) => DataCell(
                                        Builder(
                                          builder: (context) {
                                            switch (column.type) {
                                              case BaseFormType.upload:
                                                return Text(
                                                  column.filenames?.trim() ??
                                                      '',
                                                  // style: context
                                                  //     .textTheme
                                                  //     .kSmallRegular
                                                  //     .copyWith(
                                                  //       color:
                                                  //           AppColors
                                                  //               .kTextLinkColor,
                                                  //     ),
                                                );
                                              default:
                                                return Text(
                                                  column.text.trim(),
                                                  style: context
                                                      .textTheme
                                                      .kTitle6
                                                      .copyWith(
                                                        color:
                                                            AppColor
                                                                .wpTypographyLabelColor,
                                                      ),
                                                );
                                            }
                                          },
                                        ),
                                      ),
                                    )
                                    .toList(),
                          ),
                        )
                        .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
