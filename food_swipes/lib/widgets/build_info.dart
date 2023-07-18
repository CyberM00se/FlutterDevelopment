import 'package:flutter/material.dart';
import 'package:food_swipes/data/location_data.dart';

class buildInfo extends StatelessWidget {
  final LocationData locationData;

  const buildInfo({super.key, required this.locationData});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Text(
          locationData.name,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 16),
        Text('${}',
        style: TextStyle(
          fontSize: 32,
          color: Colors.black,
        ),)
      ],
    );
  }
}
