import 'package:flutter/cupertino.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('Movies Provider Inicializado');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() {
    print('getOnDisplayMovies');
  }
}
