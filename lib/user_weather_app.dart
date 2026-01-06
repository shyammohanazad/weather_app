import 'package:weather_app/next_7_days.dart';

import 'imports.dart';

class UserWeatherApp extends StatelessWidget {
  const UserWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      color: Color.fromARGB(255, 4, 29, 32),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Weather App'),
      home: const Next7Days(),
    );
  }
}
