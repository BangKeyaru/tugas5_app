import 'package:flutter/material.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  shape: BoxShape.circle,
                ),
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                ),
              ),
            const SizedBox(height: 20),
            const Text(
              'Nur Rahman',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}