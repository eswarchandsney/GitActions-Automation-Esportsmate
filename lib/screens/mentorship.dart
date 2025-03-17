import 'package:flutter/material.dart';

class MentorshipPage extends StatefulWidget {
  const MentorshipPage({super.key});

  @override
  State<MentorshipPage> createState() => _MentorshipPageState();
}

class _MentorshipPageState extends State<MentorshipPage> {
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
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: (

                ) {
              // Handle settings
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trending Tournaments',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            buildTournamentCard(
              imagePath: 'assets/profile_picture.jpg',
              title: 'Grand Masters Cup',
              date: 'Dec 15 - 20, 2023',
            ),
            buildTournamentCard(
              imagePath: 'assets/profile_picture.jpg',
              title: 'League of Legends Pro League',
              date: 'Jan 10 - 15, 2024',
            ),
            buildTournamentCard(
              imagePath: 'assets/profile_picture.jpg',
              title: 'Call of Duty World Championship',
              date: 'Feb 5 - 10, 2024',
            ),
            const SizedBox(height: 24),
            const Text(
              'Mentorship Opportunities',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            buildMentorshipCard(
              title: 'Become a Better Strategist',
              description:
              'Join top gamers and coaches to enhance your strategic skills.',
            ),
            buildMentorshipCard(
              title: 'Master Your Gameplay',
              description:
              'Learn from the best to refine your gameplay techniques.',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTournamentCard({
    required String imagePath,
    required String title,
    required String date,
  }) {
    return Card(
      color: const Color(0xFF333333),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 25, // Adjust size if needed
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          date,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }

  Widget buildMentorshipCard({
    required String title,
    required String description,
  }) {
    return Card(
      color: const Color(0xFF333333),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  // Handle connect action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Connect'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
