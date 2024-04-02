


class AsynchronousProgrammingExample
{
  void synchronousExample()
  {
    print("Example of synchronous programming");
    print("first Line");
    print("second Line");
    print("third Line");
    print("fourth Line");
    print("fifth Line");
  }

  Future<String> getName()
  {
    return Future.delayed(Duration(seconds: 3),() => "dart");
  }

  void getData() async
  {
    String data = await getName();
    print(data);
  }

  void asynchronousExample()
  {
    print("Example of asynchronous programming");
    print("first Line");
    print("second Line");
    Future.delayed(Duration(seconds: 5),(){print("third Line");});
    getName();
    getName().then((value) => print(value)).
    catchError((error){
      print("error $error");
    }).
    whenComplete(() => print("Completed"));
    print("fourth Line");
    print("fifth Line");
  }



}