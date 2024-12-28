import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  // Function to launch the URL to download the resume
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Resume",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Introduction Section
            Text(
              "Praful Kadam",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Flutter Developer | UI/UX Designer",
              style: TextStyle(fontSize: 20, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),

            // Education Section
            _buildSectionTitle("Education"),
            _buildResumeItem(
              "Bachelor of Engineering (BE), Computer Engineering",
              "Mumbai University, 2022 - Present",
            ),
            SizedBox(height: 20),

            // Skills Section
            _buildSectionTitle("Skills"),
            _buildResumeItem("Flutter Development", "Building mobile applications"),
            _buildResumeItem("UI/UX Design", "Creating user-centered designs"),
            _buildResumeItem("Dart Programming", "Efficient and robust coding"),
            _buildResumeItem("Version Control", "Git and GitHub"),
            SizedBox(height: 20),

            // Experience Section
            _buildSectionTitle("Experience"),
            _buildResumeItem(
              "Intern - Flutter Developer",
              "TechnoHacks Solutions, December 2024 - January 2025",
            ),
            _buildResumeItem(
              "Freelancer - UI/UX Designer",
              "Self-employed, 2022 - Present",
            ),
            SizedBox(height: 20),

            // Projects Section
            _buildSectionTitle("Projects"),
            _buildResumeItem(
              "Portfolio Website",
              "A personal website built with Flutter to showcase my work and projects. Link: [My Portfolio](https://www.example.com)",
            ),
            _buildResumeItem(
              "E-commerce App",
              "A mobile app that allows users to browse and purchase products online. Built with Flutter and Firebase.",
            ),
            _buildResumeItem(
              "Complaint Register",
              "A simple Complaint Register app to track daily Complaints, built with Flutter, and Firebase.",
            ),
            SizedBox(height: 20),

            // Contact Section
            _buildSectionTitle("Contact"),
            _buildResumeItem("Email", "prafulkadam226@gmail.com"),
            _buildResumeItem("LinkedIn", "linkedin.com/in/prafulkadam"),
            _buildResumeItem("GitHub", "github.com/Praful2604"),

            SizedBox(height: 20),

            // Download Resume Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Provide your resume file URL here (Google Drive, Dropbox, etc.)
                  _launchURL("https://drive.google.com/file/d/12OWvTf2sLnxWx0rAvH1VnxgUz3VVTbNk/view?usp=drive_link");
                },
                child: Text("Download Resume"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build section titles
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurpleAccent,
      ),
    );
  }

  // Helper function to build individual resume items
  Widget _buildResumeItem(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_right,
            size: 20,
            color: Colors.deepPurpleAccent,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
