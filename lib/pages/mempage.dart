import 'package:flutter/material.dart';
import 'package:sorting_hat/houses/grypage.dart';
import 'package:sorting_hat/houses/hufpage.dart';
import 'package:sorting_hat/houses/newmempage.dart';
import 'package:sorting_hat/houses/ravpage.dart';
import 'package:sorting_hat/houses/slypage.dart';
import 'package:sorting_hat/pages/sortingpage.dart';
import 'package:sorting_hat/pages/startpage.dart';

class MemPage extends StatefulWidget {
  const MemPage({Key? key}) : super(key: key);

  @override
  State<MemPage> createState() => _MemPageState();
}

class _MemPageState extends State<MemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/flag0.jpg"),
                fit: BoxFit.cover,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black12,
                      onPrimary: Colors.black,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GryPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo1.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => GryPage()));
                      },
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
                          builder: (context) => SlyPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo2.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SlyPage()));
                      },
                    ),
                  ),
                ],

              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black12,
                      onPrimary: Colors.black,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NewMemPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo0.png"),
                      iconSize: 180.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NewMemPage()));
                      },
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black12,
                      onPrimary: Colors.black,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HufPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo4.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HufPage()));
                      },
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
                          builder: (context) => RavPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo3.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RavPage()));
                      },
                    ),
                  ),

                ],
              ),

              SizedBox(height: 50.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Back...',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                          icon: Image.asset("assets/images/iconhome.png",fit: BoxFit.fitHeight),
                          iconSize: 80.0,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StartPage()));
                          },
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
