import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:technews/components/searchbar.dart';
import 'package:technews/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=technology&pageSize=100&apiKey=' + Key.key + '&q=' + searchbar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}
