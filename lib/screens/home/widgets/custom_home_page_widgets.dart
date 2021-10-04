import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContainers extends StatelessWidget {
  const CustomContainers({Key? key}) : super(key: key);

  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          _launchURL('https://adityathakurxd.medium.com/srm-one-314f8691b18b');
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
                colors: [kLightRed, kAccentColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Learn Flutter', style: kTitleText.copyWith(color: kPrimaryColor)),
                    Text('by Aditya Thakur', style: kLightTitleText.copyWith(color: kWhite)),
                  ],
                ),
               const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '13 Resources',
                        style: kSubTitleText
                    ),
                    Text(
                      'Resources List',
                        style: kSubTitleText
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
