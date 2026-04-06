void main() {
  Map cityCountry = {"Nepal": "Kathmandu", "Japan": "Tokyo", "China": "China"};
  // print(cityCountry);

  Map cityCounty = Map<String, String>();
  cityCounty['Dhaka'] = 'Bangladesh';
  cityCounty['Ottawa'] = 'Canada';
  cityCounty['Mexico City'] = 'Mexico';

  // print(cityCounty);
  print(cityCounty.keys);
  print(cityCounty.values);
  String searchValue = "Ottawa";

  print("$searchValue is in ${cityCounty[searchValue]}");
}