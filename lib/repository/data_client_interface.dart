abstract class IDataClient<T> {
  Future testConnect();
  Future<bool> create(T request);
  Future<T> read(String id);
  Future<T> update(T entity);
  Future<bool> delete(String id);
}
