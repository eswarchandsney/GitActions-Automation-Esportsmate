import 'package:esportsmate/screens/profile.dart';
import 'package:esportsmate/screens/tournaments.dart';
import 'package:flutter/material.dart';

import 'connect.dart';
import 'mentorship.dart';
import 'notification.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 2;  // Set the default index to 2 (Tournaments)

  // Add a list of widgets corresponding to each page
  final List<Widget> _pages = [
    Profile(), //the actual ProfilePage widget
    ConnectPage(), //the actual ConnectPage widget
    TournamentsPage(), //actual TournamentsPage widget
    MentorshipPage(), // the actual MentorshipPage widget
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _selectedIndex,  // Display the widget corresponding to the selected index
        children: _pages,  // List of all pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.connect_without_contact_sharp), label: "Connect"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports), label: "Tournaments"),
          BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined), label: "Mentorship"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}


