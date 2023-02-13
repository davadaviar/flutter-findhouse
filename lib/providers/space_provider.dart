import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_findhouse/models/space.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  Future getRecommendedSpace() async {
    Uri url = Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces');
    var response = await http.get(url);

    print(response.statusCode);
    print(response.body);

    if(response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
