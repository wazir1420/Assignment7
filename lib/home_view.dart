import 'package:flutter/material.dart';
import 'package:fure/login_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'My App',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.camera_alt_rounded,
              size: 30,
              weight: 50,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            color: Colors.white,
            icon: const Icon(
              Icons.more_vert,
              size: 30,
              weight: 50,
            ),
            onSelected: (String value) {},
            offset: const Offset(0, 50),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  child: Text('New group'),
                ),
                const PopupMenuItem<String>(
                  child: Text('New broadcast'),
                ),
                PopupMenuItem<String>(
                  child: const Text('Logout'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()));
                  },
                ),
              ];
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to My App'),
      ),
    );
  }
}
