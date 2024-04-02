
class Person extends ConstConstructor
{
  String? name;
  int? age;
  String? address;
  double? salary;

  /// Constructor with Optional Prameters
  Person(this.name,this.age,this.address,[this.salary]) : super("Hello1");

  /// Named Constructor with Named Parameters
  Person.personDetails(this.address,{this.name,this.age}) : super("Hello2");

  ///Constructor with default values
  Person.personDefaultDetails({this.name="dart",this.address="Ahmedabad",this.age=20}) : super("hello3");

  void display()
  {
    print("Name=$name \n Age=$age \n Address=$address \n Salary=$salary");
  }

}

class ConstConstructor
{
  final String? finalString;

  const ConstConstructor(this.finalString);
}