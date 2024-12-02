abstract class IDataClient<T> {
  Future<T> create(T entity);
  Future<T> read(String id);
  Future<T> update(T entity);
  Future<bool> delete(String id);
}
