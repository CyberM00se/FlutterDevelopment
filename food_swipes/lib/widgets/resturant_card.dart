import 'package:flutter/material.dart';
import 'package:food_swipes/data/location_data.dart';

class ResturantCard extends StatefulWidget {
  final LocationData locationData;

  const ResturantCard({super.key, required this.locationData});

  @override
  State<ResturantCard> createState() => _ResturantCardState();
}

class _ResturantCardState extends State<ResturantCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: (NetworkImage(widget.locationData.imageURL)),
            fit: BoxFit.cover,
            alignment: const Alignment(-0.3, 0),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Spacer(),
              buildInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfo() => Row(
        children: [
          Text(
            widget.locationData.name,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Text(
            '22',
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
            ),
          )
        ],
      );
}
