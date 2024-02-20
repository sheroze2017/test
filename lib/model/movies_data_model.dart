class Movie {
  bool adult;
  String backdropPath;
  int id;
  String title;
  String originalLanguage;
  String originalTitle;
  String overview;
  String posterPath;
  String mediaType;
  List<int> genreIds;
  double popularity;
  String releaseDate;
  bool video;
  double voteAverage;
  int voteCount;
  List<String> originCountry;
  String firstAirDate;

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.title,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.mediaType,
    required this.genreIds,
    required this.popularity,
    required this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.originCountry,
    required this.firstAirDate,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        id: json['id'],
        title: json['title'] ?? json['name'],
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'] ?? json['original_name'],
        overview: json['overview'],
        posterPath: json['poster_path'],
        mediaType: json['media_type'],
        genreIds:
            json['genre_ids'] != null ? List<int>.from(json['genre_ids']) : [],
        popularity: json['popularity']?.toDouble() ?? 0.0,
        releaseDate: json['release_date'] ?? json['first_air_date'] ?? '',
        video: json['video'] ?? false,
        voteAverage: json['vote_average']?.toDouble() ?? 0.0,
        voteCount: json['vote_count'] ?? 0,
        originCountry: json['origin_country'] != null
            ? List<String>.from(json['origin_country'])
            : [],
        firstAirDate: json['first_air_date'] != null
            ? DateTime.parse(json['first_air_date']).toString()
            : '');
  }
}
