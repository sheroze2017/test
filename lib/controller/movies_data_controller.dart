import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:testing/model/movies_data_model.dart';

class MovieDataController extends GetxController {
  RxList<dynamic> dataList = <dynamic>[].obs;
  var movies = <Movie>[].obs;

  Future<void> fetchMovies() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/trending/all/day?api_key=39cf98d7db1ad3069227393fa6315d10'));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body)['results'];
      movies
          .assignAll(responseData.map((json) => Movie.fromJson(json)).toList());
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  void onInit() {
    fetchMovies();
    super.onInit();
  }
}
