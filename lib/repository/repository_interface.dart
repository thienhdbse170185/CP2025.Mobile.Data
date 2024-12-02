abstract class IRepository<T> {
  Future<List<T>> getAll();
  Future<T?> getById(String id);
  Future<bool> insert(T item);
  Future<bool> update(T item);
  Future<bool> delete(String id);
}
