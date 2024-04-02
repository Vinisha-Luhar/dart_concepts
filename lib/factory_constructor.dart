
import 'dart:js_interop';

class FactoryConstructorExample
{
  int age = 0;
  String? name;

  FactoryConstructorExample(this.name,this.age);

  static FactoryConstructorExample? factoryConstructorExample;


  // Singleton Method
  // factory constructor returns the existing object of a class
  factory FactoryConstructorExample.factoryExample()
  {
    if(factoryConstructorExample.isNull)
      {
        factoryConstructorExample = FactoryConstructorExample("Dart",30);
      }
    return factoryConstructorExample!;
  }


}