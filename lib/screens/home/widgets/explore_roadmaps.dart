import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
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
              margin: EdgeInsets.all(8),
              height: 25,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.70,
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
        Container(
          height: 250,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(20.0)),
                      gradient: LinearGradient(
                        colors: [kLightRed, kAccentColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Learn Flutter',
                                  style: kTitleText.copyWith(
                                      color: kPrimaryColor)),
                              Text('by Aditya Thakur',
                                  style:
                                  kLightTitleText.copyWith(color: kBlack)),
                              SizedBox(
                                height: 130.0,
                              ),
                              Text(
                                ' 13 Resources',
                                style: kSubTitleText.copyWith(color: kBlack, fontSize: 15.0),

                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                onTap: () =>
                    launch(
                        'https://adityathakurxd.medium.com/srm-one-314f8691b18b'),
              ),
              SizedBox(width: 10.0),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(20.0)),
                      gradient: LinearGradient(
                        colors: [kLightRed, kAccentColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Learn Flutter',
                                style:
                                kTitleText.copyWith(color: kPrimaryColor)),
                            Text('by Aditya Thakur',
                                style: kLightTitleText.copyWith(color: kBlack)),
                            SizedBox(
                              height: 130.0,
                            ),
                            Text(
                              '13 Resources',
                              style: kSubTitleText.copyWith(color: kBlack),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () =>
                    launch(
                        'https://adityathakurxd.medium.com/srm-one-314f8691b18b'),
              ),
              SizedBox(width: 10.0),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(20.0)),
                      gradient: LinearGradient(
                        colors: [kLightRed, kAccentColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Learn Flutter',
                                style:
                                kTitleText.copyWith(color: kPrimaryColor)),
                            Text('by Aditya Thakur',
                                style: kLightTitleText.copyWith(color: kBlack)),
                            SizedBox(
                              height: 130.0,
                            ),
                            Text(
                              '13 Resources',
                              style: kSubTitleText.copyWith(color: kBlack),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () =>
                    launch(
                        'https://adityathakurxd.medium.com/srm-one-314f8691b18b'),
              ),
              SizedBox(width: 10.0),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(10.0)),
                      gradient: LinearGradient(
                        colors: [kLightRed, kAccentColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Learn Flutter',
                                style:
                                kTitleText.copyWith(color: kPrimaryColor)),
                            Text('by Aditya Thakur',
                                style: kLightTitleText.copyWith(color: kBlack)),
                            SizedBox(
                              height: 130.0,
                            ),
                            Text(
                              '13 Resources',
                              style: kSubTitleText.copyWith(color: kBlack),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () =>
                    launch(
                        'https://adityathakurxd.medium.com/srm-one-314f8691b18b'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
