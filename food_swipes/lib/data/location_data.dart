class LocationData {
  final String imageURL;
  final String name;
  final String distance;
  final String category;
  final String reviewScore;
  final String town;
  final String state;

  LocationData(
      {required this.imageURL,
      required this.name,
      required this.distance,
      required this.category,
      required this.reviewScore,
      required this.town,
      required this.state});
}
