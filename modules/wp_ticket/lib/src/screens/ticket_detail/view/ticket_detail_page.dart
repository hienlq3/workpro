import 'package:flutter/material.dart';

class TicketDetailPage extends StatelessWidget {
  final int? ticketId;

  const TicketDetailPage({super.key, this.ticketId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ticketId?.toString() ?? '')),
      body: SafeArea(child: Text('Ticket detail')),
    );
  }
}
