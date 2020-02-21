import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:hello_flutter/model/church_model.dart';

Future<String> _loadAChurchesAsset() async {
  return await rootBundle.loadString('assets/datasource.json');
}

Future<ChurchesList> loadChurches() async {
  String jsonChurches = await _loadAChurchesAsset();
  final jsonResponse = json.decode(jsonChurches);
  ChurchesList churchesList = ChurchesList.fromJson(jsonResponse);
  print("name " + churchesList.churches[0].name);
  return churchesList;
}
