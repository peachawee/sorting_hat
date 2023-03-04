import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/note2.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/note1.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 30.0,
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
                          'assets/images/ron.jpg',
                          height: 30.0,
                        ),
                      ),
                      //SizedBox(width: 25.0),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Text(
                          "Hogwarts..!!",
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NoteTwo()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Press here to accept..',
                      style: TextStyle(
                        fontSize: 15.0,
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
