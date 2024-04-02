
class ListExample
{
  List<int> age=[10,20,30,40,50];
  List<int> speed=[50,60,70];
  List<String> names=["Dhairya","Akshat","Apurva","Navin","Chanda"];

  Map<String,dynamic> data = {
    "name":"vinisha",
    "id":1,
    "salary":5000.00
  };

  void exampleOfList()
  {
    print("List Length ${age.length}");
    print(age[1]);
    print("Index of Navin ${names.indexOf("Dhairya")}");
    age[4]=60;
    print("First Item of List Age ${age.first} \nLast Item of List Names ${names.last}");
    print(age.isEmpty);
    print(names.isNotEmpty);
    print("Reverse List ${age.reversed}");
    age.add(100);
    names.addAll(["Gaurav","Mohini","Krishiv"]);
    age.forEach((element) {print(element);});
    print(names.contains("Dhairya"));
    age.insert(6, 90);
    names.removeAt(3);
    age.remove(100);
    names.elementAt(6);
    age.removeLast();
    print(age);
    print(names);
    print(data.keys);
    print(data.values);
    print(data["name"]);
    data["id"]=5;
    print(data.containsKey("id"));
    print(data.containsValue("vinisha"));
    data.remove("salary");
    print(data);
    data.forEach((key, value) {print("$key $value");});
  }
}