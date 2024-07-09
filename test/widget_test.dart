abstract class Car {
  void start() {
    print("Car starts");
  }

  void move() {
    print("Car moves on roads");
  }
}

abstract class Boat {
  void starts() {
    print("Boat starts");
  }

  void move() {
    print("Boat moves on water");
  }
}

class Main implements Boat, Car {
  @override
  void move() {
    // TODO: implement move
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void starts() {
    // TODO: implement starts
  }
}

void main() {
  final s = Main();
  s.move();
}
