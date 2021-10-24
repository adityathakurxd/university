import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:university/services/embed_service.dart';
import 'package:url_launcher/url_launcher.dart';

class PathwayScreen extends StatefulWidget {
  const PathwayScreen({Key? key}) : super(key: key);

  @override
  State<PathwayScreen> createState() => _PathwayScreenState();
}

class _PathwayScreenState extends State<PathwayScreen> {
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
      body: FutureBuilder(
        future: EmbedService().getMetaData(
            'https://medium.com/swlh/my-top-4-most-read-medium-essays-of-the-year-557dae4055a3'),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data as Map<String, String?>;
          return ListView.builder(
            itemCount: 10,
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            itemBuilder: (context, index) {
              return Row(children: [
                Column(
                  children: [
                    Container(
                      //VERTICAL LINE
                      width: 2,
                      height: screenHeight * 0.30,
                      color: index == 0 ? kPrimaryColor : kAccentColor,
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
                  child: GestureDetector(
                    onTap: () {
                      launch(data['url'].toString());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3)),
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            data['title'].toString(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                data['image'].toString(),
                                width: 300,
                                height: 180,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]);
            },
          );
        },
      ),
    );
  }
}
