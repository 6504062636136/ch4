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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),

      home: Scaffold(

        body: Container(

          color: Colors.white, // พื้นหลังสีขาว
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(

                      child: Text(
                        ' EQE Saloon',
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        ' Mercedes-Benz',
                        style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ],
                ),

                // รูปภาพที่อยู่ใน Container พร้อมกรอบ
                Container(
                  width: 500, // ปรับขนาดความกว้างของกรอบ
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
 // กรอบของ Container
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://veho.studio.crasman.cloud/pub/system/files/new-vehicles/100/1000303674/b396990e590da1_1000303674.jpg?c=1920x1080',
                      ),
                      fit: BoxFit.cover, // ปรับขนาดให้พอดีกับพื้นที่
                    ),
                  ),
                  height: 200, // ความสูงของกรอบ
                ),

                const SizedBox(height: 20),

                // กล่อง History พร้อมกรอบมน
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black, // สีของกรอบ
                      width: 1.5,         // ความหนาของกรอบ
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: const Text(
                    'History:',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),

                const SizedBox(height: 20),

                // Charging Date-Time Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.battery_saver_rounded),
                    Expanded(
                      child: Text(
                        'Charging Date-Time',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Charging Date-Time Row with EV Station icon
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.ev_station),
                    Expanded(
                      child: Text(
                        'Charging Date-Time',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}