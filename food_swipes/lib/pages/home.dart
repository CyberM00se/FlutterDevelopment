import 'package:flutter/material.dart';
import 'package:food_swipes/widgets/resturant_card.dart';
import 'package:food_swipes/data/location_data.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final testlocationInfo = LocationData(
      imageURL:
          'https://lh3.googleusercontent.com/p/AF1QipOU31HWemkcvkpmbt0ZR_dpu1-5KcdGqZdcWS3K=s1360-w1360-h1020',
      name: 'Firewater Tavern',
      distance: '5 Miles',
      category: 'mixed',
      reviewScore: '4.0',
      town: 'tewksbury',
      state: 'MA');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Food Swipes',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.grid_view),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: ResturantCard(locationData: testlocationInfo),
        ),
      ),
    );
  }
}
