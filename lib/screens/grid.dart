import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GRID WIDGET"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 10.0, // Horizontal spacing between grid items
            mainAxisSpacing: 10.0, // Vertical spacing between grid items
            childAspectRatio: 0.6, // Height/Width ratio for grid items
          ),
          itemCount: 6, // Number of items in the grid
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: GridWidget(),
    debugShowCheckedModeBanner: false,
  ));
}
