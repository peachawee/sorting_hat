import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/startpage.dart';

class TrainPage extends StatefulWidget {
  const TrainPage({Key? key}) : super(key: key);

  @override
  State<TrainPage> createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/train.jpg"),
            fit: BoxFit.fitWidth,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // SizedBox(
              //   height: 450.0,
              // ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 170.0,
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
                      SizedBox(height: 50.0,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/images/find.png',
                          height: 140.0,
                        ),
                      ),
                      //SizedBox(width: 25.0),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Text(
                          "Someone: Excuse me,excuse me. Excuse me sir.Can you tell me where i might find Platform 9 and 3/4? \n \nTrain staff: 9 and 3/4? Think you're being funny do you? \n \nSomeone: Muggles? \n \nAunt: Come on! Platform 9 and 3/4 this way...",
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                  'Next. . .',
                  style: TextStyle(
                    color: Colors.amber[800],
                    fontSize: 25.0,
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
                          builder: (context) => StartPage()));
                    },
                    child: Icon(
                      Icons.navigate_next,
                      size: 30.0,
                    ),
                  ),
                ],
        ),

            ],
          ),
        ),

      ),
    );
  }
}
