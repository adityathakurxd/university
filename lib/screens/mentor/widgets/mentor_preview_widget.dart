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
    return Align(
      alignment: const Alignment(0.8, -0.7),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.5, //card height
        child: PageView.builder(
          itemCount: 4,
          controller: PageController(viewportFraction: 0.666),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 0.9 : 0.7,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green[500],
                        radius: 50,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/198992295/original/72778b2af854b02465f98ca7d9e6c4c1c34f701b/draw-you-an-custom-anime-profile-picture-or-character.png"),
                          radius: 100,
                        ), //CircleAvatar
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Mentor Name',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                        ),
                      ), //Text
                      const SizedBox(
                        height: 30,
                      ), //SizedBox
                      Container(
                        width: 90,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.touch_app,),
                            Text('View'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
