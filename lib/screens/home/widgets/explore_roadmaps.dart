import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:university/data/explore_roadmap_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ExploreRoadmaps extends StatelessWidget {
  const ExploreRoadmaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 25,
              width: MediaQuery.of(context).size.width * 0.70,
              child: const Text(
                "Explore Roadmaps",
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
        const SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: ExploreRoadMapModel.exploreList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final data = ExploreRoadMapModel.exploreList;
              return InkWell(
                child: Container(
                  width: 260,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      gradient: LinearGradient(
                        colors: [kLightRed, kAccentColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data[index].title,
                                style:
                                    kTitleText.copyWith(color: kPrimaryColor)),
                            Text(data[index].subTitle,
                                style: kLightTitleText.copyWith(color: kBlack)),
                            const SizedBox(
                              height: 130.0,
                            ),
                            Text(
                              ' ${data[index].resources} Resources',
                              style: kSubTitleText.copyWith(
                                  color: kBlack, fontSize: 15.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () => launch(
                    'https://adityathakurxd.medium.com/srm-one-314f8691b18b'),
              );
            },
          ),
        ),
      ],
    );
  }
}
