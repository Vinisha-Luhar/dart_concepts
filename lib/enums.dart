
enum Days
{
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday
}

class EnumExample
{
  Days currentDay=Days.tuesday;

  void exampleOfEnum()
  {

    for(Days d in Days.values)
      {
        print(d);
      }
    switch(currentDay)
    {
      case Days.sunday:
        print("NO");
        break;
      case Days.monday:
        print("NO");
        break;
      case Days.tuesday:
        print("YES");
        break;
      case Days.wednesday:
        print("NO");
        break;
      case Days.thursday:
        print("NO");
        break;
      case Days.friday:
        print("NO");
        break;
      case Days.saturday:
        print("NO");
        break;
      default:
        print("No");
        break;
    }
  }

}