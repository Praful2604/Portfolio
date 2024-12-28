import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_1/awards.dart';
import 'package:portfolio_1/contactus.dart';
import 'package:portfolio_1/projects.dart';
import 'package:portfolio_1/resume.dart';
import 'package:portfolio_1/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _appBarOpacity;
  late Animation<Color?> _appBarColor;
  late Animation<double> _textOpacity; // Animation for the text
  late Animation<double> _buttonSize; // Animation for the button size

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Fade in/out effect for the AppBar
    _appBarOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Animate the background color of the AppBar
    _appBarColor = ColorTween(begin: Colors.cyan, end: Colors.purple).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Animation for the text
    _textOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Animation for the button size
    _buttonSize = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward(); // Start the animation when the screen is loaded
  }

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
      backgroundColor: Colors.tealAccent,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, _appBarColor.value ?? Colors.cyan],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: AppBar(
                title: const Text(
                  "Praful's Digital Space",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.transparent,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedOpacity(
                    opacity: _appBarOpacity.value,
                    duration: const Duration(seconds: 1),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/horse_logo.png'),
                    ),
                  ),
                ),
                actions: <Widget>[
                  _buildNavButton("Home", () {}), // Button without transition
                  _buildNavButton("About", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => About()),
                    );
                  }),
                  _buildNavButton("Awards", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Awards()),
                    );
                  }),
                  _buildNavButton("Skills", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Skills()),
                    );
                  }),
                  _buildNavButton("Projects", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Projects()),
                    );
                  }),
                  _buildNavButton("Contact Us", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contactus()),
                    );
                  }),
                ],
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            SizedBox(width: 100),
            Container(
              height: 350,
              width: 700,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hii,",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "I am Praful",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                    ),
                  ),
                  Text(
                    "Flutter Developer & Ui/Ux Designer",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  // Animated Text with FadeTransition
                  FadeTransition(
                    opacity: _textOpacity,
                    child: Text(
                      "Designing the Future of Mobile Applications.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Projects()),);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero, // Remove the default padding from ElevatedButton
                        backgroundColor: Colors.red, // Ensure the button background color matches the container
                      ),
                      child: Center(
                        child: Text(
                          "7+ Projects",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Set text color to white for contrast
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.linkedin.com/in/prafulkadam?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
                          );
                        },
                        child: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          _launchURL(
                            "mailto:prafulkadam226@gmail.com",
                          );
                        },
                        child: Icon(
                          Icons.email,
                          size: 50,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          _launchURL("https://github.com/Praful2604");
                        },
                        child: FaIcon(
                          FontAwesomeIcons.github,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(width: 200),
            SizedBox(height: 500),
            Column(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 15.0,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('assets/images/praful.jpg'),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20), // Space between CircleAvatar and Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Resume()),
                    );
                  },
                  child: Text("Resume"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    // Button color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildNavButton(String title, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizeTransition(
        sizeFactor: _buttonSize,
        axis: Axis.horizontal,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
