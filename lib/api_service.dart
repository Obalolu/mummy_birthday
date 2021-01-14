import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'message_model.dart';

String url = "https://api.sheety.co/b482c821d106f1406292bda79e48b1d8/adedapo/formResponses1";

class APIService {
  Future<MessageResponse> getAllMessages() async {
    final response = await http.get('$url?limit=1000');
    print(response.body);
    return MessageResponse.fromJson(json.decode(response.body));
  }


}
