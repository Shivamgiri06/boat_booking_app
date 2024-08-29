class Boat {
  final String name;
  final String imageUrl;
  final double price;
  int availableSeats;
  final String time;

  Boat({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.availableSeats,
    required this.time,
  });

  String get description {
    return '$name - $price per person. $availableSeats seats available.';
  }
}
