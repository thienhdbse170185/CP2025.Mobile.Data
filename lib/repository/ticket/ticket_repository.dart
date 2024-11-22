import 'package:data_layer/repository/ticket/ticket_api_client.dart';

class TicketRepository {
  final TicketApiClient ticketApiClient;
  const TicketRepository({required this.ticketApiClient});
}
