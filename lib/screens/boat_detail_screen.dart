import 'package:flutter/material.dart';
import '../models/boat.dart';
import 'passenger_detail_screen.dart';

class BoatDetailScreen extends StatelessWidget {
  final Boat boat;

  BoatDetailScreen({required this.boat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(boat.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(boat.imageUrl, fit: BoxFit.cover, width: double.infinity, height: 250),
              SizedBox(height: 16),
              Text(
                boat.description,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Amenities:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              // Add amenities list here
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => PassengerDetailScreen(boat: boat),
                    ),
                  );
                },
                child: Text('Go to passenger details'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
