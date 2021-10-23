import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:provider/provider.dart';
import 'package:university/constants/constants.dart';
import 'package:university/services/firebase_auth_service.dart';

const List<String> images = [
  "assets/svg/roadmap.svg",
  "assets/svg/task.svg",
  "assets/svg/discuss.svg"
];
const List<String> texts = [
  "Find resources condensed into roadmaps.",
  "View actionable items to master a skill.",
  "Ask the community or mentors any question!"
];

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final auth = Provider.of<FirebaseAuthService>(context, listen: false);
      final user = await auth.signInWithGoogle();
    } catch (e) {
      //print(e);
    }
  }

  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final auth = Provider.of<FirebaseAuthService>(context, listen: false);
      final user = await auth.signInAnonymously();
      //User data not added to Firestore in case of Anonymous sign in.
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.07,
          ),
          Center(
            child: SizedBox(
              height: height * 0.6,
              width: width * 0.85,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.4,
                        width: width * 0.85,
                        child: SvgPicture.asset(
                          images[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          texts[index],
                          textAlign: TextAlign.center,
                          style: kLightTitleText,
                        ),
                      ),
                    ],
                  );
                },
                indicatorLayout: PageIndicatorLayout.SCALE,
                autoplay: true,
                itemCount: images.length,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    color: kGrey,
                    activeColor: kAccentColor,
                    size: 15,
                  ),
                ),
                viewportFraction: 1,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          //Sign in with Google or App button
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () => _signInWithGoogle(context),
              child: Container(
                width: width * 0.8,
                height: 60,
                decoration: BoxDecoration(
                  color: kGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in with Google',
                        style: kLightTitleText.copyWith(color: kPrimaryColor),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/images/google-logo.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //Sign in with Anonymously
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () => _signInAnonymously(context),
              child: Container(
                width: width * 0.8,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: kGrey),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in Anonymously',
                        style: kLightTitleText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
