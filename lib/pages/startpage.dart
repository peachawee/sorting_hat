import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:sorting_hat/pages/mempage.dart';
import 'package:sorting_hat/pages/sortingpage.dart';
import 'package:sorting_hat/pages/welcomepage.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/wall1.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black12,
                        onPrimary: Colors.orange[600],
                        shape: CircleBorder(),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MemPage()));
                      },
                      child: IconButton(
                        icon: Image.asset("assets/images/user.png",fit: BoxFit.fitHeight),
                        iconSize: 40.0,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MemPage()));
                        },
                      ),
                    ),

                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black12,
                        onPrimary: Colors.orange[600],
                        shape: CircleBorder(),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => StartPage()));
                      },
                      child: IconButton(
                        icon: Image.asset("assets/images/reset.png",fit: BoxFit.fitHeight),
                        iconSize: 40.0,
                        onPressed: () {
                           NewStudent.clear();
                           Gryffindor.clear();
                           Slytherin.clear();
                           Hufflepuff.clear();
                           Ravenclaw.clear();
                        },
                      ),
                    ),
                ],
              ),

              Expanded(
                child: Image.asset(
                  'assets/images/hgschool.png',
                  color: Colors.yellowAccent,
                  scale: 4,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      'Alohomora. . .',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      onPrimary: Colors.deepPurpleAccent,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WelcomePage()));
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
