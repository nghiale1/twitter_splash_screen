# Flutter Twitter Splash Screen
A Flutter package providing a customizable Twitter-style animated splash screen with smooth scale animations and transitions.

![demo](https://github.com/user-attachments/demo.gif)

## Features
- 🎯 Pixel-perfect Twitter splash screen animation
- 🎨 Fully customizable appearance (logo, colors, timing)
- ⚡ Smooth scale & transition animations
- 📱 Works across all platforms
- 🔧 Simple integration
- 💫 Beautiful bounce effect

## Installation
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  twitter_splash: ^1.0.0
```

## Usage

### Basic Implementation
```dart
import 'package:twitter_splash/twitter_splash.dart';

TwitterSplashScreen(
  child: HomeScreen(), // Your main app screen
  logo: Image.asset('assets/logo.png'), // Your app logo
)
```

### Customized Implementation
```dart
TwitterSplashScreen(
  // Required
  child: HomeScreen(),
  
  // Optional customizations
  logo: SvgPicture.asset(
    'assets/logo.svg',
    width: 80,
    height: 80,
  ),
  backgroundColor: Colors.blue,
  logoColor: Colors.white,
  initialDelay: const Duration(milliseconds: 500),
  animationDuration: const Duration(milliseconds: 2000),
  onAnimationComplete: () {
    print('Splash animation completed!');
  },
)
```

## Customization Options

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `child` | `Widget` | required | Main screen to show after splash |
| `logo` | `Widget?` | null | Custom logo widget |
| `backgroundColor` | `Color` | `Colors.black` | Splash screen background |
| `logoColor` | `Color` | `Colors.white` | Default logo color |
| `initialDelay` | `Duration` | `500ms` | Animation start delay |
| `animationDuration` | `Duration` | `2000ms` | Total animation time |
| `onAnimationComplete` | `VoidCallback?` | null | Completion callback |

## Examples

### Using Default Logo
```dart
TwitterSplashScreen(
  child: HomeScreen(),
)
```

### Custom SVG Logo
```dart
TwitterSplashScreen(
  child: HomeScreen(),
  logo: SvgPicture.asset(
    'assets/logo.svg',
    width: 80,
  ),
)
```

### Full Customization
```dart
TwitterSplashScreen(
  child: HomeScreen(),
  logo: Image.asset(
    'assets/logo.png',
    width: 100,
    height: 100,
  ),
  backgroundColor: const Color(0xFF1DA1F2), // Twitter Blue
  initialDelay: const Duration(seconds: 1),
  animationDuration: const Duration(milliseconds: 1500),
  onAnimationComplete: () => print('Welcome!'),
)
```

## Platform Support

| Android | iOS | Web | MacOS | Linux | Windows |
|---------|-----|-----|-------|--------|----------|
| ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

## 🤝 Contributing

Contributions are welcome! Please read our [contributing guidelines](CONTRIBUTING.md) to get started.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

# GitHub Repository Description

Twitter-style Splash Screen for Flutter
A pixel-perfect implementation of Twitter's iconic splash screen animation with smooth scale transitions and customizable options. Perfect for creating engaging app launch experiences.

Key features:
• Exact Twitter animation reproduction
• Customizable logo & colors
• Smooth transitions
• Cross-platform support
• Easy integration

Keywords: flutter, splash screen, twitter, animation, scale animation, custom splash, flutter package