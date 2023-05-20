class Vector3d<T extends num> {
  final T x;
  final T y;
  final T z;

  Vector3d(this.x, this.y, this.z);

  Vector3d operator +(Vector3d v) {
    return Vector3d(x + v.x, y + v.y, z + v.z);
  }

  Vector3d operator -(Vector3d v) {
    return Vector3d(x - v.x, y - v.y, z - v.z);
  }

  @override
  String toString() => "Vector3d($x, $y, $z)";
}

void main(List<String> args) {
  final Vector3d a = Vector3d(1, -1, 0);
  final Vector3d b = Vector3d(-1, 1, 0);
  print(a + b); // Vector3d(0, 0, 0)
  print(a - b); // Vector3d(2, -2, 0)
}
