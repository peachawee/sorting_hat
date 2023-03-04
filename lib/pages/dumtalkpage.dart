import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/sortingpage.dart';

class DumTalk extends StatefulWidget {
  const DumTalk({Key? key}) : super(key: key);

  @override
  State<DumTalk> createState() => _DumTalkState();
}

var num;
int? hm;

class _DumTalkState extends State<DumTalk> {

  var _total = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/hall.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Number of students',
                style: TextStyle(
                    color: Colors.black87,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 5.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _total,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the total number of new children....',
                  ),
                ),
              ),
              Material(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[800],
                    onPrimary: Colors.black,
                    minimumSize: Size(45.0, 45.0),
                    shadowColor: Color.fromARGB(255, 255, 255, 255)
                  ),
                  onPressed: () {
                    setState(() {
                      num = _total.text;
                      hm = int.parse(num);
                      _total.clear();
                    });
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SortPage()));
                    print("There are " + num.toString() +" new students.");
                  },
                  child: Text('Enter',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(
                height: 170.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/dumble.png',
                        height: 300.0,
                      ),
                      //SizedBox(width: 25.0),
                      Expanded(
                        child: Text(
                          "Girl: It's not real,the ceiling.It's just bewitched to look like the night sky.I read about it in Hogwarts A History \n \nAlbus Dumbledore: please stay calm......Now we are going to sorting homes for our new students... \n\n\n Please tell me the total number of students. \n",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SortPage()));
                        },
                        child: Icon(
                          Icons.navigate_next,
                          size: 35.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
