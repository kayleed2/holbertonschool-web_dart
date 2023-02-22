import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}

main() async {
  print(await calculateTotal());
}

Future<double> calculateTotal() async {
  try {
		dynamic user = jsonDecode(await fetchUserData());
		List userItems = jsonDecode(await fetchUserOrders(user['id']));
		double orderTotal = 0.0;
		for (String item in userItems) {
			orderTotal += jsonDecode(await fetchProductPrice(item));
		}
		return orderTotal;
	} catch (error) {
		return -1;
	}
}
