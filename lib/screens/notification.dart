import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Clear all notifications logic
            },
            child: const Text(
              "Clear All",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionTitle("Alerts"),
            alertCard(
              title: "New connection request from Gamer123",
              actions: [
                actionButton("Accept", Colors.white, Colors.black),
                actionButton("Decline", Colors.red, Colors.white),
              ],
            ),
            alertCard(
              title: "Tournament Summer Smash starts in 2 days!",
              actions: [
                actionButton("View", Colors.white, Colors.black),
                actionButton("Remind Me", Colors.red, Colors.white),
              ],
            ),
            alertCard(
              title: "New message from mentor ProGamerCoach",
              actions: [
                actionButton("Reply", Colors.white, Colors.black),
                actionButton("View", Colors.red, Colors.white),
              ],
            ),
            const SizedBox(height: 24),
            sectionTitle("Activity Log"),
            activityLogCard(
              text: "Interacted with Team Alpha in the Weekly Challenge",
              time: "Yesterday 5:30 PM",
            ),
            activityLogCard(
              text: "Shared a tip with GamerGal on Strategy Forum",
              time: "3 days ago 3:15 PM",
            ),
            activityLogCard(
              text: "Liked a post by EsportsFanatic in Community Feed",
              time: "3 days ago 1:00 PM",
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

  Widget alertCard({required String title, required List<Widget> actions}) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: actions,
            ),
          ],
        ),
      ),
    );
  }

  Widget actionButton(String label, Color buttonColor, Color textColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: const Size(80, 36),
        ),
        onPressed: () {
          // Handle button actions
        },
        child: Text(
          label,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }

  Widget activityLogCard({required String text, required String time}) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              time,
              style: const TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
