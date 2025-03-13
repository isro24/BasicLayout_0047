import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.light(brightness: Brightness.light),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  final List<String> times = ["Now", "17.00", "20.00", "23.00"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box, color: Colors.black),
            onPressed: () {},
          ),
        ],
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            const Text(
              "Yogyakarta",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 18),
            const Text(
              "Today",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            const SizedBox(height: 20,),
            const Text(
              "28°C",
              style: TextStyle(fontSize: 105, color: Colors.blueAccent),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.grey,
              indent: 40,
              endIndent: 40
            ),
            const SizedBox(height: 20),
            const Text(
              "Sunny",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.grey),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Icon(Icons.ac_unit_rounded, color: Colors.blue,),
                Text(
                "5 km/h",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 23,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Next 7 Days",
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index){
                      return Column(
                        children: [
                          Text(times[index],
                            style: TextStyle(fontSize: 17)
                          ),
                          const Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.blue,
                          ),
                          const Text("28°C",
                            style: TextStyle(fontSize: 17,color: Colors.blue)
                          ),
                          const SizedBox(height: 15),
                          const Icon(
                            Icons.wind_power,
                            color: Colors.pinkAccent,
                          ),
                          const Text("10 km/h",
                            style: TextStyle(fontSize: 17,color: Colors.pinkAccent)
                          ),
                          const SizedBox(height: 15),
                          const Icon(
                            Icons.umbrella,
                          ),
                          const Text("0 %",
                          style: TextStyle(fontSize: 17,),)
                        ]
                      );
                    }),
                  )
                ],
              ),
            ),
            const Spacer(),
            const Text(
              "Developer by: isrousman.id"
            )
        ],),
      ),
    );

  }
}

