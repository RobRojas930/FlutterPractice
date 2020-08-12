import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practicas/src/models/movies.model.dart';

class MoviesProvider {
  String _apiKey = '332ac8612a33d83d3e2cc2a1080ba017';
  String _url = 'api.themoviedb.org';
  String _language = 'es-Es';

  Future<List<Movie>> getMovie({String type = 'now_playing'}) async {
    final url = Uri.https(this._url, '3/movie/' + type,
        {'api_key': this._apiKey, 'language': this._language});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final movies = new Movies.fromJsonList(decodedData['results']);
    print(decodedData['results'].toString());
    return movies.items;
  }
}
