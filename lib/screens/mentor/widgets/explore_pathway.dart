import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:university/screens/pathway/pathway_screen.dart';

class ExplorePathWay extends StatelessWidget {
  const ExplorePathWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      //height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: 25,
                width: MediaQuery.of(context).size.width * 0.70,
                child: const Text(
                  "Explore PathWays",
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
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PathwayScreen()));
            },
            child: Container(
              width: 300,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
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
                        Text('Explore Pathway',
                            style: kTitleText.copyWith(color: kPrimaryColor)),
                        const SizedBox(
                          height: 110.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
