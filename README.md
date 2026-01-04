Weather App 🌤️
A sleek, real-time weather forecasting application built with Flutter. 
This app provides accurate weather data, including temperature, humidity, and wind conditions, using a minimalist Material 3 design.

✨ Features
.Real-time Weather: Get current weather conditions for your specific location.
.Dynamic Backgrounds: UI colors and icons change based on the weather (e.g., sunny, rainy, or cloudy).
.Detailed Metrics: View humidity, wind speed, and pressure.
.Search Functionality: Find weather information for any city globally.
.Responsive Design: Optimized for iOS, Android, and Web.

📸 Screenshots
Home Screen	Search View	Settings

🛠️ Built With
.Flutter: Cross-platform UI toolkit.
.Dart: The programming language behind Flutter.
.OpenWeatherMap API: Data source for global weather information.
.Provider/Riverpod: State management (choose whichever you used).
.Geolocator: To fetch the user's current GPS coordinates.

🚀 Getting Started
Follow these steps to run the project on your local machine.

Prerequisites
.Flutter SDK (v3.x or later)
.A Code Editor (VS Code or Android Studio)
.An API Key from OpenWeatherMap

Installation
Clone the Repository:
```
git clone git@github.com-shyammohanazad:shyammohanazad/weather_app.git
cd weather_app
```

Install Dependencies:
```bash
flutter pub get
```

Configure API Key:
Create a .env file in the root directory (or update your config file) and 
Add your key:
```
env
OPENWEATHER_API_KEY=your_api_key_here
```

Run the App:

`flutter run`


📂 Project Structure
```
lib/
├── api/             # API service and network calls
├── models/          # Data models for Weather and Forecast
├── providers/       # State management logic
├── screens/         # UI Screen widgets (Home, Search, etc.)
├── widgets/         # Reusable UI components
└── main.dart        # Application entry point
```


🛡️ License
Distributed under the MIT License. See LICENSE for more information.
👤 Contact
Shyam Mohan Azad
GitHub: @shyammohanazad
Email: shyamthesisid@gmail.com
Created with ❤️ using Flutter in 2026.
