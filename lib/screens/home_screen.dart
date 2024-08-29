import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/boat_provider.dart';
import '../widgets/boat_card.dart';
import 'boat_info_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final boatProvider = Provider.of<BoatProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Boarding Point"),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Modify",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: boatProvider.boats.length,
        itemBuilder: (context, index) {
          final boat = boatProvider.boats[index];
          return BoatCard(
            boat: boat,
            onTap: () {
              boatProvider.selectBoat(boat);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BoatInfoScreen(boat: boat),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
