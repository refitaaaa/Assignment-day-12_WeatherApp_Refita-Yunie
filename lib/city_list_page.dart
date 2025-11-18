import 'package:flutter/material.dart';
import 'detail_page.dart';

class CityListPage extends StatelessWidget {
  final List<Map<String, dynamic>> cities = [
    {'name': 'Jakarta', 'temp': '32°C', 'weather': 'Cerah Berawan'},
    {'name': 'Bandung', 'temp': '28°C', 'weather': 'Berawan'},
    {'name': 'Surabaya', 'temp': '33°C', 'weather': 'Cerah'},
    {'name': 'Yogyakarta', 'temp': '30°C', 'weather': 'Hujan Ringan'},
    {'name': 'Bali', 'temp': '31°C', 'weather': 'Cerah'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Kota'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.location_city,
                color: Colors.blue,
                size: 40,
              ),
              title: Text(
                cities[index]['name'],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(cities[index]['weather']),
              trailing: Text(
                cities[index]['temp'],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      cityName: cities[index]['name'],
                      temperature: cities[index]['temp'],
                      weather: cities[index]['weather'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}