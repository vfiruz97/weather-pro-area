import 'package:flutter/material.dart';

class WeatherError extends StatelessWidget {
  const WeatherError({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather')),
      body: Center(
        child: Text(
          errorMessage,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
