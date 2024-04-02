
mixin A
{
  int aVar=10;
  void methodOfA()
  {
    print("method of A");
  }
}

abstract class Car
{
  String? name;
  double? speed;

  Car(this.name,this.speed);

  void run();
}


/// mixin B is only used by the class that extends Car
mixin B on Car
{
  String bVar="BVariable";
  void methodOfB()
  {
    print("method of B");
  }
}

class C extends Car with A,B
{
  C(String name, double speed) : super(name,speed);

  @override
  void run() {
    print("$name $speed");
  }

  // we have access of all properties of A and B
}

class D with A
{
  // D can access all the properties of A
}
