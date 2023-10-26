import 'package:final_620710300/models/city.dart'; // แน่ใจว่า import ถูกต้อง
import 'package:final_620710300/models/data.dart'; // แน่ใจว่า import ถูกต้อง
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<HomePage> {
  final String cityName = "Nakhon Pathom"; // ให้เริ่มต้นเป็น New York
  final String countryName = "Thailand"; // ให้เริ่มต้นเป็น USA

  // สร้างตัวแปรเพื่อเก็บข้อมูลสภาพอากาศ
  final String lastUpdated = "2023-10-26 10:00"; // ให้เริ่มต้นเป็นค่าใด ๆ
  final String weatherCondition = "Sunny"; // ให้เริ่มต้นเป็นค่าใด ๆ
  final String weatherIconUrl = "https://cdn.weatherapi.com/weather/128x128/day/113.png"; // URL สำหรับไอคอนสภาพอากาศ


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(cityName), // แสดงชื่อเมือง
               // แสดงชื่อประเทศ
            ),
          ),
      SliverToBoxAdapter(
        child: WeatherInfo(
          cityName: cityName,
          countryName: countryName,
          lastUpdated: lastUpdated,
          weatherCondition: weatherCondition,
          weatherIconUrl: weatherIconUrl,
        ),
      ),
        ],
      ),
    );
  }
}
class WeatherInfo extends StatelessWidget {
  final String cityName;
  final String countryName;
  final String lastUpdated;
  final String weatherCondition;
  final String weatherIconUrl;

  WeatherInfo({
    required this.cityName,
    required this.countryName,
    required this.lastUpdated,
    required this.weatherCondition,
    required this.weatherIconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$cityName', style: const TextStyle(fontSize: 20)),
            Text('$countryName', style: const TextStyle(fontSize: 20)),
          ],
        ),
        Text('$lastUpdated'),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(weatherIconUrl),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Status: ', style: TextStyle(fontSize: 18)),
            Text('Sunny', style: TextStyle(fontSize: 18)), // Replace 'Sunny' with your actual status data
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Temperature: ', style: TextStyle(fontSize: 18)),
            Text('19°C', style: TextStyle(fontSize: 18)), // Replace '19°C' with your actual temperature data
          ],
        ),
      ],
    );
  }
}