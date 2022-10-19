import 'package:flutter/material.dart';
import 'package:pertemuan3/splash_screen.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Colors.blueAccent.shade400),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(240, 255, 255, 255),
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Your Location',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Transform.rotate(
                              angle: math.pi / 2,
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Singapore',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: Image.network(
                        'https://res.cloudinary.com/dk0z4ums3/image/upload/v1639483169/attached_image/seluk-beluk-kepribadian-highly-sensitive-person-0-alodokter.jpg',
                      ).image,
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Nearby Destination',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                margin: const EdgeInsets.all(0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: 210,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAQKHvU.img?w=750&h=500&m=4&q=79',
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Colors.red.withOpacity(0.8),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(100),
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  'Merlion Park',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.location_pin,
                                      size: 16,
                                    ),
                                    Text(
                                      '1 Fullerton Rd,...',
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.money,
                                      size: 16,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '\$500',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                margin: const EdgeInsets.all(0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: 210,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://www.mainmain.id/uploads/post/2022/06/29/Universal%20Studios.jpg',
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(0.8),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(100),
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  'Universal Studios...',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.location_pin,
                                      size: 16,
                                    ),
                                    Text(
                                      '8 Sentosa Gatewa...',
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.money,
                                      size: 16,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '\$350',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.38,
                  vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: double.infinity,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
              ),
            ),
            const Text(
              'Category',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  category.length,
                  (index) => category[index],
                ),
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  size: 24,
                  color: Colors.black87,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(250),
                  borderSide: BorderSide.none,
                ),
                hintText: 'SearchPlace',
                fillColor: Colors.black12,
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.explore,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final category = <Widget>[
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: const Icon(
          Icons.restaurant,
          color: Colors.white,
          size: 16,
        ),
      ),
      const SizedBox(height: 8),
      const Text(
        'Restaurant',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ],
  ),
  const SizedBox(width: 28),
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.yellow.shade800,
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: const Icon(
          Icons.hotel,
          color: Colors.white,
          size: 16,
        ),
      ),
      const SizedBox(height: 8),
      const Text(
        'Hotel',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ],
  ),
  const SizedBox(width: 28),
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red.shade400,
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: const Icon(
          Icons.local_gas_station,
          color: Colors.white,
          size: 16,
        ),
      ),
      const SizedBox(height: 8),
      const Text(
        'Gas',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ],
  ),
  const SizedBox(width: 28),
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.indigo.shade400,
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: const Icon(
          Icons.coffee,
          color: Colors.white,
          size: 16,
        ),
      ),
      const SizedBox(height: 8),
      const Text(
        'Coffee',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ],
  ),
  const SizedBox(width: 28),
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: const Icon(
          Icons.local_bar,
          color: Colors.white,
          size: 16,
        ),
      ),
      const SizedBox(height: 8),
      const Text(
        'Bar',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ],
  ),
];
