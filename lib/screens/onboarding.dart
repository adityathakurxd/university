import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:university/constants/strings.dart';
import 'package:university/screens/home/home_screen.dart';

const List<String> images = [
  "assets/images/image1.jfif",
  "assets/images/image2.jpg",
  "assets/images/image3.jpg"
];
const List<String> texts = [
  "Register inside the app",
  "Refer your friends",
  "You can edit profile whenever required!"
];

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height*0.07,
          ),
          Center(
            child: Container(
              height: height*0.5,
              width: width*0.85,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: height*0.4,
                        width: width*0.85,
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          texts[index],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  );
                },
                indicatorLayout: PageIndicatorLayout.SCALE,
                autoplay: true,
                itemCount: images.length,
                pagination: SwiperPagination(
                  builder: new DotSwiperPaginationBuilder(
                      color: Colors.grey, activeColor: Color(0xff38547C),size: 15, ),
                ),
                // control: SwiperControl(
                //   color: Colors.white ,
                // ),
                viewportFraction: 1,
              ),
            ),
          ),
          SizedBox(
            height: height*0.06,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }));
              },
              child: Container(
                width: width*0.8,
                height: 60,
                decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 30,
                          width: 30,
                          child: Image.asset('assets/images/google.png',
                          fit: BoxFit.fill,))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }));
              },
              child: Container(
                width: width*0.8,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in with Mail',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/images/email.png',
                            fit: BoxFit.fill,))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
