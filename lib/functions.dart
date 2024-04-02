
class FunctionsExample
{
  int sum=0;
  int mul=0;

  /// This is the Anonymous Function
  var cube = (int number){
    return number*number*number;
  };

  /// No parameter No return type function
  /// Arrow Function
  void display() => print("SUM = $sum");

  /// Parameter & no return type function
  /// function with positional and optional parameters
  void addition(int num1,int num2,[int? num3])/// num1 & num 2, These are parameters
  {
    sum=num1+num2;
  }

  /// No parameter & return type function
  int getSum()
  {
    return sum;
  }

  /// Parameter & return type function
  /// function with named parameters
  int multiplication({int? num1,int? num2})
  {
    return mul = (num1!*num2!);
  }

  /// default values on positional parameters
  String printInfo(String name,String gender,[String title="sir/ma'am"])
  {
    return  "$name $gender $title";
  }

  int subtraction({required int num1,required int num2})
  {
    return num1-num2;
  }


}