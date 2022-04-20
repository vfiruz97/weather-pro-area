import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/features/weather/domain/i_weather_repository.dart';
import 'package:weather/modules/injection/injection.dart';

void main() async {
  await configureInjection(Environment.dev);

  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: getIt<IWeatherRepository>().get(lat: 50.4333, lon: 30.5167),
            builder: (context, snapshot) {
              return Text(snapshot.data?.toString() ?? '');
            },
          ),
        ),
      ),
    );
  }
}
