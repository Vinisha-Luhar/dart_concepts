
class Employee
{
  int? _id;
  String? _name;

  /// Getters without get keyword
  int getId()
  {
    return _id!;
  }
  String getName()
  {
    return _name!;
  }

  /// setters without set keyword
  void setId(int id)
  {
    _id=id;
  }
  void setName(String name)
  {
    _name = name;
  }

}

class Clerk
{
  int? _id;
  String? _name;

  Clerk(this._id,this._name);

  Map<String,dynamic> get getClerkData
  {
    return {"id": _id,"name": _name};
  }

  /// getters with get keyword
  int get getClerkId => _id!;
  String get getClerkName => _name!;

  /// setters with set keyword
  set setClerkId(int id) => _id = id;
  set setClerkName(String name) => _name = name;

}