import 'package:sorting_hat/pages/sortingpage.dart';

class CheckAdd{
  var home;
  Add(){
    home = home;
  }

  void cNa(String name, String house){
    if( house == 'gryffindor'){
      Gryffindor.add(Student(done: true, name: name, house: house));
    }
    if( house == 'slytherin'){
      Slytherin.add(Student(done: true, name: name, house: house));
    }
    if( house == 'ravenclaw'){
      Ravenclaw.add(Student(done: true, name: name, house: house));
    }
    if( house == 'hufflepuff'){
      Hufflepuff.add(Student(done: true, name: name, house: house));
    }

  }

}
