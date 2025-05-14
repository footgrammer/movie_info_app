class Movie {
  String title; // 영화 제목
  String moviePoster; // 영화 포스터
  DateTime releasedDate; // 개봉일
  num runningTime; // 러닝타임
  String shortExplanation; // 짧은 설명
  String explanation; // 영화설명
  List<String> categories; // 카테고리들
  num movieRating; // 평점
  num votedNumbers; // 평점투표수
  num popularity; // 인기점수
  num budget; //예산
  num income; // 수익
  String productionImage; // 제작사 이미지

  Movie({
    required this.title,
    required this.moviePoster,
    required this.releasedDate,
    required this.runningTime,
    required this.shortExplanation,
    required this.explanation,
    required this.categories,
    required this.movieRating,
    required this.votedNumbers,
    required this.popularity,
    required this.budget,
    required this.income,
    required this.productionImage,
  });
}
