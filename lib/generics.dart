
// This is a generic class
class GenericClass<T>
{
  T value1;
  T value2;
  GenericClass(this.value1,this.value2);

  T getValue(){
    return value1;
  }

  // This is the generic method
  T checkEmpty<T>(T newValue)
  {
    return newValue;
  }
}

class GenericsExample
{
  
  GenericClass<String> genericClass = GenericClass<String>("GenericString1","GenericString2");

  void exampleOfGenerics()
  {
    String str=genericClass.getValue();
    print(genericClass.checkEmpty(2));
    print(str);
  }

}