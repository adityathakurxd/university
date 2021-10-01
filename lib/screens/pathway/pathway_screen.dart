import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class PathwayScreen extends StatelessWidget {
  const PathwayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: screenHeight * 0.12,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Learn Topic", style: kPageTitleText),
                Text("by Mentor Name", style: kPageSubTitleText)
              ],
            ),
          )),
      body: ListView.builder(
          itemCount: 10,
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          itemBuilder: (context, index) {
            return Row(
              children: [
                Column(
                  children: [
                    Container(
                      //VERTICAL LINE
                      width: 2,
                      height: screenHeight * 0.055,
                      color: index==0?kPrimaryColor:kAccentColor,
                    ),
                    Container(
                        //CIRCULAR ICON
                        padding: const EdgeInsets.all(5.0),
                        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: kAccentColor),
                        child: Icon(Icons.lightbulb, color: kPrimaryColor)),
                    Container(
                      //VERTICAL LINE
                      width: 2,
                      height: screenHeight * 0.055,
                      color: kAccentColor,
                    ),
                  ],
                ),
                Expanded(
                  // THE CLICKABLE CARD
                    child: Card(
                      elevation: 5.0,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onTap: () {_launchURL('https://github.com/adityathakurxd');},
                        tileColor: kGrey,
                        title: Text("Title",style: TextStyle(color: kPrimaryColor),),
                        subtitle: Text("Description of this particular tile",style: TextStyle(color: kPrimaryColor)),
                        contentPadding: const EdgeInsets.all(10.0),
                      ),
                    )
                )
              ]);
          }),
    );
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}

