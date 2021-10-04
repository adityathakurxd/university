import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:university/constants/constants.dart';
import 'package:university/models/user_model.dart';
import 'package:university/screens/home/home_screen.dart';
import 'package:university/screens/mentor/mentor_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const MentorScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi ${userData.name} 👋',
                      style: kLightTitleText,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: CachedNetworkImage(
                  imageUrl: userData.imgurl.isEmpty?"https://static.thenounproject.com/png/4035889-200.png": userData.imgurl,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 48.0,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.scaleDown),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.account_circle),
                ),
                // child: CircleAvatar(
                //   backgroundColor: Colors.white,

                //   backgroundImage: NetworkImage(userData.imgurl.isEmpty?"https://static.thenounproject.com/png/4035889-200.png": userData.imgurl),
                // ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Mentors',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        backgroundColor: kPrimaryColor,
        selectedIconTheme: const IconThemeData(size: 28.0),
        selectedItemColor: kAccentColor,
        selectedLabelStyle:
            kSubTitleText.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
        unselectedItemColor: kGrey,
        showUnselectedLabels: false,
      ),
    );
  }
}
