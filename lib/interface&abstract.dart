

// abstract class
abstract class AbstractClass
{

  int? abstractVar;

  AbstractClass(this.abstractVar);

  void abstractMethod();
  void nonAbstractMethod()
  {
    print("this is the non abstract method");
  }

}

class InterfaceClass
{

  int num=10;

  void interfaceMethod()
  {
    print("This is the method of Interface class");
  }
}


/// use implements keyword for an interface
/// can access one or more interfaces
/// in case of interface we have to override all properties of an interface
class InterfaceAbstractExample implements AbstractClass,InterfaceClass
{
  @override
  int? abstractVar;

  @override
  void abstractMethod() {
    print("this is the Abstract method of AbstracrClass");
  }

  @override
  void nonAbstractMethod() {
    print("this is the non abstract method of AbstractClass");
  }

  @override
  void interfaceMethod() {
    print("this is the method of an InterfaceClass");
  }

  @override
  int num=10;

}


// extends keyword to use the properties of an Abstract class
// a class can extend only one abstract class
// in case of abstract class only abstract methods will be overridden.
class Demo extends AbstractClass implements InterfaceClass
{
  
  Demo(int abstractVar) : super(abstractVar);

  @override
  void abstractMethod() {
    print("Demo Class Method");
  }

  @override
  int num=11;

  @override
  void interfaceMethod() {
  }

}