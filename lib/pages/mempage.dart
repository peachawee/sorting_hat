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
                      foregroundColor: Colors.black, backgroundColor: Colors.black12,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const GryPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo1.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const GryPage()));
                      },
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.black12,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SlyPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo2.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SlyPage()));
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
                      foregroundColor: Colors.black, backgroundColor: Colors.black12,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NewMemPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo0.png"),
                      iconSize: 180.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const NewMemPage()));
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
                      foregroundColor: Colors.black, backgroundColor: Colors.black12,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HufPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo4.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HufPage()));
                      },
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.black12,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RavPage()));
                    },
                    child: IconButton(
                      icon: Image.asset("assets/images/logo3.png"),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RavPage()));
                      },
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 50.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.black12,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SortPage()));
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                  ),
                  const Expanded(
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
                          foregroundColor: Colors.orange[600], backgroundColor: Colors.black12,
                          shape: const CircleBorder(),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const StartPage()));
                        },
                        child: IconButton(
                          icon: Image.asset("assets/images/iconhome.png",fit: BoxFit.fitHeight),
                          iconSize: 80.0,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const StartPage()));
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
