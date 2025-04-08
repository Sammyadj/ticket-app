List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NYC", 'name': "New-York"},
    'to': {'code': "LDN", 'name': "London"},
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 23,
  },
  {
    'from': {'code': "DK", 'name': "Dhaka"},
    'to': {'code': "SH", 'name': "Shanghai"},
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45,
  },
  {
    'from': {'code': "SFO", 'name': "San Francisco"},
    'to': {'code': "DXB", 'name': "Dubai"},
    'flying_time': '15H 45M',
    'date': "3 MAY",
    'departure_time': "10:15 PM",
    "number": 45,
  },
  {
    'from': {'code': "BOM", 'name': "Mumbai"},
    'to': {'code': "SYD", 'name': "Sydney"},
    'flying_time': '12H 10M',
    'date': "5 MAY",
    'departure_time': "06:30 AM",
    "number": 67,
  },
  {
    'from': {'code': "PAR", 'name': "Paris"},
    'to': {'code': "ROM", 'name': "Rome"},
    'flying_time': '2H 5M',
    'date': "7 MAY",
    'departure_time': "02:45 PM",
    "number": 89,
  },
];

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25,
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40,
  },
  {
    'image': 'pool_view.png',
    'place': 'Best pool in the city',
    'destination': 'Dubai',
    'price': 68,
  },
];

class AppRoutes {
  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";
}
