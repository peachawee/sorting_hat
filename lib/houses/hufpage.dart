import 'package:flutter/material.dart';
import 'package:sorting_hat/pages/mempage.dart';
import 'package:sorting_hat/pages/sortingpage.dart';

class HufPage extends StatefulWidget {
  const HufPage({Key? key}) : super(key: key);

  @override
  State<HufPage> createState() => _HufPageState();
}

class _HufPageState extends State<HufPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/flag4.jpg"),
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
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 30.0),
                    Image.asset(
                      'assets/images/logo4.png',
                      height: 80.0,
                    ),
                    const SizedBox(width: 25.0),
                    Expanded(
                      child: Text(
                        "Hufflepuff",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[600],
                        ),
                      ),
                    ),
                    Text(
                      "${Hufflepuff.length}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.yellow[600],
                      ),
                    ),
                    Text("${Hufflepuff.length}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
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
                    itemCount: Hufflepuff.length,
                    itemBuilder: (context, i) {
                      var value = Hufflepuff[i].done1;
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
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${Hufflepuff[i].name1}',
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${Hufflepuff[i].house1}',
                                        style: const TextStyle(
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

              const SizedBox(height: 5.0,),
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
                          builder: (context) => const MemPage()));
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                  ),
                  const Text(
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
