import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
// ignore: import_of_legacy_library_into_null_safe
import 'package:kost_app/models/space_model.dart';

class SpaceProvider extends ChangeNotifier {
  Future<List<Space>> getRecommendedSpace() async {
    try {
      var result = await http
          .get(Uri.parse('http://bwa-cozy.herokuapp.com/recommended-spaces'));

      if (result.statusCode == 200) {
        List data = jsonDecode(result.body);
        List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
        return spaces;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
