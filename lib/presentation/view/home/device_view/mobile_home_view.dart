import 'package:flutter/material.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Responsive",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("Design", style: TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'In this course we will go over the basics of using Flutter Web for development. Topics include Responsive Layouts, Deploying, Font Changes, Hover functionality, and more.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100, vertical: 15)),
              onPressed: () {},
              child: const Text(
                'Join Course',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.green.shade400,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Responsive Design",
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    Text(
                      "Flutter",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: const Icon(Icons.dashboard),
                title: const Text("Dashboard"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: const Icon(Icons.shop),
                title: const Text("Shop"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
