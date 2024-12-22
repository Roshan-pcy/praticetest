import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:praticetest/bottomScreen/bike_screen.dart';
import 'package:praticetest/bottomScreen/car_screen.dart';
import 'package:praticetest/bottomScreen/hom_sceen.dart';
import 'package:praticetest/bottomScreen/profile.dart';
import 'package:praticetest/get/bottom_getx.dart';
import 'package:praticetest/theme/color.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMainScreen> with WidgetsBindingObserver {
  Getxbottom getxc = Get.put(Getxbottom());
  // Scrach_Get getxc2 = Get.put(Scrach_Get());

  @override
  void initState() {
    super.initState();

    // getxc2.loadAds();
  }

  @override
  void dispose() {
    // Dispose of the AppOpenAd if it's not null

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        Widget currentScreen;
        switch (getxc.currentIndex.value) {
          case 0:
            currentScreen = const CarScreen();
            break;
          case 1:
            currentScreen = const BikeScreen();
            break;
          case 2:
            currentScreen = const ProfileHome();
            break;

          default:
            currentScreen = Container(); // Handle the default case
        }
        return currentScreen;
      }),
      bottomNavigationBar: Obx(
        () => Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory, // Disable the splash effect
          ),
          child: BottomNavigationBar(
              currentIndex: getxc.currentIndex.value,
              onTap: (value) {
                getxc.currentIndex.value = value;
              },
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: const Color.fromARGB(255, 136, 136, 136),
              unselectedFontSize: 8,
              selectedFontSize: 10,
              selectedItemColor: white,
              items: const [
                BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.car),
                  label: 'Car',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.directions_bike),
                  backgroundColor: Color.fromARGB(255, 247, 211, 211),
                  label: 'Bike',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
