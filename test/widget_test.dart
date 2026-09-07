import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meditation_app/cleaning_prayer_page.dart';
import 'package:meditation_app/meditation_prayer_page.dart';
import 'package:meditation_app/universal_prayer_page.dart';

void main() {
  testWidgets('CleaningPrayerPage displays instructions and Malayalam prayer text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: CleaningPrayerPage(),
      ),
    );

    // Verify Title
    expect(find.text('Cleaning Practice - Prayer'), findsNWidgets(2));

    // Verify Guidelines
    expect(find.text('ദിവസേനെ വൈകിട്ട് ഇരിക്കുക.'), findsOneWidget);
    expect(
      find.text('*ഭക്ഷണം സമയത്തിന് 1-2 മണിക്കൂർ മുന്നെയോ, ശേഷമോ ഇരിക്കുക.'),
      findsOneWidget,
    );
    expect(
      find.text('*കണ്ണടച്ചു ശരീരം ശ്രദ്ധിച്ചു ഇരിക്കുക. (ഹൃദയത്തിലേക്ക് മാത്രമായി ശ്രദ്ധിക്കേണ്ടതില്ല)'),
      findsOneWidget,
    );
    expect(find.text('(20-30 minutes)'), findsOneWidget);

    // Verify Sparks & Prayer
    expect(find.text('✨✨✨✨🙏🏻✨✨✨'), findsOneWidget);
    expect(find.textContaining('എൻ്റെ എല്ലാ..'), findsOneWidget);
    expect(find.textContaining('സ്ഥൂലതകൾ,'), findsOneWidget);
    expect(find.textContaining('മുൻ ചിന്താ ശൃംഖലകൾ ,'), findsOneWidget);
    expect(find.textContaining('ദൃഢത, സങ്കീർണതകൾ, സംസ്കാരങ്ങൾ,'), findsOneWidget);
    expect(find.textContaining('കണ്ടീഷനിംഗ്, പ്രവണതകൾ, രോഗങ്ങൾ,'), findsOneWidget);
    expect(
      find.textContaining('ഇപ്പോൾ എൻ്റെ ശരീരത്തിന്റെ പുറകിൽ നിന്ന് ഇടതൂർന്ന കറുത്ത പുകയുടെ രൂപത്തിൽ പുറത്തേക്ക് പോകുന്നു.'),
      findsOneWidget,
    );
    expect(
      find.textContaining('എൻ്റെ ശരീരത്തിൻ്റെ മുൻവശത്ത് നിന്ന് ഒഴിഞ്ഞ ഇടം, വെളുത്ത കിരണങ്ങളുടെ രൂപത്തിൽ മാസ്റ്ററുടെ അനുഗ്രഹം നിറയുന്നു.'),
      findsOneWidget,
    );

    // Verify Timer buttons exist
    expect(find.text('20 Minutes'), findsOneWidget);
    expect(find.text('30 Minutes'), findsOneWidget);
  });

  testWidgets('MeditationPrayerPage displays Laya prayer and heart light suggestion', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MeditationPrayerPage(),
      ),
    );

    // Verify Title & Header
    expect(find.text('പ്രഭാത ധ്യാനം - പ്രാർത്ഥന'), findsOneWidget);
    expect(find.text('പ്രഭാത ധ്യാനം / ലയന പ്രാർത്ഥന'), findsOneWidget);

    // Verify Laya Prayer Text
    expect(find.textContaining("'ഓ' മാസ്റ്റർ,"), findsOneWidget);
    expect(
      find.textContaining('മനുഷ്യജീവിതത്തിൻ്റെ യഥാർത്ഥ ലക്ഷ്യം നിങ്ങളാണ്.'),
      findsOneWidget,
    );
    expect(
      find.textContaining('ഞങ്ങൾ ഇപ്പോഴും ആഗ്രഹങ്ങളുടെ അടിമകളാണ്,'),
      findsOneWidget,
    );
    expect(
      find.textContaining('ഞങ്ങളുടെ മുന്നേറ്റങ്ങൾക്ക് തടസ്സം സൃഷ്ടിക്കുന്നു.'),
      findsOneWidget,
    );
    expect(
      find.textContaining('ആ നിലയിലേക്ക് നമ്മളെ എത്തിക്കാൻ, നിങ്ങൾ മാത്രമാണ് ദൈവവും ശക്തിയും.'),
      findsOneWidget,
    );

    // Verify Heart Light Suggestion
    expect(find.text('(കൂടുതൽ സൂക്ഷ്മമായി ചിന്തിക്കുക..)'), findsOneWidget);
    expect(
      find.textContaining('എൻ്റെ ഹൃദയത്തിൽ ഒരു ദിവ്യ പ്രകാശമുണ്ട്, അത് എന്നെ അതിലേക്ക് വലിക്കുന്നു.'),
      findsOneWidget,
    );

    // Verify Timer Buttons
    expect(find.text('30 Minutes'), findsOneWidget);
    expect(find.text('40 Minutes'), findsOneWidget);
  });

  testWidgets('UniversalPrayerPage displays 9 o clock universal prayer Malayalam text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: UniversalPrayerPage(),
      ),
    );

    // Verify Title
    expect(find.text('Universal Prayer - സാർവത്രിക പ്രാർത്ഥന'), findsOneWidget);
    expect(find.text("Meditation - 9'o clock Universal Prayer"), findsOneWidget);

    // Verify Prayer Text
    expect(
      find.textContaining(
        'പ്രപഞ്ചത്തിലെ എല്ലാ പുരുഷന്മാരും സ്ത്രീകളും പരസ്പരം സഹോദരങ്ങളെപ്പോലെ പെരുമാറുന്നു, അവരുടെ ഹൃദയങ്ങൾ സ്നേഹത്തിൽ നിറഞ്ഞിരിക്കുന്നു.',
      ),
      findsOneWidget,
    );
    expect(
      find.textContaining(
        'ഓരോരുത്തരും മാസ്റ്ററെന്ന പ്രത്യേക വ്യക്തിത്വവുമായി നേരിട്ട് ബന്ധപ്പെട്ടിരിക്കുന്നു.',
      ),
      findsOneWidget,
    );
    expect(
      find.textContaining(
        'മുഴുവൻ ബ്രഹ്മാണ്ഡവും ഗുരുവിൻ്റെ അനന്തമായ സ്നേഹത്തിൻ്റെ മാധുര്യത്തിൽ മുങ്ങിയിരിക്കുന്നു.',
      ),
      findsOneWidget,
    );

    // Verify Timer button
    expect(find.text('15 Minutes'), findsOneWidget);
  });
}
