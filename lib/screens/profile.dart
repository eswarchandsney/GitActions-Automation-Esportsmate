import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '  Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profileHeader(),
            const SizedBox(height: 24),
            sectionTitle("Skills"),
            skillsChips(),
            const SizedBox(height: 24),
            sectionTitle("Achievements"),
            achievementsCard(),
            const SizedBox(height: 24),
            sectionTitle("Gaming History"),
            gamingHistoryCard(),
            const SizedBox(height: 24),
            sectionTitle("Link Social Media"),
            socialMediaLinks(),
          ],
        ),
      ),
    );
  }

  Widget profileHeader() {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/profile_picture.jpg"),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    // Handle upload functionality
                  },
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.upload, size: 16, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Username",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "Bio",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  Text(
                    "Gaming Interests",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget skillsChips() {
    final skills = ["FPS", "Strategy", "MOBA"];
    return Wrap(
      spacing: 8,
      children: skills
          .map((skill) => Chip(
        label: Text(skill),
        backgroundColor: Colors.red,
        labelStyle: const TextStyle(color: Colors.white),
      ))
          .toList(),
    );
  }

  Widget achievementsCard() {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          "• Winner of Summer Esports Cup 2023\n"
              "• Top 10 in Global Gaming Championship\n"
              "• Featured Player in Gamer's Digest Magazine",
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ),
    );
  }

  Widget gamingHistoryCard() {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          "• 5 years of competitive gaming experience\n"
              "• Played on top esports teams: Team Falcon, Elite Squad\n"
              "• Specializes in FPS and strategy games",
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ),
    );
  }

  Widget socialMediaLinks() {
    final socialMediaIcons = [
      Icons.public,
      Icons.youtube_searched_for_rounded,
      Icons.facebook,
      Icons.mail
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: socialMediaIcons
          .map((icon) => IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: () {
          // Handle social media links
        },
      ))
          .toList(),
    );
  }
}
