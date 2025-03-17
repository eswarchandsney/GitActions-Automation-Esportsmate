import 'package:flutter/material.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({super.key});

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}
class _ConnectPageState extends State<ConnectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'EsportsMate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: (

                ) {
              // Handle notifications
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {
              // Handle settings
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF333333),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintText: 'Search gamers, organizations, teams...',
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Filters
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.start,
                children: [
                  buildFilterChip('Game Type'),
                  buildFilterChip('Location'),
                  buildFilterChip('Expertise'),
                ],
              ),
              const SizedBox(height: 24),
              // Suggested Connections Section
              const Text(
                'Suggested Connections',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              // Connection Cards
              Column(
                children: [
                  buildConnectionCard(
                    imagePath: 'assets/profile_picture.jpg',
                    title: 'Alex "Ace" Johnson',
                    subtitle: 'Professional FPS Gamer',
                  ),
                  buildConnectionCard(
                    imagePath: 'assets/profile_picture.jpg',
                    title: 'ProGamers League',
                    subtitle: 'Leading Esports Organization',
                  ),
                  buildConnectionCard(
                    imagePath: 'assets/profile_picture.jpg',
                    title: 'GamerTech',
                    subtitle: 'Innovative Gaming Gear',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Filter Chip Widget
  Widget buildFilterChip(String label) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
    );
  }

  // Connection Card Widget with Circular Avatar
  Widget buildConnectionCard({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Card(
      color: const Color(0xFF333333),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 25,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.white70),
        ),
        onTap: () {
          // Handle card tap if needed
        },
      ),
    );
  }
}
