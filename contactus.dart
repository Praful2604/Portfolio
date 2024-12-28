import 'package:flutter/material.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
        
          padding: const EdgeInsets.all(20.0), // Add padding around the form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
        
              const Text("Name",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15), // Border radius for rounded corners
                  ),
                  hintText: "Enter your name",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30), // Padding inside the TextField
                ),
              ),
              const SizedBox(height: 30),
              const Text("Email Id",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Enter your email",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                ),
              ),
              const SizedBox(height: 30),
              const Text("Contact No.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
              ),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Enter your contact number",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                ),
              ),
              const SizedBox(height: 30),
              const Text("Query",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Enter your query",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
        
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
