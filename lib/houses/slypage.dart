import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/mempage.dart';
import 'package:sorting_hat/pages/sortingpage.dart';

class SlyPage extends StatefulWidget {
  const SlyPage({Key? key}) : super(key: key);

  @override
  State<SlyPage> createState() => _SlyPageState();
}

class _SlyPageState extends State<SlyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/flag2.jpg"),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.black,
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
                    SizedBox(width: 30.0),
                    Image.asset(
                      'assets/images/logo2.png',
                      height: 80.0,
                    ),
                    SizedBox(width: 25.0),
                    Expanded(
                      child: Text(
                        "Slytherin",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                    ),
                    Text(
                      "" + Slytherin.length.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.green[700],
                      ),
                    ),
                    Text(""+ Slytherin.length.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                    IconButton(
                      icon: Image.asset("assets/images/user.png"),
                      iconSize: 50.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: Slytherin.length,
                    itemBuilder: (context, i) {
                      var value = Slytherin[i].done1;
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/wand.png",
                                        width: 60.0,
                                        height: 60.0,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${Slytherin[i].name1}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${Slytherin[i].house1}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),

              SizedBox(height: 5.0,),
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
                          builder: (context) => MemPage()));
                    },
                    child: Icon(
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    'Back...',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
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
