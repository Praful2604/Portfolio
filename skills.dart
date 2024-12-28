import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding around the content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title

              const SizedBox(height: 20),

              // Section for Developer Skills
              _buildSkillSection(
                "Developer Skills",
                const [
                  "Android App Developer",
                  "iOS Developer",
                  "UI/UX Developer",
                  "Web Developer",
                  "Firebase",
                ],
              ),

              Divider(height: 40, thickness: 2, color: Colors.grey),

              // Section for Languages Known
              _buildSkillSection(
                "Languages Known",
                const [
                  "Flutter",
                  "Dart",
                  "HTML",
                  "CSS",
                ],
              ),

              Divider(height: 40, thickness: 2, color: Colors.grey),

              // Section for Graphic Designing Tools
              _buildSkillSection(
                "Graphic Designing Tools",
                const [
                  "Figma",
                  "Canva",
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build skill section
  Widget _buildSkillSection(String sectionTitle, List<String> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Text(
          sectionTitle,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 15),

        // Skill Items
        Wrap(
          spacing: 15,
          runSpacing: 10,
          children: skills.map((skill) {
            return Chip(
              label: Text(
                skill,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.red,
            );
          }).toList(),
        ),
      ],
    );
  }
}
