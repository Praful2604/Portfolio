import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Projects"),
        backgroundColor: Colors.purpleAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Ensure safe navigation here
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Marquee for the note text
              Container(
                height: 40,
                child: Marquee(
                  text: "Note: Click on the text below to access the source code",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  blankSpace: 50,
                  velocity: 50,
                  fadingEdgeStartFraction: 0.2,
                  fadingEdgeEndFraction: 0.2,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              Divider(height: 10, color: Colors.grey),
              const SizedBox(height: 20),

              // Section for Mobile Applications
              _buildSection(
                title: "Mobile Applications",
                projects: [
                  {"title": "Invoice Management Application", "icon": Icons.phone_android},
                  {"title": "Tic-Tac-Toe", "icon": Icons.gamepad},
                  {"title": "Complaint Register Application", "icon": Icons.report},
                  {"title": "E-Commerce Application", "icon": Icons.shopping_cart},
                ],
              ),

              const SizedBox(height: 20),
              Divider(height: 10, color: Colors.grey),
              const SizedBox(height: 20),

              // Section for Websites
              _buildSection(
                title: "Websites",
                projects: [
                  {"title": "E-Commerce Website", "icon": Icons.web},
                  {"title": "Portfolio", "icon": Icons.person},
                ],
              ),

              const SizedBox(height: 20),
              Divider(height: 10, color: Colors.grey),
              const SizedBox(height: 20),

              // Section for UI/UX Design
              _buildSection(
                title: "UI/UX Design",
                projects: [
                  {"title": "Chat Application in Figma", "icon": Icons.chat_bubble},
                  {"title": "Portfolio in Figma", "icon": Icons.image},
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to create a project section with icons
  Widget _buildSection({required String title, required List<Map<String, dynamic>> projects}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: projects.map((project) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(project['icon'], color: Colors.indigo),
                title: Text(
                  project['title'],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                onTap: () {
                  // Ensuring the context is still valid before showing the SnackBar
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Source Code for ${project['title']}")),
                    );
                  }
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
