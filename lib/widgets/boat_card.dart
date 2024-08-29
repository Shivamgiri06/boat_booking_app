import 'package:flutter/material.dart';
import '../models/boat.dart';

class BoatCard extends StatelessWidget {
  final Boat boat;
  final VoidCallback onTap;

  const BoatCard({super.key, required this.boat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              boat.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                boat.name,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("₹${boat.price}/Adult"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.event_seat),
                  Text("${boat.availableSeats} seats"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
