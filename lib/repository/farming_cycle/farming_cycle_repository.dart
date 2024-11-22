import 'package:data_layer/repository/farming_cycle/farming_cycle_api_client.dart';

class FarmingCycleRepository {
  final FarmingCycleApiClient farmingCycleApiClient;
  const FarmingCycleRepository({required this.farmingCycleApiClient});
}
