import 'package:flutter/material.dart';
import '../models/boat.dart';
import 'passenger_detail_screen.dart';

class BoatInfoScreen extends StatelessWidget {
  final Boat boat;

  const BoatInfoScreen({super.key, required this.boat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boat Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(boat.imageUrl),
            const SizedBox(height: 10),
            Text(
              boat.name,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "₹${boat.price}/Adult",
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            const Text(
              "Amenities:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Text("• Clean Restrooms"),
            const Text("• Comfortable Sitting Arrangements"),
            const Text("• Onboarding Dining"),
            const SizedBox(height: 20),
            const Text(
              "Safety Features:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Text("• Live jackets provided to all passengers."),
            const Text("• Emergency medical kit onboard."),
            const SizedBox(height: 20),
            const Text(
              "Special Notes:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Text("• Please arrive 30 minutes before departure."),
            const Text("• Carry a valid ID for verification."),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PassengerDetailScreen(boat: boat)),
                );
              },
              child: const Center(child: Text('Go to Passenger Details')),
            ),
          ],
        ),
      ),
    );
  }
}
