import 'package:flutter/material.dart';

class Awards extends StatefulWidget {
  const Awards({super.key});

  @override
  State<Awards> createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Certificates",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Section for Course Completion Certificates
              _buildSectionHeader("Course Completion Certificates"),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 3 / 4,
                children: [
                  _buildCertificateCard(
                    context,
                    'assets/images/flutterlink.jpg',
                    "Flutter Essential Training: Build for Multiple Platforms",
                    "Completed on June 8, 2024, from LetsUpgrade.",
                  ),
                  _buildCertificateCard(
                    context,
                    'assets/images/firebase.jpg',
                    "Firebase Essential Training (LinkedIn)",
                    "Certified in full-stack web development by ABC Institute.",
                  ),
                  _buildCertificateCard(
                    context,
                    'assets/images/fluttersimpli.jpg',
                    "Introduction to Flutter Course (Simplilearn)",
                    "Certified in full-stack web development by ABC Institute.",
                  ),
                  _buildCertificateCard(
                    context,
                    'assets/images/uiuxsimplilearn.jpg',
                    "Website UI/UX Design Using ChatGPT (LinkedIn)",
                    "Certified in full-stack web development by ABC Institute.",
                  ),
                ],
              ),

            //  SizedBox(height: 40),

              // Section for Internship Completion Certificates
              _buildSectionHeader("Internship Completion Certificates"),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 3 / 4,
                children: [
                  _buildCertificateCard(
                    context,
                    'assets/images/praful.jpg',
                    "Open Source Contributor",
                    "Recognized for contributions to open-source projects.",
                  ),
                  _buildCertificateCard(
                    context,
                    'assets/images/praful.jpg',
                    "Web Development Intern",
                    "Completed an internship at XYZ Company.",
                  ),
                ],
              ),

             // SizedBox(height: 40),

              // Section for Workshop Participation Certificates
              _buildSectionHeader("Workshop Participation Certificates"),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 3 / 4,
                children: [
                  _buildCertificateCard(
                    context,
                    'assets/images/common_internship_test.jpg',
                    "AI Workshop",
                    "Participated in the AI Workshop at XYZ University.",
                  ),
                  _buildCertificateCard(
                    context,
                    'assets/images/generativeai.jpg',
                    "Build Your Own Generative AI Model",
                    "Completed a hands-on Generative AI workshop.",
                  ),
                  _buildCertificateCard(
                    context,
                    'assets/images/isrc.jpg',
                    "Design Thinking Workshop",
                    "Learned creative problem-solving techniques.",
                  ),
                  _buildCertificateCard(
                    context,
                    'assets/images/letsupgrade.jpg',
                    "Design Thinking Workshop",
                    "Learned creative problem-solving techniques.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Section Header widget
  Widget _buildSectionHeader(String sectionTitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        sectionTitle,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }

  // Certificate Card widget with full-screen functionality
  Widget _buildCertificateCard(
      BuildContext context, String imagePath, String title, String description) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FullScreenImage(imagePath: imagePath),
              ),
            );
          },
          child: SizedBox(
            height: 200,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 3),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, color: Colors.grey[700]),
        ),
      ],
    );
  }
}

// Full-Screen Image Display
class FullScreenImage extends StatelessWidget {
  final String imagePath;

  const FullScreenImage({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: imagePath,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
              height: MediaQuery.of(context).size.height * 0.8, // 80% of screen height
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
