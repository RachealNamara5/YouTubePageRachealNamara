// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 116, 165, 191),
//       appBar: AppBar(
//         title: const Text(
//           "Flutter Basics",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Network image with border radius
//             ClipRRect(
//               borderRadius: BorderRadius.circular(100.0), // Circular border
//               // child: Image.asset(
//               //   'assets/images/hope_this.JPG',
//               //   width: 150,
//               //   height: 150,
//               //   fit: BoxFit.cover,
//               // ),

//               child: Image.network(
//                 'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
//                 width: 150,
//                 height: 150,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 20), // Space between image and text
//             // Text for your name
//             const Text(
//               "Namara Racheal", // Your name
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 10), // Space between name and course
//             // Text for your course
//             const Text(
//               "Diploma in Data Science and Entrepreneurship",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.white,
//               ),
//               textAlign: TextAlign.center, // Center align the course text
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), // Custom AppBar from widgets
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories Section
            Container(
              padding: EdgeInsets.all(8.0),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryChip('All'),
                  CategoryChip('Music'),
                  CategoryChip('Gaming'),
                  CategoryChip('News'),
                ],
              ),
            ),
            // Videos Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 16 / 9,
                ),
                itemBuilder: (context, index) {
                  return VideoCard();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

// Category Chip Widget
class CategoryChip extends StatelessWidget {
  final String category;
  CategoryChip(this.category);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(category),
        backgroundColor: Colors.white,
      ),
    );
  }
}
