
class StaticClass
{
  // This is the Static Variable
  static String staticString = "Static String";

  int num=10;

  StaticClass()
  {
    StaticClass.staticString = "Hello World";
  }

  // This is the static method
  //
  static String staticMethod()
  {
    print(staticString);
    return staticString;
  }

}