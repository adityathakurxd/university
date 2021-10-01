import 'package:flutter/material.dart';

class MentorWidget extends StatefulWidget {
  const MentorWidget({Key? key}) : super(key: key);

  @override
  _MentorWidgetState createState() => _MentorWidgetState();
}

class _MentorWidgetState extends State<MentorWidget> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff787A91),
      appBar: AppBar(),
      body: Align(
        alignment: const Alignment(0.8, -0.7),
        child: SizedBox(
          height: 200, // card height

          child: PageView.builder(
            itemCount: 4,
            controller: PageController(viewportFraction: 0.8),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 0.9:0.9,
                child: Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Row(children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[500],
                            radius:50,

                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/198992295/original/72778b2af854b02465f98ca7d9e6c4c1c34f701b/draw-you-an-custom-anime-profile-picture-or-character.png"),                        radius: 100,
                            ), //CircleAvatar
                          ),
                        ],),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Mentor Name',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.green[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          //Text

                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green[900],
                            ),
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          SizedBox(
                            width: 90,
                            child: RaisedButton(
                              onPressed: () => null,
                              color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('View'),
                                  ],
                                ), //Row
                              ), //Padding
                            ), //RaisedButton
                          ) //SizedBox
                        ],
                        ),
                      ],
                    ),

                  ),
                ),
              );

            },
          ),
        ),
      ),
    );
  }
}




