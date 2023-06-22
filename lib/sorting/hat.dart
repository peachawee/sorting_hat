import 'dart:math';

import 'package:sorting_hat/pages/sortingpage.dart';

class Sorting{
  int count = 0;
  int nHouses = 0;
  int x = 0;
  String house = '';
  Sorting({int max = 4}){
    nHouses = max;
    house = house;
  }

  String? getHouse(String name,var total) {
    double avg = total/4;
    var r = Random();
    x = r.nextInt(4)+1;
    if ( NewStudent.length > total) {
      return 'All new students have been successfully sorted houses!.';
    }

        if (x == 1) {
          if( Gryffindor.length >= avg ){
            x = r.nextInt(4)+1;
            if( x != 1){
              if (x == 2) {
                house = 'slytherin';
                Slytherin.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 3) {
                house = 'ravenclaw';
                Ravenclaw.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 4) {
                house = 'hufflepuff';
                Hufflepuff.add(Student1(done1: true, name1: name, house1: house));
                return house;
              }
            }
          }else {
            house = 'gryffindor';
            Gryffindor.add(Student1(done1: true, name1: name, house1: house));
            return house;
          }
        } else if (x == 2) {
          if( Slytherin.length >= avg ){
            x = r.nextInt(4)+1;
            if( x != 2){
              if (x == 1) {
                house = 'gryffindor';
                Gryffindor.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 3) {
                house = 'ravenclaw';
                Ravenclaw.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 4) {
                house = 'hufflepuff';
                Hufflepuff.add(Student1(done1: true, name1: name, house1: house));
                return house;
              }
            }
          }else {
            house = 'slytherin';
            Slytherin.add(Student1(done1: true, name1: name, house1: house));
            return house;
          }
        } else if (x == 3) {
          if( Ravenclaw.length >= avg ){
            x = r.nextInt(4)+1;
            if( x != 3){
              if (x == 1) {
                house = 'gryffindor';
                Gryffindor.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 2) {
                house = 'slytherin';
                Slytherin.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 4) {
                house = 'hufflepuff';
                Hufflepuff.add(Student1(done1: true, name1: name, house1: house));
                return house;
              }
            }
          }else {
            house = 'ravenclaw';
            Ravenclaw.add(Student1(done1: true, name1: name, house1: house));
            return house;
          }
        } else if (x == 4) {
          if( Hufflepuff.length >= avg ){
            x = r.nextInt(4)+1;
            if( x != 4 ){
              if (x == 1) {
                house = 'gryffindor';
                Gryffindor.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 2) {
                house = 'slytherin';
                Slytherin.add(Student1(done1: true, name1: name, house1: house));
                return house;
              } else if (x == 3) {
                house = 'ravenclaw';
                Ravenclaw.add(Student1(done1: true, name1: name, house1: house));
                return house;
              }
            }
          }else {
            house = 'hufflepuff';
            Hufflepuff.add(Student1(done1: true, name1: name, house1: house));
            return house;
          }
        }

    return null;

  }
}