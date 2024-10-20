// import 'package:flutter/material.dart';

// class RowWidget extends StatelessWidget {
//   const RowWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Three Network Images'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Image.network(
//               'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
//               width: 100,
//               height: 100,
//             ),
//             Image.network(
//               'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
//               width: 100,
//               height: 100,
//             ),
//             Image.network(
//               'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
//               width: 100,
//               height: 100,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ROW WIDGET"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center( // Center the Row widget
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              // Second Container (duplicate)
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
              // Third Container (duplicate)
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
      ),
    );
  }
}
