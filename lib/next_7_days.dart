import 'package:weather_app/imports.dart';

class Next7Days extends StatefulWidget {
  const Next7Days({super.key});

  @override
  State<Next7Days> createState() => _Next7DaysState();
}

class _Next7DaysState extends State<Next7Days> {
  List<Shadow> iconShadow = [
    Shadow(color: cardColor, offset: Offset.zero, blurRadius: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 5,
        title: Text('Next 7 Days Weather', style: TextStyle(color: textColor)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColor),
          onPressed: () => {},
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: 250,
                width: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tomorrow',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '20°C',
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.wb_sunny,
                                    color: iconColor,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 204, 213, 219),
                              ),
                              height: 50,
                              width: 50,
                              child: Icon(
                                shadows: iconShadow,
                                Icons.wb_sunny,
                                color: backgroundColor,
                                size: 30,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Sunny',
                              style: TextStyle(color: textColor, fontSize: 16),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 204, 213, 219),
                              ),
                              height: 50,
                              width: 50,
                              child: Icon(
                                shadows: iconShadow,
                                Icons.air,
                                color: backgroundColor,
                                size: 30,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Sunny',
                              style: TextStyle(color: textColor, fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 204, 213, 219),
                              ),
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.water_drop,
                                color: backgroundColor,
                                size: 30,
                                shadows: iconShadow,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Sunny',
                              style: TextStyle(color: textColor, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: cardColor,
                      leading: Icon(Icons.wb_sunny, color: iconColor),
                      title: Text(
                        'Day ${index + 1}',
                        style: TextStyle(color: textColor),
                      ),
                      subtitle: Text(
                        'High: ${20 + index}°C, Low: ${10 + index}°C',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
