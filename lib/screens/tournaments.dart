import 'package:flutter/material.dart';

class TournamentsPage extends StatefulWidget {
  const TournamentsPage({super.key});

  @override
  State<TournamentsPage> createState() => _TournamentsPageState();
}

class _TournamentsPageState extends State<TournamentsPage> {
  //int _selectedIndex = 2;  // Set the default index to 2 (Tournaments)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
/*            const Text(
              "Welcome to EsportsMate",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Your ultimate companion to explore and connect in the world of esports. Dive into tournaments, build your profile, and find mentorship opportunities.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),*/
            const SizedBox(height: 24),
            const Text(
              "Trending Tournaments",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            /*tournamentCard(
              title: "Pro League Showdown",
              subtitle: "Witness the best teams compete for the title.",
              imageUrl: "assets/profile_picture.jpg",
            ),*/
            tournamentCard(
              title: "Champions Cup 2024",
              subtitle: "The battle for glory begins. Join now!",
              imageUrl: "assets/profile_picture.jpg",
            ),
            tournamentCard(
              title: "Champions Cup 2025",
              subtitle: "India won the match",
              imageUrl: "assets/profile_picture.jpg",
            ),
            tournamentCard(
              title: "Champions Cup 2020",
              subtitle: "The battle for glory begins. Join now!",
              imageUrl: "assets/profile_picture.jpg",
            ),
            tournamentCard(
              title: "Pro League Showdown .....Hiiii",
              subtitle: "Witness the best teams compete for the title.",
              imageUrl: "assets/profile_picture.jpg",
            ),

            const SizedBox(height: 24),
            const Text(
              "Mentorship Opportunities",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            mentorshipCard(
              title: "Become a Pro",
              subtitle: "Learn from top players and enhance your skills.",
              imageUrl: "assets/profile_picture.jpg",
            ),
            mentorshipCard(
              title: "Strategic Insights",
              subtitle: "Unlock winning strategies with expert guidance.",
              imageUrl: "assets/profile_picture.jpg",
            ),
            /*mentorshipCard(
              title: "Become a Pro",
              subtitle: "Learn from top players and enhance your skills.Unlock winning strategies with expert guidance.",
              imageUrl: "assets/profile_picture.jpg",
            ),*/
            mentorshipCard(
              title: "Strategic Insights",
              subtitle: "Unlock winning strategies with expert guidance.",
              imageUrl: "assets/profile_picture.jpg",
            ),
            mentorshipCard(
              title: "Become a Pro",
              subtitle: "Learn .",
              imageUrl: "assets/profile_picture.jpg",
            ),
            mentorshipCard(
              title: "Become a Pro",
              subtitle: "Learn.",
              imageUrl: "assets/profile_picture.jpg",
            ),
          ],
        ),
      ),

    );
  }

  Widget tournamentCard({required String title, required String subtitle, required String imageUrl}) {
    return Card(
      color: Colors.grey[900],
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }

  Widget mentorshipCard({required String title, required String subtitle, required String imageUrl}) {
    return Card(
      color: Colors.grey[900],
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}