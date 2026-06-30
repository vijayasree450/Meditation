import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeditationHome(),
    );
  }
}

class MeditationHome extends StatelessWidget {
  MeditationHome({super.key});

  final List<Map<String, dynamic>> routines = [
    {"title": "Cleaning", "subtitle": "Daily refresh", "minutes": 20},

    {"title": "Meditation", "subtitle": "Deep breath awareness", "minutes": 40},

    {
      "title": "Universal Prayer",
      "subtitle": "Global connection",
      "minutes": 10,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          "Mindful Presence",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Good evening,\npeaceful mind",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            const Text(
              "Your Routines",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            ...routines.map(
              (item) => RoutineCard(
                title: item["title"],
                subtitle: item["subtitle"],
                minutes: item["minutes"],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoutineCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int minutes;

  const RoutineCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.minutes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(subtitle),
                  const SizedBox(height: 10),
                  Text(
                    "$minutes m",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.play_circle_fill,
                size: 50,
                color: Colors.teal,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TimerPage(minutes: minutes, title: title),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TimerPage extends StatefulWidget {
  final int minutes;
  final String title;

  const TimerPage({super.key, required this.minutes, required this.title});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  Timer? timer;
  late int secondsLeft;

  final AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    secondsLeft = widget.minutes * 60;

    // player.setReleaseMode(ReleaseMode.loop);
    // player.play(AssetSource('Dawn_of_the_Sovereign.mp3'));

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsLeft > 0) {
        setState(() {
          secondsLeft--;
        });
      } else {
        timer.cancel();
        player.setReleaseMode(ReleaseMode.stop);
        player.play(AssetSource('Dawn_of_the_Sovereign.mp3'));

        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text("Finished"),
            content: const Text("Meditation Completed"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    player.stop();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int minutes = secondsLeft ~/ 60;
    int seconds = secondsLeft % 60;

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(
          "$minutes:${seconds.toString().padLeft(2, '0')}",
          style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
