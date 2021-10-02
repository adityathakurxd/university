import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MentorWidgetExtended extends StatelessWidget {
  final imageUrl =
      "https://www.teahub.io/photos/full/37-375663_hatake-kakashi-smiling-mask-naruto-kakashi-hatake-wallpaper.jpg";
  const MentorWidgetExtended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width - 20,
      child: Card(
        shape: const StadiumBorder(),
        elevation: 2,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mentor Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "Flutter Developer",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/github_icon.png',
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/linkedin_icon.png'),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/instagram_icon.png'),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
