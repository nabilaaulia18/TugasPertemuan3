import 'package:flutter/material.dart';
import 'package:pertemuan3/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.network('https://wallpapercave.com/wp/NRmu5tJ.jpg',
                fit: BoxFit.fitHeight),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(24),
              margin: const EdgeInsets.all(18),
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Enjoy Your Holiday,\nHave Fun With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 26,
                      wordSpacing: 1.2,
                    ),
                  ),
                  const Text(
                    'Get Rid Of Stress And Burdens Of Mind By\nTalking A Vacation With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Sign Up With Email',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
