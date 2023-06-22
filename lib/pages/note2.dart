import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/trainpage.dart';

class NoteTwo extends StatefulWidget {
  const NoteTwo({Key? key}) : super(key: key);

  @override
  State<NoteTwo> createState() => _NoteTwoState();
}

class _NoteTwoState extends State<NoteTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image:DecorationImage(
                image:AssetImage("assets/images/innote.png"),
                fit: BoxFit.fitHeight,
              )
          ),
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
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white30,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/images/harry.jpg',
                          height: 30.0,
                        ),
                      ),
                      //SizedBox(width: 25.0),
                      const SizedBox(width: 20.0),
                      const Expanded(
                        child: Text(
                          "It's real. I received an invitation letter to study at Hogwarts!..",
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
                  foregroundColor: Colors.black, backgroundColor: Colors.black12,
                  shape: const CircleBorder(),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TrainPage()));
                },
                child: const Row(
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
