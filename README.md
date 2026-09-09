# Mindful Presence - Meditation App 🧘‍♂️✨

A beautiful, spiritual Flutter meditation app built with guided routines, Malayalam prayers, and exact background alarm notifications.

---

## 🌟 Core Features & Practices

### 1. 🧹 Cleaning Practice - Prayer (ക്ലീനിംഗ് സാധന & പ്രാർത്ഥന)
- **Time/Duration:** Daily evening session (20–30 minutes).
- **Guidelines:**
  - Sit daily in the evening (1–2 hours before or after meals).
  - Close eyes and observe body sensations.
- **Prayer & Suggestion:** Complete Malayalam text for releasing grossness and impurities through the back as dense black smoke, and receiving the Master's grace as white rays from the front.
- **Built-in Timers:** Quick-start 20m and 30m cleaning timer sessions.

### 2. 🌅 Morning Meditation & Laya Prayer (പ്രഭാത ധ്യാനം / ലയന പ്രാർത്ഥന)
- **Time/Duration:** Morning deep awareness session (30–40 minutes).
- **Laya Prayer:** Heartfulness universal prayer (*'ഓ' മാസ്റ്റർ, മനുഷ്യജീവിതത്തിൻ്റെ യഥാർത്ഥ ലക്ഷ്യം നിങ്ങളാണ്...*).
- **Heart Light Meditation Suggestion:** *എൻ്റെ ഹൃദയത്തിൽ ഒരു ദിവ്യ പ്രകാശമുണ്ട്, അത് എന്നെ അതിലേക്ക് വലിക്കുന്നു.*
- **Built-in Timers:** Quick-start 30m and 40m meditation timers.

### 3. 🌙 9'o Clock Universal Prayer (സാർവത്രിക പ്രാർത്ഥന)
- **Time/Duration:** Every night from 9:00 PM to 9:15 PM (15 minutes).
- **Universal Peace Sankalpa:**
  - All men and women in the universe treat each other as brothers and sisters with hearts filled with love.
  - Everyone is connected directly to the Master's presence.
  - The entire universe is immersed in the sweetness of the Guru's infinite love.
- **Built-in Timer:** 15-minute dedicated prayer timer.

---

## 🔔 Exact Alarm & Screen-Off Wakeup System

- **Background & Screen-Off Alarms:** The alarm reliably rings at maximum volume even when the screen is turned off or the phone is locked.
- **Android Exact Alarms:** Configured with `exactAllowWhileIdle` and high-priority Alarm Channel.
- **Custom Audio:** Custom alarm chime (`dawn_of_the_sovereign`) played directly via native Android notifications and foreground audio player.
- **Lock-Screen Wake:** Automatically turns on screen and displays completion dialog.

---

## 📱 Project Structure

```
lib/
├── main.dart                  # App entry point & main routines dashboard
├── cleaning_prayer_page.dart  # Cleaning practice guidelines & prayer
├── meditation_prayer_page.dart # Morning meditation & Laya prayer
├── universal_prayer_page.dart # 9:00 PM Universal prayer
├── timer_page.dart            # Circular countdown timer & alarm controls
└── notification_service.dart  # System alarms & notification manager

assets/
├── Dawn_of_the_Sovereign.mp3  # Alarm sound asset
└── logo.png                   # App icon
```

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.19+ recommended)
- Android Studio / VS Code with Flutter extension
- Android Device or Emulator (API 26+)

### Installation & Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/vijayasree450/Meditation.git
   cd meditation_app
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run tests:**
   ```bash
   flutter test
   ```

4. **Launch the application:**
   ```bash
   flutter run
   ```

---

