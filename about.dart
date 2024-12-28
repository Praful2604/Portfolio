import 'package:flutter/material.dart';
import 'package:portfolio_1/contactus.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Introduction Section
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/praful.jpg'),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi, I'm Praful Kadam",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Flutter Developer & UI/UX Developer | BE Computer Engineering",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "About Me",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '''I am a passionate Flutter Developer and a third-year Computer Engineering student, currently pursuing my Bachelor of Engineering (BE). I thrive on building sleek, functional, and cross-platform applications that deliver seamless user experiences. With a strong foundation in programming and an eye for detail, I am committed to delivering high-quality, innovative solutions that make a meaningful impact.

Over the past few years, I have honed my skills in Flutter, Dart, and related frameworks, enabling me to create applications that are not only visually appealing but also efficient and robust. From mobile apps to UI/UX design, I enjoy transforming ideas into reality through code and creativity. I take pride in my ability to understand user needs and translate them into practical, effective solutions.''',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "My Journey & Passion",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '''In addition to my technical expertise, I am deeply passionate about problem-solving and continuous learning. Whether it’s mastering a new technology, improving my existing skills, or diving into the latest trends in app development, I am always eager to grow and adapt. My goal is to stay at the forefront of technological advancements and use my knowledge to make life easier for others.

Beyond academics and development, I believe in collaboration and the power of teamwork to drive success. I actively participate in hackathons, group projects, and community events, as they give me opportunities to network, learn from peers, and work in dynamic environments. These experiences have helped me enhance not only my technical skills but also my soft skills like communication, leadership, and adaptability.''',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Future Vision",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '''When I’m not coding, you can find me exploring design trends, engaging with the tech community, or brainstorming new ideas for projects. I also enjoy diving into open-source contributions as a way to give back to the developer community and expand my learning.

Looking ahead, I aspire to work on challenging and innovative projects that push the boundaries of technology. My vision is to create solutions that are not only impactful but also leave a lasting impression on users. If you're someone who values creativity, dedication, and innovation, let’s collaborate and build something extraordinary together.''',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 30),
              // Contact Section with Call to Action
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Contactus()),
                      );
                    },
                    child: const Text("Contact Me"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
