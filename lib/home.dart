import 'package:flutter/material.dart';
import 'page2.dart';
import 'Car.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Super Uber',
              style: TextStyle(fontSize: 15, color: Colors.white)),
        ),
        backgroundColor: const Color(0xDDB99445),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg3.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                'Choose A SuperCar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CarButton(
                      pic: 'images/mustang.jpg',
                      name: 'Mustang Dark Horse',
                      car: cars[0]),
                  const SizedBox(
                    width: 10,
                  ),
                  CarButton(
                      pic: 'images/huracan.jpg',
                      name: 'Lamborghini Huracan',
                      car: cars[1]),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CarButton(
                      pic: 'images/bugatti.jpg',
                      name: 'Bugatti Veyron',
                      car: cars[2]),
                  const SizedBox(
                    width: 10,
                  ),
                  CarButton(
                      pic: 'images/porsche911.jpg',
                      name: 'Porsche 911 Turbo S',
                      car: cars[3]),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CarButton(
                      pic: 'images/gemera.jpg',
                      name: 'Koenigsegg Gemera',
                      car: cars[4]),
                  const SizedBox(
                    width: 10,
                  ),
                  CarButton(
                      pic: 'images/mclaren.jpg',
                      name: 'McLaren GT',
                      car: cars[5]),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class CarButton extends StatelessWidget {
  final String pic;
  final String name;
  final Car car;

  const CarButton({
    super.key,
    required this.pic,
    required this.name,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color:  const Color(0x93FF1300),
        color: const Color(0xB69D8146),
        height: 150,
        width: 170,
        child: TextButton(
          child: Column(
            children: [
              Image(height: 100, width: 160, image: AssetImage(pic)),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Page2(),
                settings: RouteSettings(arguments: car)));
          },
        ),
      ),
    );
  }
}
