import 'package:flutter/material.dart';
import 'timer_page.dart';

class UniversalPrayerPage extends StatelessWidget {
  const UniversalPrayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          "Universal Prayer - സാർവത്രിക പ്രാർത്ഥന",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF312E81),
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
                  colors: [Color(0xFF1E1B4B), Color(0xFF3730A3), Color(0xFF4338CA)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF3730A3).withValues(alpha: 0.3),
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
                      Icon(Icons.nights_stay_rounded, color: Colors.amberAccent, size: 26),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Meditation - 9'o clock Universal Prayer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    "സമയം: രാത്രി 9:00 - 9:15 (9 - 9:15 PM) • 15 Minutes",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // Guidelines Card
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
                        Icon(Icons.public_rounded, color: Colors.indigo.shade700, size: 22),
                        const SizedBox(width: 8),
                        Text(
                          "പ്രാർത്ഥനാ സമയം (9:00 - 9:15 PM)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade900,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20, thickness: 1),
                    _buildGuidelineItem(
                      icon: Icons.access_time_rounded,
                      iconColor: Colors.indigo.shade700,
                      text: "എല്ലാ ദിവസവും രാത്രി 9:00 മണിക്ക് ഇരിക്കുക (9:00 - 9:15 PM).",
                    ),
                    const SizedBox(height: 12),
                    _buildGuidelineItem(
                      icon: Icons.favorite_border_rounded,
                      iconColor: Colors.pink.shade700,
                      text: "ലോകശാന്തിക്കും സർവ്വ ജീവജാലങ്ങളുടെയും ക്ഷേമത്തിനുമായി പ്രാർത്ഥിക്കുക.",
                    ),
                  ],
                ),
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

            // Universal Prayer Card
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFAF5FF), Color(0xFFF3E8FF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.purple.shade200, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withValues(alpha: 0.15),
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
                      Icon(Icons.auto_awesome, color: Colors.purple.shade800, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        "സാർവത്രിക പ്രാർത്ഥന (Universal Prayer)",
                        style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple.shade900,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(Icons.auto_awesome, color: Colors.purple.shade800, size: 20),
                    ],
                  ),
                  const Divider(height: 24, thickness: 1),
                  const Text(
                    "പ്രപഞ്ചത്തിലെ എല്ലാ പുരുഷന്മാരും സ്ത്രീകളും പരസ്പരം സഹോദരങ്ങളെപ്പോലെ പെരുമാറുന്നു, അവരുടെ ഹൃദയങ്ങൾ സ്നേഹത്തിൽ നിറഞ്ഞിരിക്കുന്നു.\n\n"
                    "ഓരോരുത്തരും മാസ്റ്ററെന്ന പ്രത്യേക വ്യക്തിത്വവുമായി നേരിട്ട് ബന്ധപ്പെട്ടിരിക്കുന്നു.\n\n"
                    "മുഴുവൻ ബ്രഹ്മാണ്ഡവും ഗുരുവിൻ്റെ അനന്തമായ സ്നേഹത്തിൻ്റെ മാധുര്യത്തിൽ മുങ്ങിയിരിക്കുന്നു.",
                    style: TextStyle(
                      fontSize: 16.5,
                      height: 1.75,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

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
                      Icon(Icons.timer_outlined, color: Color(0xFF312E81), size: 22),
                      SizedBox(width: 8),
                      Text(
                        "പ്രാർത്ഥന ടൈമർ ആരംഭിക്കുക (Start Timer)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF312E81),
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
                            backgroundColor: const Color(0xFF312E81),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2,
                          ),
                          icon: const Icon(Icons.play_arrow_rounded, size: 22),
                          label: const Text(
                            "15 Minutes",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const TimerPage(
                                  minutes: 15,
                                  title: "Universal Prayer (15m)",
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

  static Widget _buildGuidelineItem({
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: iconColor.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: iconColor, size: 18),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14.5,
              height: 1.45,
              fontWeight: FontWeight.w500,
              color: Color(0xFF334155),
            ),
          ),
        ),
      ],
    );
  }
}
