import 'package:data_layer/repository/notification/notification_api_client.dart';

class NotificationRepository {
  final NotificationApiClient notificationApiClient;
  const NotificationRepository({required this.notificationApiClient});
}
