import 'package:flutter/material.dart';

class FlashSaleScreen extends StatelessWidget {
  const FlashSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "See all",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _buildCategoryIcon(Icons.phone_android, 'Phones'),
                      _buildCategoryIcon(Icons.videogame_asset, 'Consoles'),
                      _buildCategoryIcon(Icons.laptop, 'Laptops'),
                      _buildCategoryIcon(Icons.camera_alt, 'Cameras'),
                    ],
                  ),
                ],
              ),
            ),
            // Flash Sale Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Flash Sale",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        color: Colors.greenAccent[400],
                        child: const Text(
                          "02:59:23",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            // Flash Sale Products
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildProductCard(
                    'Apple iPhone 15 Pro 128GB Natural Titanium',
                    '£699.00',
                    '£739.00',
                    'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
                  ),
                  _buildProductCard(
                    'Samsung Galaxy Buds Pro True Wireless Black',
                    '£69.00',
                    '£86.00',
                    'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Category Icon Widget
  Widget _buildCategoryIcon(IconData iconData, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: Icon(iconData, size: 30, color: Colors.black),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }

  // Product Card Widget
  Widget _buildProductCard(
      String title, String price, String oldPrice, String imageUrl) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',
                height: 160,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.favorite_border, color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                oldPrice,
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FlashSaleScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
