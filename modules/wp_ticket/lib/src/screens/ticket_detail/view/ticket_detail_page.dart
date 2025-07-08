import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/models/ticket_info_model.dart';
import 'package:wp_ticket/src/repositories/ticket_repository.dart';
import 'package:wp_ticket/src/screens/ticket_template_detail_expansion_tile/view/template_detail_expansion_tile.dart';
import 'package:wp_ticket/src/screens/ticket_detail/bloc/ticket_detail_bloc.dart';

class TicketDetailPage extends StatelessWidget {
  final String? ticketTitle;
  final int? ticketId;
  final int? phaseId;

  const TicketDetailPage({
    super.key,
    this.ticketTitle,
    this.ticketId,
    this.phaseId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) => TicketDetailBloc(ticketRepository: getIt<TicketRepository>())
            ..add(
              TicketDetailFetched(ticketId: ticketId ?? -1, phaseId: phaseId),
            ),
      child: const TicketDetailView(),
    );
  }
}

class TicketDetailView extends StatelessWidget {
  const TicketDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: AppColor.wpTitleColor.value,
        ),
        backgroundColor: AppColor.wpBackgroundGrey1Color,
        body: SafeArea(
          child: Column(
            spacing: AppSpacing.kSpace16,
            children: [
              const _TicketHeader(),
              const Expanded(child: _TicketTabView()),
            ],
          ),
        ),
      ),
    );
  }
}

class _TicketHeader extends StatelessWidget {
  const _TicketHeader();

  @override
  Widget build(BuildContext context) {
    final ticketTitle = context.select<TicketDetailBloc, String?>(
      (bloc) =>
          (bloc.state is TicketDetailSuccess)
              ? (bloc.state as TicketDetailSuccess).ticketInfo?.ticketId
                      .toString() ??
                  ''
              : '',
    );

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.kSpace12,
              horizontal: AppSpacing.kSpace16,
            ),
            child: Text(
              ticketTitle ?? '',
              style: context.textTheme.kTitle2.copyWith(
                color: AppColor.wpTitleColor.value,
              ),
            ),
          ),
          TabBar(
            indicatorColor: AppColor.wpPrimaryColor.value,
            labelColor: AppColor.wpPrimaryColor.value,
            unselectedLabelColor: AppColor.wpSubtitleColor.value,
            tabs: const [
              Tab(text: 'Chi tiết phiếu'),
              Tab(text: 'Luồng nghiệp vụ'),
            ],
          ),
        ],
      ),
    );
  }
}

class _TicketTabView extends StatelessWidget {
  const _TicketTabView();

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        SingleChildScrollView(
          child: Column(
            spacing: AppSpacing.kSpace16,
            children: [_TicketDetailTab(), TemplateDetailExpansionTile()],
          ),
        ),
        SizedBox.shrink(),
      ],
    );
  }
}

class _TicketDetailTab extends StatelessWidget {
  const _TicketDetailTab();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<TicketDetailBloc, TicketDetailState, TicketInfoModel?>(
      selector: (state) {
        if (state is TicketDetailSuccess) {
          return state.ticketInfo;
        }
        return null;
      },
      builder: (context, ticketInfo) {
        if (ticketInfo == null) {
          return const Center(child: CircularProgressIndicator());
        }

        return WpExpansionTile(
          title: 'Thông tin chung',
          children: [
            WpLabelValueField(title: 'Tên phiếu', value: ticketInfo.title),
            WpLabelValueField(
              title: 'Loại yêu cầu',
              value: ticketInfo.processName,
            ),
            WpLabelValueField(
              title: 'Trạng thái',
              value: ticketInfo.statusText,
            ),
          ],
        );
      },
    );
  }
}
