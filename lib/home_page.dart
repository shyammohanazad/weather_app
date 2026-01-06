import 'imports.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30.0),
              Card(
                color: cardColor,
                child: ListTile(
                  leading: Icon(Icons.location_city, color: iconColor),
                  title: Text(
                    'City Name',
                    style: TextStyle(color: textColor, fontSize: 20.0),
                  ),
                  subtitle: Text(
                    'Country',
                    style: TextStyle(color: textColor, fontSize: 16.0),
                  ),
                  trailing: Icon(Icons.wb_sunny, color: iconColor, size: 50.0),
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
