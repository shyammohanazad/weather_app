import 'imports.dart';

class HourlyWeatherCard extends StatefulWidget {
  final String hour;
  final String temperature;
  final IconData weatherIcon;
  const HourlyWeatherCard({
    super.key,
    required this.hour,
    required this.temperature,
    required this.weatherIcon,
  });

  @override
  State<HourlyWeatherCard> createState() => _HourlyWeatherCardState();
}

class _HourlyWeatherCardState extends State<HourlyWeatherCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 60.0,
      child: Card(
        elevation: 5,
        shadowColor: shadowColor,
        color: cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${widget.hour} : 00', style: TextStyle(color: textColor)),
            Icon(widget.weatherIcon, color: iconColor),
            Text(
              '${widget.temperature}\u2103',
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
