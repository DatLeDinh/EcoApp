import '../models/cartlist.dart';
import 'package:http/http.dart' as http;

class Remote {
  Future<List<Cartlist>> getCartlists() async {
    var client = http.Client();
    var uri = Uri.parse('https://624d0ee0d71863d7a8131094.mockapi.io/CartList');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      // return postFromJson(json);
      return cartlistFromJson(json);
    }
  }
}
