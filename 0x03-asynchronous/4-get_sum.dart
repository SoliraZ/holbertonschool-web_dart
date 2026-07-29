import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = json.decode(userData);
    String id = user['id'];

    String ordersData = await fetchUserOrders(id);
    List<dynamic> orders = json.decode(ordersData);

    double total = 0;
    for (var product in orders) {
      String priceData = await fetchProductPrice(product);
      total += json.decode(priceData);
    }
    return total;
  } catch (error) {
    return -1.0;
  }
}
