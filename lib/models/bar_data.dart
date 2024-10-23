class BarData {
  final String country;
  final double percentage;

  BarData({required this.country, required this.percentage});
}

List<BarData> dummyData = [
  BarData(country: 'USA', percentage: 0.9),
  BarData(country: 'Canada', percentage: 0.6),
  BarData(country: 'UK', percentage: 0.45),
  BarData(country: 'Austraila', percentage: 0.3),
];
