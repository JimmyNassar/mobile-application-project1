import 'package:flutter/material.dart';
import 'Car.dart';
import 'page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late String city1;
  late String city2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    city1 = cities[0];
    city2 = cities[1];
  }
  @override
  Widget build(BuildContext context) {
    Car car = ModalRoute.of(context)!.settings.arguments as Car;


    // void updateCity1(text){
    // }

    double getKM(String city1, String city2) {
      if (city1 == "Amioun") {
        switch (city2) {
          case "Batroun":
            return 21.1;
          case "Beirut":
            return 74;
          case "Tripoli":
            return 18.3;
          case "Zgharta":
            return 19.5;
          default:
            return 3;
        }
      } else if (city1 == "Beirut") {
        switch (city2) {
          case "Batroun":
            return 54.2;
          case "Amioun":
            return 74;
          case "Tripoli":
            return 81.1;
          case "Zgharta":
            return 94;
          default:
            return 10;
        }
      } else if (city1 == "Batroun") {
        switch (city2) {
          case "Beirut":
            return 54.2;
          case "Amioun":
            return 21.1;
          case "Tripoli":
            return 28.9;
          case "Zgharta":
            return 36.1;
          default:
            return 5;
        }
      } else if (city1 == "Tripoli") {
        switch (city2) {
          case "Batroun":
            return 54.2;
          case "Amioun":
            return 74;
          case "Beirut":
            return 81.1;
          case "Zgharta":
            return 9.3;
          default:
            return 4;
        }
      } else if (city1 == "Zgharta") {
        switch (city2) {
          case "Batroun":
            return 36.1;
          case "Amioun":
            return 19.5;
          case "Tripoli":
            return 9.3;
          case "Beirut":
            return 94;
          default:
            return 3;
        }
      } else {
        return 5;
      }
    }

    car.km = getKM(city1, city2);

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
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Center(
                child: Column(
              children: [
                Text(
                  car.name,
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.only(right: 30, left: 30),
                    child: Image(
                      image: AssetImage(car.img),
                      height: 150,
                    )),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  car.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('coming back?:', style: TextStyle(color: Colors.white, fontSize: 20),),
                   Checkbox(value: car.back,
                       activeColor: Color(0xB69D8146),
                       side: BorderSide(color: Color(0xB69D8146), width: 3),
                       onChanged: (bck){
                     setState(() {
                       car.back = bck as bool;
                     });
                       })
                  ],
                ),



                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('From:', style: TextStyle(color: Colors.white, fontSize: 20),),
                    SizedBox(width: 5,),
                    Container(
                      color: const Color(0xB69D8146),
                      child: DropdownMenu(
                        initialSelection: cities[0],
                        menuStyle: const MenuStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xE29D8146)),
                        ),
                        width: 200,
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        dropdownMenuEntries:
                            cities.map<DropdownMenuEntry<String>>((String city) {
                          return DropdownMenuEntry(
                            value: city,
                            label: city.toString(),
                          );
                        }).toList(),
                        onSelected: (cty) {
                          setState(() {
                            city1 = cty as String;

                          });
                        },
                      ),
                    ),
                    SizedBox(width: 27,)
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('To:', style: TextStyle(fontSize: 20, color: Colors.white),),
                    SizedBox(width: 5,),
                    Container(
                      color: const Color(0xB69D8146),
                      child: DropdownMenu(
                        initialSelection: cities[1],
                        menuStyle: const MenuStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xE29D8146)),
                        ),
                        width:200,
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        dropdownMenuEntries:
                            cities.map<DropdownMenuEntry<String>>((String city) {
                          return DropdownMenuEntry(
                            value: city,
                            label: city.toString(),
                          );
                        }).toList(),
                        onSelected: (cty) {
                          setState(() {
                            city2 = cty as String;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )),
            const SizedBox(
              height: 15,
            ),
            Container(
              // color:  const Color(0x93FF1300),
              color: const Color(0xB69D8146),
              height: 50,
              width: 250,
              child: TextButton(
                child: const Text(
                  'Confirm Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Page3(),
                      settings: RouteSettings(arguments: car)));
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: const Color(0xB69D8146),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Choose Another Car',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
