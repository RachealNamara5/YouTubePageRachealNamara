import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  const ColumnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.orange.shade50, // Background color similar to the image
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50), // Top spacing

              // Image widget
              Image.asset(
                'assets/images/onbordingnew.JPG', // Ensure this path is correct
                height: 300, // Adjust the height to fit your design
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 30),

              // Main Title
              const Text(
                'Order in the mobile app',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // Subtitle text
              const Text(
                'Choose clothes online from home and place an order. Get bonuses!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 40),

              // Button at the bottom
              ElevatedButton(
                onPressed: () {
                  // Handle button action here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.black, // Button color
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20), // Bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}
