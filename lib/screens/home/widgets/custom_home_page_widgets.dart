import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';

class CustomContainers extends StatelessWidget {
  const CustomContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:kGrey.withOpacity(0.25),
        border: Border.all(
          width: 2,
          color: kAccentColor.withOpacity(0.1)
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //for RoadMap name and author name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Learn Flutter', style: kPageSubTitleText),
                    const SizedBox(height: 5,),
                    Text('by Aditya Thakur', style: kSubTitleMentorText),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            //this row contain number of resources and resources list
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('13 Resources',),
                  Text('Resources List',),
                ]
            ),
          ],
        ),
      ),
    );
  }
}