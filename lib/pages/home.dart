import 'package:flutter/material.dart';
import 'Loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Inter',
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Create and manage your bills effortlessly',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Inter',
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: const SizedBox(height: 30),
          ),
          Image.asset(
            'assets/images/imag1forbillapp.jpg',
            width: 180,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Loginpage()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 12),
              backgroundColor: const Color.fromARGB(255, 190, 189, 189),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            child: const Text(
              'CREATE',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'TRIPFORGE',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Inter',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      // centerTitle: true,
      // leading: GestureDetector(
      //   onTap: () {},
      //   child: Container(
      //     margin: const EdgeInsets.all(10),
      //     alignment: Alignment.center,
      //     decoration: BoxDecoration(
      //       color: const Color.fromARGB(255, 247, 238, 238),
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
      //   ),
      // ),
      // actions: [
      // GestureDetector(
      //   onTap: () {},
      //   child: Container(
      //     margin: const EdgeInsets.all(10),
      //     alignment: Alignment.center,
      //     width: 36,
      //     height: 36,
      //     decoration: BoxDecoration(
      //       color: const Color.fromARGB(255, 247, 238, 238),
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     child: SvgPicture.asset('assets/icons/dots.svg'),
      //   ),
      // ),
      // ],
    );
  }
}
