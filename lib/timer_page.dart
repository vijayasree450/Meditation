import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'notification_service.dart';

class TimerPage extends StatefulWidget {
  final int minutes;
  final String title;

  const TimerPage({super.key, required this.minutes, required this.title});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  Timer? timer;
  late DateTime endTime;
  late int totalSeconds;
  late int secondsLeft;
  final AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    totalSeconds = widget.minutes * 60;
    secondsLeft = totalSeconds;
    endTime = DateTime.now().add(Duration(seconds: secondsLeft));

    NotificationService.scheduleAlarm(secondsLeft, widget.title);

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final remaining = endTime.difference(DateTime.now()).inSeconds;

      if (remaining > 0) {
        setState(() {
          secondsLeft = remaining;
        });
      } else {
        setState(() {
          secondsLeft = 0;
        });
        timer.cancel();
        _triggerForegroundAlarm();
      }
    });
  }

  void _triggerForegroundAlarm() {
    player.setReleaseMode(ReleaseMode.stop);
    player.play(AssetSource('Dawn_of_the_Sovereign.mp3'));

    if (mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Row(
            children: [
              Icon(Icons.check_circle_rounded, color: Colors.green, size: 28),
              SizedBox(width: 8),
              Text("Finished"),
            ],
          ),
          content: const Text(
            "Meditation Completed. May peace be with you.",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E3A8A),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                player.stop();
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    NotificationService.cancelAlarm();
    player.stop();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int minutes = secondsLeft ~/ 60;
    final int seconds = secondsLeft % 60;
    final double progress = totalSeconds > 0 ? (secondsLeft / totalSeconds) : 0;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF1E3A8A),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 1,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 10,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Color(0xFF1E3A8A),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "$minutes:${seconds.toString().padLeft(2, '0')}",
                        style: const TextStyle(
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                          fontFeatures: [],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Time Remaining",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF6FF),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFBFDBFE)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.alarm_on_rounded, size: 18, color: Color(0xFF1E3A8A)),
                    SizedBox(width: 6),
                    Text(
                      "സ്‌ക്രീൻ ഓഫ് ആയാലും അലാറം അടിക്കും",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1E3A8A),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red.shade700,
                  side: BorderSide(color: Colors.red.shade300),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.stop_circle_outlined),
                label: const Text(
                  "Stop Session",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
