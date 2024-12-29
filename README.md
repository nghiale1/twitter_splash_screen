# Flutter Twitter Splash Screen
A Flutter package providing a customizable Twitter-style animated splash screen with smooth scale animations and transitions.

![demo](https://github.com/user-attachments/assets/3691150b-dbbd-4c81-ab5f-e82a3b3029bc)

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
  twitter_splash: ^0.0.1
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


## Support
If you find this project helpful, you can support me:

<a href="https://buymeacoffee.com/nghiale1" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
