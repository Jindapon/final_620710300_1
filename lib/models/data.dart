class Data {
  final String city;
  final double temperature;
  final double humidity;
  final double windSpeed;
  final String imageUrl;

  Data({
    required this.city,
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.imageUrl
  } );
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      city: json['city'],
      temperature: json['temperature'],
      humidity: json['humidity'],
      windSpeed: json['windSpeed'],
      imageUrl: json['imageUrl'],
    );

  }
}
