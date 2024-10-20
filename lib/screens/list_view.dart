import 'package:flutter/material.dart';

class MyListView extends StatelessWidget { // Renamed the class
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST VIEW"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // First Container
            Container(
              width: 100.0,
              height: 200.0,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',  
                  ),
                  fit: BoxFit.cover, // Ensures the image covers the container
                ),
              ),
            ),
            // Second Container (duplicate the first one for demonstration)
            Container(
              width: 100.0,
              height: 200.0,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Third Container (another duplicate)
            Container(
              width: 100.0,
              height: 200.0,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
