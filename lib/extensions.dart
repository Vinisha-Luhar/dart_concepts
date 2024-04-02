// extensions are a way to add functionality to existing library.
// cannot invoke extensions on variables declared with dynamic.


/// This is Unnamed extension so it can be used only in this file
extension on String {
  String concat(String str2)
  {
    return this+str2;
  }
}

/// This is named Extension so we can use this in any file just by importing this file
extension IntAddition on int
{
  int add(int num2)
  {
    return this+num2;
  }
}

extension IntAddition2 on int
{
  int add(int num2)
  {
    return this+num2;
  }
}

extension GenericExtension<T> on List<T>
{
  int get doubleLength => length * 2;
  List<T> get reverseList => reversed.toList();
}

class ExtensionExample
{
  String name1="dart";
  String name2="flutter";
  List<int> allNumbers = [1,2,3,4,5,6,7,8,9,10];

  void exampleOfExtension()
  {
    print("This is the Concatenation String Extension ${name1.concat(name2)}");
    //print("Add Two Number Integer Extension ${5.add(5)}");
    print("extension of IntAddition ${IntAddition(5).add(10)}");
    print("extension of IntAddition2 ${IntAddition2(10).add(5)}");
    // if we have two extension of same name then we can access it using their extension names....
    print(allNumbers.doubleLength);
    print(allNumbers.reverseList);
  }
}

