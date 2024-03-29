import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MerryChristmas());
}

class MerryChristmas extends StatelessWidget {
  const MerryChristmas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color.fromARGB(255, 52, 110, 55),
                Color.fromARGB(255, 16, 39, 17),
              ],
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: LottieBuilder.asset(
                      'assets/tree.json',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: LottieBuilder.asset(
                      'assets/text.json',
                      height: 200,
                      width: 300,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: LottieBuilder.asset(
                  'assets/snow.json',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}