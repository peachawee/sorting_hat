import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/dumtalkpage.dart';
import 'package:sorting_hat/pages/mempage.dart';
import 'package:sorting_hat/pages/startpage.dart';
import 'package:sorting_hat/sorting/checkhouse.dart';
import 'package:sorting_hat/sorting/hat.dart';

class SortPage extends StatefulWidget {
  const SortPage({Key? key}) : super(key: key);

  @override
  State<SortPage> createState() => _SortPageState();
}

class Student{
  bool done;
  String name;
  String house;
  Student({required this.done, required this.name, required this.house});
}

class Student1{
  bool done1;
  String name1;
  String house1;
  Student1({required this.done1, required this.name1, required this.house1});
}

var NewStudent = [];
var Gryffindor = [];
var Slytherin = [];
var Ravenclaw = [];
var Hufflepuff = [];

class _SortPageState extends State<SortPage> {

  final _source = TextEditingController();

  var name = '';

Sorting sorting = new Sorting();
CheckAdd checkadd = new CheckAdd();

  void _handleClickEnterName(String name) {
    var house = sorting.getHouse(name, int.parse(num));
    if( NewStudent.length >= int.parse(num) ) {
      print('All new students have been successfully sorted houses!.');
      showDialog(
        context: context,
        builder: (context) {
          Future.delayed(
            Duration(seconds: 2),
                () {
              Navigator.of(context).pop(true);
            },
          );

          return AlertDialog(
            title: Text('Complete!!!'),
            content: Text('All new students have been successfully sorted houses!.'),
          );
        },
      );
    }else if( house != null ){
        showDialog(
          context: context,
          builder: (context) {
            Future.delayed(
              Duration(seconds: 2),
                  () {
                Navigator.of(context).pop(true);
              },
            );

            return AlertDialog(
              title: Text(house),
              content: Text('congratulations!!!'),
            );
          },
        );
      NewStudent.add(Student(done: true, name: name, house: house));
      print("The child's name was " + name + "!.");
      print("all "+ NewStudent.length.toString());
      print("gryffindor "+ Gryffindor.length.toString());
      print("slytherin "+ Slytherin.length.toString());
      print("ravenclaw "+ Ravenclaw.length.toString());
      print("hufflepuff "+ Hufflepuff.length.toString());
    } else if( house == null ){
      print('Please enter only number / enter your name again');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/select.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Name..',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 6.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.orange[800],
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(15.0, 15.0),
                        blurRadius: 6.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                  controller: _source,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name....',
                  ),
                ),
              ),
              Material(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[800],
                    onPrimary: Colors.black,
                    minimumSize: Size(45.0, 45.0),
                  ),
                  onPressed: () {
                    setState(() {
                    name = _source.text;
                    _handleClickEnterName(name);
                    _source.clear();
                    });
                  },
                  child: Text('Sorting',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white30,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/images/mcgona.png',
                          height: 200.0,
                        ),
                      ),
                      //SizedBox(width: 25.0),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Text(
                          "Minerva McGonagall: Now when I call your name,you will come forth,I shall place the Sorting Hat on your head,and you will be sorted into your houses. \n\n\n Please enter your name..",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black12,
                  onPrimary: Colors.black,
                  shape: CircleBorder(),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MemPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Press to see all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
