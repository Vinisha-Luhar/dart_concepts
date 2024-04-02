
import 'dart:async';

class StreamExample
{

  List<String> names = ["vinisha","janvi","navin","dhairya","aakash"];

  // created stream named getLangNames()
  Stream<String> getLangNames() async*{
    await Future.delayed(Duration(seconds: 1));
    yield "Dart";
    await Future.delayed(Duration(seconds: 1));
    yield "Flutter";
    await Future.delayed(Duration(seconds: 1));
    yield "Android";
    await Future.delayed(Duration(seconds: 1));
    yield "Java";
    await Future.delayed(Duration(seconds: 1));
    yield "Python";
  }

  // created int stream named getNumbers()
  Stream<int> getNumbers()
  {
    return Stream.fromIterable([1,2,3,4,5]);
  }

  Stream<int> numberCreator() async*
  {
    for(int i=0;i<=5;i++)
      {
        yield i;
      }
  }


  void exampleOfStreams() async
  {
    await for(String str in getLangNames())
      {
        print(str);
      }

    await for(int num in getNumbers())
      {
        print(num);
      }

    StreamController<String> streamController = StreamController<String>();

    // adding data to the stream
    names.forEach((element) {streamController.sink.add(element);});
    names.forEach((element)=>print(element));

    final subscription = streamController.stream.listen((data) {
      print(data);
    },onError: (error){
      print(error);
    },onDone: (){
      print("stream closed");
    });

    // adding an error to stream
    streamController.sink.addError("This is an error");

    // closing the stream
    streamController.close();

    // cancel the subscription
    subscription.cancel();
  }
}