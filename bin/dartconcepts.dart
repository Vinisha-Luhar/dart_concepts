import 'package:dartconcepts/asynchronous_programming.dart';
import 'package:dartconcepts/constructors.dart';
import 'package:dartconcepts/encapsulation.dart';
import 'package:dartconcepts/enums.dart';
import 'package:dartconcepts/extensions.dart';
import 'package:dartconcepts/functions.dart';
import 'package:dartconcepts/generics.dart';
import 'package:dartconcepts/interface&abstract.dart';
import 'package:dartconcepts/listexample.dart';
import 'package:dartconcepts/method_overriding.dart';
import 'package:dartconcepts/mixins.dart';
import 'package:dartconcepts/static.dart';
import 'package:dartconcepts/streams.dart';

void main() {

  /// Extension Example
  ExtensionExample extensionExample = ExtensionExample();
  extensionExample.exampleOfExtension();

  /// Asynchronous Programming Example
  AsynchronousProgrammingExample asynchronousProgrammingExample = AsynchronousProgrammingExample();
  asynchronousProgrammingExample.synchronousExample();
  asynchronousProgrammingExample.asynchronousExample();

  /// Streams Example
  StreamExample streamExample = StreamExample();
  streamExample.exampleOfStreams();

  /// Generics Example
  GenericsExample genericsExample = GenericsExample();
  genericsExample.exampleOfGenerics();

  /// Mixins Example
  C cObject = C("Flutter_Dart",11);
  cObject.run();
  cObject.methodOfA();
  cObject.methodOfB();
  print(cObject.aVar);
  print(cObject.bVar);

  /// Interface example
  InterfaceAbstractExample interfaceAbstractExample = InterfaceAbstractExample();
  print(interfaceAbstractExample.num);
  interfaceAbstractExample.abstractMethod();
  interfaceAbstractExample.interfaceMethod();
  interfaceAbstractExample.nonAbstractMethod();

  // Abstract Example
  Demo demo = Demo(1121);
  demo.nonAbstractMethod();
  demo.abstractMethod();
  print(demo.num);

  /// Enums & Switch Case Example
  EnumExample enumExample = EnumExample();
  enumExample.exampleOfEnum();

  /// Static Keyword Example
  // static variables can be accessed without class objects
  print("This is the Static String ${StaticClass.staticString}");
  StaticClass.staticMethod();

  /// Method Overriding & Super Example
  Dog dog = Dog.speed(500);
  dog.run();

  /// Constructor Examples
  Person person = Person("Vinisha", 22, "Ahmedabad", 5000.00);
  person.display();
  Person person2= Person("Vidisha", 22, "Ghandhinagar");
  person2.display();
  Person person3=Person.personDetails("Surat",name: "Ashish",age: 26);
  person3.display();
  Person person4 = Person.personDefaultDetails();
  person4.display();

  ConstConstructor constConstructor = ConstConstructor("hello This is a COnst Constructor");
  print(constConstructor.finalString);
  
  /// Example of Encapsulation
  Employee employee = Employee();
  employee.setId(1);
  employee.setName("Vinisha");
  print("ID=${employee.getId()} \n NAME=${employee.getName()}");

  Clerk clerk = Clerk(11,"Navin");
  print(clerk.getClerkData);
  clerk.setClerkId=10;
  clerk.setClerkName="Clerk Name";
  print("Clerk Id=${clerk.getClerkId} \nClerk Name=${clerk.getClerkName}");

  /// Functions Example
  FunctionsExample functionsExample = FunctionsExample();
  functionsExample.display();
  functionsExample.addition(10, 20);
  print(functionsExample.getSum());
  print(functionsExample.multiplication(num1: 10,num2: 20));
  print(functionsExample.printInfo("Chanda", "Female"));
  print(functionsExample.subtraction(num1: 10, num2: 5));
  print(functionsExample.cube(5));

  ///List Example
  ListExample listExample = ListExample();
  listExample.exampleOfList();
}
