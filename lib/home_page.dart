import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/api_key.dart';
import 'package:weather_app/hourly_weather_card.dart';

import 'imports.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String temprature = '';

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    try {
      String cityName = 'London';
      final uri = Uri.https('api.openweathermap.org', '/data/2.5/forecast', {
        'q': cityName,
        'appid': openWeatherAPIKey,
        // 'units': 'metric',
      });

      final res = await http.get(uri);
      // After fetching, you can update the state if needed
      print('Response status: ${res.statusCode}');
      print('Response body: ${res.body}');

      final data = jsonDecode(res.body);
      if (data['cod'] != '200') {
        throw 'Error fetching weather data: ${data['message']}';
        // Process the data as needed
      }
      setState(() {
        temprature = data['list'][0]['main']['temp'].toString();
        print('Incoming temprature: $temprature');
      });
    } catch (e) {
      throw 'Error fetching weather data: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title, style: TextStyle(color: textColor)),
        elevation: 3.0,
        shadowColor: Color(0xFF000000),
      ),
      body: Center(
        child: temprature == ''
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 320.0,
                      width: double.infinity,
                      child: Card(
                        shadowColor: shadowColor,
                        elevation: 5.0,

                        color: backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                            20.0,
                            20.0,
                            20.0,
                            00,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'City Name',
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Country Name',
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Text(
                                    'Day, Mon Date, 2026',
                                    style: TextStyle(color: textColor),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: const Color.fromARGB(
                                          255,
                                          235,
                                          231,
                                          226,
                                        ),
                                        size: 100.0,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '$temprature',
                                            style: TextStyle(
                                              color: textColor,
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 5.0),
                                          Text(
                                            '\u2103',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              color: textColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Forcast',
                                            style: TextStyle(
                                              color: textColor,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                      width: double.infinity,
                      child: Card(
                        color: cardColor,
                        child: ListTile(
                          leading: Icon(Icons.water_drop, color: iconColor),
                          title: Text(
                            'Humidity',
                            style: TextStyle(color: textColor),
                          ),
                          trailing: Text(
                            '60%',
                            style: TextStyle(color: textColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                      width: double.infinity,
                      child: Card(
                        color: cardColor,
                        child: ListTile(
                          leading: Icon(
                            Icons.beach_access_outlined,
                            fill: 0.5,
                            color: iconColor,
                          ),
                          title: Text(
                            'Rainfall',
                            style: TextStyle(color: textColor),
                          ),
                          trailing: Text(
                            '3cm',
                            style: TextStyle(color: textColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                      width: double.infinity,
                      child: Card(
                        color: cardColor,
                        child: ListTile(
                          leading: Icon(
                            Icons.air,
                            color: iconColor,
                            shadows: [],
                          ),
                          title: Text(
                            'Wind',
                            style: TextStyle(color: textColor),
                          ),
                          trailing: Text(
                            '19km/hr',
                            style: TextStyle(color: textColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Today', style: TextStyle(color: textColor)),
                              SizedBox(width: 20),
                              Text(
                                'Tomorrow',
                                style: TextStyle(color: textColor),
                              ),
                              SizedBox(width: 100),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Next 7 Days >',
                                  style: TextStyle(
                                    color: textColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '_____________________',
                                style: TextStyle(color: textColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HourlyWeatherCard(
                            hour: '07',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '08',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: 'Now',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '10',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '11',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '12',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '13',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '14',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '15',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '16',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '17',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '18',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '19',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '20',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '21',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '22',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                          HourlyWeatherCard(
                            hour: '23',
                            temperature: '19',
                            weatherIcon: Icons.wb_sunny,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
