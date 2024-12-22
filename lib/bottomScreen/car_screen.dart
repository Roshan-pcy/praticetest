import 'package:flutter/material.dart';
import 'package:praticetest/widgets/homecontainer.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Pratice',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/car.png',
                  height: 200,
                )),
            Row(
              children: [
                HomeContainer(
                  buttontitle: 'Start',
                  healine: '1 to 20  pratice question',
                  voidCallbackAction: () {},
                ),
                HomeContainer(
                  buttontitle: 'Start',
                  healine: '20 to 40 pratice questions',
                  voidCallbackAction: () {},
                )
              ],
            ),
            Row(
              children: [
                HomeContainer(
                  buttontitle: 'Start',
                  healine: 'Study importent questions ',
                  voidCallbackAction: () {},
                ),
                HomeContainer(
                  buttontitle: 'Start',
                  healine: 'All basic questions',
                  voidCallbackAction: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
























// <a href="https://www.flaticon.com/free-icons/car" title="car icons">Car icons created by Freepik - Flaticon</a>

//<a href="https://www.flaticon.com/free-icons/motorcycle" title="motorcycle icons">Motorcycle icons created by Freepik - Flaticon</a>