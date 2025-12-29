# ⏳ Flutter CountdownView library

A customizable **Countdown Timer library** built in Flutter with animation support for the last 5 seconds.

---
## ✨ Features
- Auto-start countdown
- Animated container in last **5 seconds**
- Border color changes to **red**
- Customizable:
  - Text color
  - Text size
  - Border enable / disable
  - Border width & color
- Clean and reusable widget

---
## ✨ Preview

https://github.com/user-attachments/assets/7c5c9c63-887b-4a9a-95c8-9332b8a30e6a

---
## 📦 Installation

Add this to your package's pubspec.yaml file:
```bash
dependencies:
  flutter_countdown_view:
    path: ../flutter_tab_layout  # For local development
```
from git:
```bash
dependencies:
  flutter_countdown_view:
       git:
         url: https://github.com/your-username/your-repo-name.git
```
Then run:
```
flutter pub get
```
---
## 📁 Project Structure
```
countdown_view/
│
├── lib/
│   ├── countdown_view.dart        # Countdown widget
│   ├── main.dart                  # App entry point
│
├── example/
│   └── main.dart                  # Example usage
│
├── test/
│   └── countdown_view_test.dart   # Widget tests
│
├── pubspec.yaml
├── README.md
├── CHANGELOG.md
├── LICENSE
└── analysis_options.yaml
```
---
## 🚀 Usage
```
import 'package:flutter/material.dart';
import 'package:flutter_countdown_view/demo.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SlidePuzzle',
      home: CountdownView(seconds: 15),
      theme: ThemeData(fontFamily: 'Game_font'),
    );
  }
}
```
---
## 🧠 How It Works

- The countdown starts automatically using `Timer.periodic`.
- Every second, the remaining time is decreased by **1 second**.
- Time is formatted into **MM:SS** format.
- When **5 seconds or less remain**:
  - Border color changes to **red**
  - Text size increases
  - `AnimatedContainer` triggers a pulse animation
- When the timer reaches **0**:
  - The timer stops automatically
  - Countdown animation ends
---
 ## 🚀 Future Improvements

- Add sound or vibration in the last few seconds
- Support circular progress animation
- Allow pause and resume functionality
- Provide callbacks when countdown finishes
- Add customizable animation styles
- Improve accessibility and theming support

---
## 🎨 Customization Options

You can fully customize the **CountdownView** using the following properties:

| Property | Description |
|--------|------------|
| `seconds` | Total countdown duration in seconds |
| `textColor` | Color of the countdown text |
| `textSize` | Font size of the countdown text |
| `showBorder` | Enable or disable the border |
| `borderColor` | Default border color |
| `borderWidth` | Thickness of the border |

---
## 📜 License

MIT License

Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
