// import 'package:data_layer/data_layer.dart';
// import 'package:data_layer/network/http_client.dart';
// import 'package:data_layer/repository/crud_repository.dart';
// import 'package:data_layer/unit_of_work.dart';

// class UnitOfWork implements IUnitOfWork {
//   final Map<Type, dynamic> _repositories = {};

//   @override
//   ICrudRepository<T> getRepository<T>() {
//     if (!_repositories.containsKey(T)) {
//       if (T == TaskDto) {
//         _repositories[T] = TaskRepository(dataClient: TaskApiClient(dio: dio));
//       } else {
//         throw Exception('Repository for type $T not found');
//       }
//     }
//     return _repositories[T] as ICrudRepository<T>;
//   }
// }
