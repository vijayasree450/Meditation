import 'package:flutter/material.dart';
import 'timer_page.dart';

class MeditationPrayerPage extends StatelessWidget {
  const MeditationPrayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          "പ്രഭാത ധ്യാനം - പ്രാർത്ഥന",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF0F766E),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Banner
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF0F766E), Color(0xFF0D9488), Color(0xFF14B8A6)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF0D9488).withValues(alpha: 0.25),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wb_sunny_rounded, color: Colors.amberAccent, size: 26),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "പ്രഭാത ധ്യാനം / ലയന പ്രാർത്ഥന",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Morning Meditation & Deep Breath Awareness",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // Laya Prayer Card
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFFBEB), Color(0xFFFEF3C7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.amber.shade300, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber.withValues(alpha: 0.15),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.spa_rounded, color: Colors.amber.shade800, size: 22),
                      const SizedBox(width: 8),
                      const Text(
                        "ലയന പ്രാർത്ഥന (Prayer)",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF78350F),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(Icons.spa_rounded, color: Colors.amber.shade800, size: 22),
                    ],
                  ),
                  const Divider(height: 24, thickness: 1),
                  const Text(
                    "'ഓ' മാസ്റ്റർ,\n\n"
                    "മനുഷ്യജീവിതത്തിൻ്റെ യഥാർത്ഥ ലക്ഷ്യം നിങ്ങളാണ്.\n\n"
                    "ഞങ്ങൾ ഇപ്പോഴും ആഗ്രഹങ്ങളുടെ അടിമകളാണ്,\n\n"
                    "ഞങ്ങളുടെ മുന്നേറ്റങ്ങൾക്ക് തടസ്സം സൃഷ്ടിക്കുന്നു.\n\n"
                    "ആ നിലയിലേക്ക് നമ്മളെ എത്തിക്കാൻ, നിങ്ങൾ മാത്രമാണ് ദൈവവും ശക്തിയും.",
                    style: TextStyle(
                      fontSize: 16.5,
                      height: 1.7,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // Spiritual Sparkles Header
            const Center(
              child: Text(
                "✨✨✨✨ 🙏🏻 ✨✨✨✨",
                style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 2,
                ),
              ),
            ),

            const SizedBox(height: 14),

            // Meditation Suggestion Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F766E).withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.favorite_rounded,
                            color: Color(0xFF0F766E),
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text(
                            "ധ്യാന സങ്കല്പം (Meditation Suggestion)",
                            style: TextStyle(
                              fontSize: 15.5,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F766E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20, thickness: 1),
                    const Text(
                      "(കൂടുതൽ സൂക്ഷ്മമായി ചിന്തിക്കുക..)",
                      style: TextStyle(
                        fontSize: 13.5,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF64748B),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0FDFA),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFF99F6E4)),
                      ),
                      child: const Text(
                        "\"എൻ്റെ ഹൃദയത്തിൽ ഒരു ദിവ്യ പ്രകാശമുണ്ട്, അത് എന്നെ അതിലേക്ക് വലിക്കുന്നു.\"",
                        style: TextStyle(
                          fontSize: 16.5,
                          height: 1.6,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF115E59),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Start Timer Action Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.timer_outlined, color: Color(0xFF0F766E), size: 22),
                      SizedBox(width: 8),
                      Text(
                        "ധ്യാനം ആരംഭിക്കുക (Start Meditation)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F766E),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0F766E),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2,
                          ),
                          icon: const Icon(Icons.play_arrow_rounded, size: 22),
                          label: const Text(
                            "30 Minutes",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const TimerPage(
                                  minutes: 30,
                                  title: "Morning Meditation (30m)",
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1E3A8A),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2,
                          ),
                          icon: const Icon(Icons.play_arrow_rounded, size: 22),
                          label: const Text(
                            "40 Minutes",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const TimerPage(
                                  minutes: 40,
                                  title: "Morning Meditation (40m)",
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
