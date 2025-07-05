import 'package:freezed_annotation/freezed_annotation.dart';

enum TicketStatus {
  @JsonValue('Processing')
  processing,

  @JsonValue('Opened')
  opened,

  @JsonValue('Finished')
  finished,

  @JsonValue('Responding')
  responding,

  @JsonValue('Canceled')
  canceled,

  @JsonValue('Closed')
  closed,

  @JsonValue('On Time')
  onTime,

  @JsonValue('Late')
  late,
}
