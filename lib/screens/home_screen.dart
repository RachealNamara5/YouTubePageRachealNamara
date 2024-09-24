import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 116, 165, 191),
      appBar: AppBar(
        title: const Text(
          "Flutter Basics",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Network image with border radius
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0), // Circular border
              // child: Image.asset(
              //   'assets/images/hope_this.JPG',
              //   width: 150,
              //   height: 150,
              //   fit: BoxFit.cover,
              // ),

              child: Image.network(
                'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20), // Space between image and text
            // Text for your name
            const Text(
              "Namara Racheal", // Your name
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10), // Space between name and course
            // Text for your course
            const Text(
              "Diploma in Data Science and Entrepreneurship",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center, // Center align the course text
            ),
          ],
        ),
      ),
    );
  }
}
