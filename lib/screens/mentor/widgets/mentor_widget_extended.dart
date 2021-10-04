import 'package:cached_network_image/cached_network_image.dart';
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CachedNetworkImage(
                        imageUrl: imageUrl,
                            //"https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/198992295/original/72778b2af854b02465f98ca7d9e6c4c1c34f701b/draw-you-an-custom-anime-profile-picture-or-character.png",
                        imageBuilder: (context, imageProvider) => Container(
                          width: 120.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context, url) => const SizedBox(),
                        errorWidget: (context, url, error) => Container(),
                      ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 120,
            //     width: 120,
            //     decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         image: DecorationImage(
            //             image: NetworkImage(imageUrl), fit: BoxFit.cover)),
            //   ),
            // ),
            
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
    );
  }
}
