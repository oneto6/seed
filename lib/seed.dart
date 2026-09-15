sealed class Seed<T> {
  String get id;
}

class SeedID<T> extends Seed<T> {
  @override
  final String id;
  SeedID(this.id);

  @override
  bool operator ==(Object other) => other is Seed<T> && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

class SeedValue<T> extends Seed<T> {
  final T value;
  @override
  final String id;
  SeedValue(this.id, this.value);

  @override
  bool operator ==(Object other) => other is Seed<T> && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
