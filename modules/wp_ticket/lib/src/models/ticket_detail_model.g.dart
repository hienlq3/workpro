// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketDetailModel _$TicketDetailModelFromJson(Map<String, dynamic> json) =>
    _TicketDetailModel(
      ticketInfo:
          json['TicketInfos'] == null
              ? null
              : TicketInfoModel.fromJson(
                json['TicketInfos'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$TicketDetailModelToJson(_TicketDetailModel instance) =>
    <String, dynamic>{'TicketInfos': instance.ticketInfo};
