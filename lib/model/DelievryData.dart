class DeliveryData {
  String startTime;
  String finishTime;
  String plannedStartTime;
  String deliveryNumber;
  String stopAddress; // Stop address for the entire delivery
  List<Stop> stops; // List of stops

  DeliveryData({
    required this.startTime,
    required this.finishTime,
    required this.plannedStartTime,
    required this.deliveryNumber,
    required this.stopAddress,
    required this.stops,
  });
}

class Stop {
  int number;
  String name; // Stop name
  String address; // Stop address
  int stopIndex;
  String stopStartTime;
  String stopEndTime;
  int unloadingTime;

  Stop({
    required this.number,
    required this.name,
    required this.address,
    required this.stopIndex,
    required this.stopStartTime,
    required this.stopEndTime,
    required this.unloadingTime,
  });
}
