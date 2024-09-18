void main() {
  final a = A();
  print(a.b());
}

class A {
  int b() => 1;
}

extension AE on A {
  int b() => 2;
}
