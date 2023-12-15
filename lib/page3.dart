import 'package:flutter/material.dart';
import 'Car.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    Car car = ModalRoute.of(context)!.settings.arguments as Car;

    return Scaffold(
        appBar: AppBar(
          title: Container(
            margin: const EdgeInsets.only(left: 80),
            child: const Text('Super Uber',
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ),
          backgroundColor: const Color(0xDDB99445),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg3.jpg"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 170,
                ),
                const Text(
                  "Thank you for ordering the",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  car.name,
                  style: const TextStyle(color: Colors.white, fontSize: 35),
                ),
                const SizedBox(
                  height: 7,
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  'Your driver is on the way.',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // color:  const Color(0x93FF1300),
                  color: const Color(0xB69D8146),
                  height: 50,
                  width: 150,
                  child: TextButton(
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Go Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
