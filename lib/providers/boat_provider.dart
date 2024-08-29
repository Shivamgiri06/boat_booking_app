import 'package:flutter/material.dart';
import '../models/boat.dart';

class BoatProvider with ChangeNotifier {
  List<Boat> _boats = [
    Boat(
      name: "Assam Travel Service",
      imageUrl: "assets/images/boat1.jpg",
      price: 1500,
      availableSeats: 40,
      time: "7:10 AM",
    ),
    Boat(
      name: "Assam Travel Service",
      imageUrl: "assets/images/boat2.jpg",
      price: 1500,
      availableSeats: 40,
      time: "7:10 AM",
    ),
    Boat(
      name: "Assam Travel Service",
      imageUrl: "assets/images/boat3.jpg",
      price: 1500,
      availableSeats: 40,
      time: "7:10 AM",
    ),
  ];

  Boat? _selectedBoat;

  List<Boat> get boats => _boats;

  Boat? get selectedBoat => _selectedBoat;

  void selectBoat(Boat boat) {
    _selectedBoat = boat;
    notifyListeners();
  }

  void updateBoatSeats(Boat boat, int seatsBooked) {
    int index = _boats.indexOf(boat);
    if (index != -1) {
      _boats[index].availableSeats -= seatsBooked;
      notifyListeners();
    }
  }

  Future<void> fetchBoats() async {
    await Future.delayed(const Duration(seconds: 2));
    // Fetch the boats and assign them to the _boats list
    // _boats = fetchedBoats;
    notifyListeners();
  }
}
