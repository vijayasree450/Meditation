import 'package:flutter/material.dart';
import 'timer_page.dart';

class CleaningPrayerPage extends StatelessWidget {
  const CleaningPrayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          "Cleaning Practice - Prayer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF1E3A8A),
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
                  colors: [Color(0xFF1E3A8A), Color(0xFF2563EB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF2563EB).withValues(alpha: 0.25),
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
                      Icon(
                        Icons.spa_rounded,
                        color: Colors.amberAccent,
                        size: 26,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Cleaning Practice - Prayer",
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
                    "ക്ലീനിംഗ് സാധന & പ്രാർത്ഥന",
                    style: TextStyle(color: Colors.white70, fontSize: 13.5),
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
                        Icon(
                          Icons.info_outline_rounded,
                          color: Colors.indigo.shade700,
                          size: 22,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "നിർദ്ദേശങ്ങൾ (Guidelines)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade900,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 22, thickness: 1),
                    _buildGuidelineItem(
                      icon: Icons.wb_twilight_rounded,
                      iconColor: Colors.orange.shade700,
                      text: "ദിവസേനെ വൈകിട്ട് ഇരിക്കുക.",
                    ),
                    const SizedBox(height: 12),
                    _buildGuidelineItem(
                      icon: Icons.restaurant_rounded,
                      iconColor: Colors.green.shade700,
                      text:
                          "*ഭക്ഷണം സമയത്തിന് 1-2 മണിക്കൂർ മുന്നെയോ, ശേഷമോ ഇരിക്കുക.",
                    ),
                    const SizedBox(height: 12),
                    _buildGuidelineItem(
                      icon: Icons.visibility_off_rounded,
                      iconColor: Colors.teal.shade700,
                      text:
                          "*കണ്ണടച്ചു ശരീരം ശ്രദ്ധിച്ചു ഇരിക്കുക. (ഹൃദയത്തിലേക്ക് മാത്രമായി ശ്രദ്ധിക്കേണ്ടതില്ല)",
                    ),
                    const SizedBox(height: 12),
                    _buildGuidelineItem(
                      icon: Icons.timer_outlined,
                      iconColor: Colors.purple.shade700,
                      text: "(20-30 minutes)",
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Spiritual Sparkles Header
            const Center(
              child: Text(
                "✨✨✨✨🙏🏻✨✨✨",
                style: TextStyle(fontSize: 22, letterSpacing: 2),
              ),
            ),

            const SizedBox(height: 14),

            // Prayer / Sankalpa Card
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFFDF7), Color(0xFFFEF9C3)],
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
                      Icon(
                        Icons.auto_awesome,
                        color: Colors.amber.shade800,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "സങ്കല്പം / പ്രാർത്ഥന",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF78350F),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.auto_awesome,
                        color: Colors.amber.shade800,
                        size: 20,
                      ),
                    ],
                  ),
                  const Divider(height: 24, thickness: 1),
                  const Text(
                    "എൻ്റെ എല്ലാ..\n"
                    "സ്ഥൂലതകൾ,\n"
                    "മുൻ ചിന്താ ശൃംഖലകൾ ,\n\n"
                    "ദൃഢത, സങ്കീർണതകൾ, സംസ്കാരങ്ങൾ,\n\n"
                    "കണ്ടീഷനിംഗ്, പ്രവണതകൾ, രോഗങ്ങൾ,\n\n"
                    "ഇപ്പോൾ എൻ്റെ ശരീരത്തിന്റെ പുറകിൽ നിന്ന് ഇടതൂർന്ന കറുത്ത പുകയുടെ രൂപത്തിൽ പുറത്തേക്ക് പോകുന്നു.\n\n"
                    "എൻ്റെ ശരീരത്തിൻ്റെ മുൻവശത്ത് നിന്ന് ഒഴിഞ്ഞ ഇടം, വെളുത്ത കിരണങ്ങളുടെ രൂപത്തിൽ മാസ്റ്ററുടെ അനുഗ്രഹം നിറയുന്നു.",
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
                      Icon(
                        Icons.timer_outlined,
                        color: Color(0xFF1E3A8A),
                        size: 22,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "ക്ലീനിംഗ് ടൈമർ ആരംഭിക്കുക (Start Timer)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E3A8A),
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
                            "5 Minutes",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const TimerPage(
                                  minutes: 5,
                                  title: "Cleaning Practice (5m)",
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
                            backgroundColor: const Color(0xFF0D9488),
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
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const TimerPage(
                                  minutes: 30,
                                  title: "Cleaning Practice (30m)",
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
