//<T> عباره عن المودل

abstract class DbOperations<T> {
  Future<int> create(T object);
  Future<List<T>> read();
  Future<T?> show(int id); 
  Future<bool> update(T object);
  Future<bool> delete(int id);
}
