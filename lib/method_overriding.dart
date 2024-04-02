


class Animal
{
  int animalSpeed=20;
  Animal.speed(this.animalSpeed);
  void run()
  {
    print("Animal");
  }
}

class Cat extends Animal
{
  Cat.speed(int speed) : super.speed(speed);

  @override
  void run() {
    print("cat");
    print(super.animalSpeed);
    super.run();
  }
}

class Dog extends Cat
{
  Dog.speed(int dogSpeed) : super.speed(dogSpeed);

  @override
  void run() {
    print("Dog");
    super.run();
  }
}