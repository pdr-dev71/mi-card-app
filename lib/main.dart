import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MiCard(),
    );
  }
}

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/53342708?v=4'),
            ),
            Text(
              'João Pedro',
              style: GoogleFonts.pacifico(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: GoogleFonts.sourceSansPro(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            const Divider(
              color: Colors.white,
              indent: 130,
              endIndent: 130,
            ),
            const SizedBox(height: 10),
            Card(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '89981429115',
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 10),
            Card(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'joaopedrosr2699@gmail.com',
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
