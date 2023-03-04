import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/dumtalkpage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/welcome.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Box Dumbledore talk
              // SizedBox(
              //   height: 300.0,
              // ),
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
                          "Albus Dumbledore: Welcome!... Welcome! to another year at Hogwarts!...And most importantly, I'm glad that the little wizard and the little witch have come to study at Hogwarts. \n\n\n",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //SizedBox(width:),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          onPrimary: Colors.black,
                          shape: CircleBorder(),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DumTalk()));
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
              SizedBox(height: 30.0,),
            ],

          ),
        ),

      ),
    );
  }
}
