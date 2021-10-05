import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';

class Mentors extends StatelessWidget {
  const Mentors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: 25,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.70,
              child: const Text(
                "Mentor of Week",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: const Text("See All"),
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15.0)),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0,),
        Container(

          height: 125,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(10.0)),
                      gradient: LinearGradient(
                        colors: [kWhite, kWhite],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://www.linkpicture.com/q/3135715.png',
                              width: 90,),
                            SizedBox(width: 10.0,),
                            Column(
                              children: const [
                                Text("Name of Mentor",
                                  style: TextStyle(fontSize: 25.0),),
                                SizedBox(height: 10.0,),
                                Text("Title Text",
                                  style: TextStyle(fontSize: 20.0),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(10.0)),
                      gradient: LinearGradient(
                        colors: [kWhite, kWhite],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://www.linkpicture.com/q/3135715.png',
                              width: 90,),
                            SizedBox(width: 10.0,),
                            Column(
                              children: const [
                                Text("Name of Mentor",
                                  style: TextStyle(fontSize: 25.0),),
                                SizedBox(height: 10.0,),
                                Text("Title Text",
                                  style: TextStyle(fontSize: 20.0),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(10.0)),
                      gradient: LinearGradient(
                        colors: [kWhite, kWhite],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://www.linkpicture.com/q/3135715.png',
                              width: 90,),
                            SizedBox(width: 10.0,),
                            Column(
                              children: const [
                                Text("Name of Mentor",
                                  style: TextStyle(fontSize: 25.0),),
                                SizedBox(height: 10.0,),
                                Text("Title Text",
                                  style: TextStyle(fontSize: 20.0),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
