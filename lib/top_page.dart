import 'package:api_practice/weather.dart';
import 'package:api_practice/zip_code.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopPage extends StatefulWidget {
  @override
  State<TopPage> createState() {
    return _TopPageState();
  }
}

class _TopPageState extends State<TopPage> {
  String address = '-';
  String? errorMessage = null;
  Weather? currentWeather;

  List<Weather> hourlyWeather = [
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '晴れ',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 10),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: 'くもり',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 11),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雨',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 12),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '晴れ',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 10),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: 'くもり',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 11),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雨',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 12),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '晴れ',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 10),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: 'くもり',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 11),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雨',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 12),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 13),
        rainyPercent: 30),
  ];

  List<Weather> dailyWeather = [
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 1, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 2, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 3, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 4, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 5, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 6, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 7, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 8, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 9, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 10, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 11, 13),
        rainyPercent: 30),
    Weather(
        temp: 20,
        tempMax: 25,
        tempMin: 15,
        description: '雪',
        lon: 25,
        lat: 30,
        icon: 'hogehoge',
        time: DateTime(2023, 10, 12, 13),
        rainyPercent: 30),
  ];

  List<String> weekDay = ['月', '火', '水', '木', '金', '土', '日'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 200,
              child: TextField(
                onSubmitted: (value) async {
                  Map<String, String> response = {};
                  response = await ZipCode.SearchAddressFromZipCode(value);
                  errorMessage = response['message'].toString();
                  if (response.containsKey('address')) {
                    address = response['address'].toString();
                    errorMessage = null;
                    currentWeather = await Weather.getCurrentWeather(value);
                  }
                  setState(() {});
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: '郵便番号を入力'),
              ),
            ),
            errorMessage == null
                ? Text(' ')
                : Text('${errorMessage}', style: TextStyle(color: Colors.red)),
            SizedBox(
              height: 50,
            ),
            Text(
              '${address}',
              style: TextStyle(fontSize: 25),
            ),
            Text(currentWeather == null ? '-' : currentWeather!.description!),
            Text(
              currentWeather == null ? '-' : '${currentWeather!.temp}℃',
              style: TextStyle(fontSize: 80),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(currentWeather == null
                      ? '最高:-'
                      : '最高:${currentWeather!.tempMax}℃'),
                ),
                Text(currentWeather == null
                    ? '最低:-'
                    : '最低:${currentWeather!.tempMin}℃'),
              ],
            ),
            SizedBox(height: 50),
            Divider(
              height: 0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hourlyWeather.map((weather) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8.0),
                    child: Column(
                      children: [
                        Text('${DateFormat('H').format(weather.time!)}時'),
                        Text(
                          '${weather.rainyPercent}%',
                          style: TextStyle(color: Colors.lightBlueAccent),
                        ),
                        Icon(Icons.wb_sunny_sharp),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '${weather.temp}℃',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Divider(
              height: 0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: dailyWeather.map((weather) {
                      return Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 100,
                                child: Text(
                                    '${weekDay[weather.time!.weekday - 1]}曜日')),
                            Row(
                              children: [
                                Icon(Icons.wb_sunny_sharp),
                                Text(
                                  '${weather.rainyPercent}%',
                                  style:
                                      TextStyle(color: Colors.lightBlueAccent),
                                ),
                              ],
                            ),
                            Container(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${weather.tempMax}℃',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    '${weather.tempMin}℃',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
