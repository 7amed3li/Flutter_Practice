# SmartSplashGrid

A modern Flutter mobile application featuring an animated splash screen and a beautiful grid dashboard.

## ✨ Features

### 🎨 Splash Screen
- Full-screen immersive experience with transparent status bar
- **Custom-designed logo** with 2×2 grid pattern built using Flutter widgets
- Beautiful gradient background (blue → purple → deep blue)
- Smooth scale animation (0.8x → 1.0x with elastic bounce effect)
- Fade-in logo animation
- Slide-up text animation from bottom
- Animated loading indicator
- Auto-navigation to Grid Dashboard after 3 seconds
- Smooth fade transition between screens

### 🏠 Grid Dashboard
- Clean and elegant dashboard layout
- 2×2 GridView with premium rounded cards
- Each card features:
  - **Modern gradient backgrounds** (Blue, Purple, Green, Orange)
  - Soft elevation and shadows
  - Circular icon container with semi-transparent background
  - Bold Poppins font for titles
  - Smooth scale-down animation on tap
  - Interactive feedback with SnackBar
- Fully responsive design for all screen sizes

## 🎯 Design Highlights

- **Material 3 Design System** - Latest Flutter design standards
- **Custom Widget-Based Logo** - Beautiful 2×2 grid logo built with Flutter widgets
- **Premium Color Palette** - Eye-catching gradients (Blue/Purple/Green/Orange)
- **Google Fonts (Poppins)** - Professional typography
- **Smooth Animations** - Scale, fade, slide, and elastic bounce effects
- **Clean Architecture**:
  - `lib/screens` - Screen components (Splash, Home, Login)
  - `lib/widgets` - Reusable UI widgets
  - `lib/theme` - Centralized theme and styling

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. **Clone or navigate to the project directory**:
   ```bash
   cd c:\Cordo\SmartSplashGrid
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```

## 📱 Screens

### 1. Splash Screen (`splash_screen.dart`)
- **Custom widget-based logo** featuring a 2×2 grid pattern with gradient
- White rounded container with shadow
- Elastic bounce scale animation (0.8x → 1.0x)
- Multi-layered gradient background (Blue → Purple → Deep Blue)
- Smooth fade-in and slide-up animations
- Loading indicator
- 3-second auto-navigation to Grid Dashboard

### 2. Grid Dashboard (`home_screen.dart`)
- Welcome message at top
- 2×2 grid layout with premium cards:
  - **Analytics** - Blue gradient (#4b6cb7 → #182848)
  - **Reports** - Purple gradient (#667eea → #764ba2)
  - **Settings** - Green gradient (#2ecc71 → #27ae60)
  - **Profile** - Orange/Red gradient (#f39c12 → #e74c3c)
- Each card has tap animation and interactive feedback

### 3. Login Screen (`login_screen.dart`) - Bonus
- Beautiful gradient background
- Email and password fields with validation
- Smooth animations and transitions
- Ready for authentication integration

## 🎨 Theme Configuration

The app uses a centralized theme system (`app_theme.dart`) with:
- Premium color definitions
- Multiple gradient presets
- Material 3 theming
- Poppins font family
- Consistent spacing (padding: 16, spacing: 15)
- Rounded corners (radius: 22)

## 📦 Project Structure

```
SmartSplashGrid/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── screens/
│   │   ├── splash_screen.dart    # Animated splash screen
│   │   └── home_screen.dart      # Grid dashboard
│   ├── widgets/
│   │   └── dashboard_card.dart   # Reusable card widget
│   └── theme/
│       └── app_theme.dart        # Theme configuration
├── assets/
│   └── images/                   # Image assets
├── pubspec.yaml                  # Dependencies
└── README.md                     # This file
```

## 🎭 Animations

- **Logo Animation**: Scale + Fade with elastic bounce (1500ms)
- **Text Animation**: Slide from bottom + Fade (1200ms)
- **Background Animation**: Opacity shift (2000ms)
- **Card Tap Animation**: Scale down effect (150ms)
- **Screen Transition**: Fade transition (800ms)

## 🛠️ Technologies Used

- **Flutter** - UI framework
- **Material 3** - Design system
- **Google Fonts** - Poppins typography
- **Custom Animations** - AnimationController, Tween, CurvedAnimation

## 📝 Notes

- No backend required - fully static content
- Professional UI ready for presentation
- Optimized for both Android and iOS
- Responsive design adapts to all screen sizes

## 🎨 Color Palette

| Color | Hex Code | Usage |
|-------|----------|-------|
| Primary Blue | `#4b6cb7` | Main brand color |
| Deep Blue | `#182848` | Dark accents |
| Accent Cyan | `#00d4ff` | Highlights |
| Accent Purple | `#9b59b6` | Secondary accents |

## 📄 License

This project is created for demonstration purposes.

---

**Built with ❤️ using Flutter**
