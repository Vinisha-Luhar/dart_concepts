

class FinalConst
{
  final String finalString1 = "final String";
  // The Final variable is initialized when it is accessed.
  // so the memory will be allocated when the final variable is used.

  static const constString1 = "static const string";
  // the instance variable can be final bt can not be constant.
  // if you want a constant at class level then make it static.


  void constExample()
  {
    const String constString = "const String";
    // The const variable is initialized during compilation.
    // so the memory will be allocated when it is initialized.
    print(constString);

    int x=10,y=20;
    final xValue=x; // we can pass a variable as an initializer to final variable.
    const yValue=30; //y;
    // we can not pass a variable as an initializer to const variable.
    // the constant variables must be initialized with a constant value
    print(xValue);
    print(yValue);
    print(y);
  }

}