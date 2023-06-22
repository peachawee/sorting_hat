
import 'package:flutter/material.dart';
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
              const SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.orange[600], backgroundColor: Colors.black12,
                        shape: const CircleBorder(),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MemPage()));
                      },
                      child: IconButton(
                        icon: Image.asset("assets/images/user.png",fit: BoxFit.fitHeight),
                        iconSize: 40.0,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MemPage()));
                        },
                      ),
                    ),

                ],
              ),
              const SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                  const Text(
                      'Alohomora. . .',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurpleAccent, backgroundColor: Colors.yellow,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const WelcomePage()));
                    },
                    child: const Icon(
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
