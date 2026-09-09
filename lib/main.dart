import 'dart:async';
import 'package:flutter/material.dart';
import 'notification_service.dart';
import 'cleaning_prayer_page.dart';
import 'meditation_prayer_page.dart';
import 'universal_prayer_page.dart';
import 'timer_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mindful Presence',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E3A8A)),
        useMaterial3: true,
      ),
      home: const MeditationHome(),
    );
  }
}

class MeditationHome extends StatelessWidget {
  const MeditationHome({super.key});

  final List<Map<String, dynamic>> routines = const [
    {
      "title": "Cleaning Practice - Prayer",
      "subtitle": "Daily evening refresh • ക്ലീനിംഗ് പ്രാർത്ഥന",
      "minutes": 5,
      "pageType": "cleaning",
      "prayerLabel": "ക്ലീനിംഗ് പ്രാർത്ഥന & നിർദ്ദേശങ്ങൾ",
    },
    {
      "title": "Meditation - Deep Breath Awareness",
      "subtitle": "Morning meditation • പ്രഭാത ധ്യാനം & പ്രാർത്ഥന",
      "minutes": 40,
      "pageType": "meditation",
      "prayerLabel": "പ്രഭാത ധ്യാനം & ലയന പ്രാർത്ഥന",
    },
    {
      "title": "Universal Prayer (9:00 PM)",
      "subtitle": "Global connection • സാർവത്രിക പ്രാർത്ഥന",
      "minutes": 15,
      "pageType": "universal",
      "prayerLabel": "സാർവത്രിക പ്രാർത്ഥന & സമയം",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        title: const Text(
          "Mindful Presence",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E3A8A),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: ListView(
          children: [
            const Text(
              "Good evening,\npeaceful mind",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Your Routines",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF059669),
              ),
            ),
            const SizedBox(height: 12),
            ...routines.map(
              (item) => RoutineCard(
                title: item["title"],
                subtitle: item["subtitle"],
                minutes: item["minutes"],
                pageType: item["pageType"] ?? "none",
                prayerLabel: item["prayerLabel"] ?? "",
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
  final String pageType;
  final String prayerLabel;

  const RoutineCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.minutes,
    this.pageType = "none",
    this.prayerLabel = "",
  });

  void _openPrayerPage(BuildContext context) {
    if (pageType == "cleaning") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CleaningPrayerPage()),
      );
    } else if (pageType == "meditation") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const MeditationPrayerPage()),
      );
    } else if (pageType == "universal") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const UniversalPrayerPage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => TimerPage(minutes: minutes, title: title),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool hasPrayer = pageType != "none";
    final Color primaryThemeColor = switch (pageType) {
      "cleaning" => const Color(0xFF1E3A8A),
      "meditation" => const Color(0xFF0F766E),
      "universal" => const Color(0xFF312E81),
      _ => const Color(0xFF475569),
    };

    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => _openPrayerPage(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          pageType == "cleaning"
                              ? "20-30 m"
                              : (pageType == "meditation"
                                    ? "30-40 m"
                                    : "$minutes m"),
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: primaryThemeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_fill,
                      size: 48,
                      color: primaryThemeColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              TimerPage(minutes: minutes, title: title),
                        ),
                      );
                    },
                  ),
                ],
              ),
              if (hasPrayer) ...[
                const Divider(height: 18, thickness: 0.8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "✨ $prayerLabel",
                        style: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                          color: primaryThemeColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: primaryThemeColor.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: primaryThemeColor.withValues(alpha: 0.3),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "വായിക്കുക",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: primaryThemeColor,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 11,
                            color: primaryThemeColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
