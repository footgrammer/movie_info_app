import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/pages/detail/detail_page.dart';

final List<String> posters = [
  'assets/images/poster1.png',
  'assets/images/poster2.png',
  'assets/images/poster3.png',
  'assets/images/poster4.png',
  'assets/images/poster5.png',
  'assets/images/poster6.png',
  'assets/images/poster7.png',
  'assets/images/poster8.png',
];

final dummyMovie = Movie(
  title: 'The Last Horizon',
  moviePoster: 'assets/images/poster1.png',
  releasedDate: DateTime(2023, 11, 3),
  runningTime: 138, // 분 단위
  shortExplanation: '지구 멸망을 막는 영화',
  explanation: '지구 멸망을 막기 위해 우주로 떠난 한 과학자의 고독한 여정을 그린 SF 드라마.',
  categories: ['SF', '드라마', '모험'],
  movieRating: 8.7, // 10점 만점
  votedNumbers: 15234,
  popularity: 9214,
  budget: 150000000, // 예: $150,000,000
  income: 487000000, // 예: $487,000,000
  productionImage: 'assets/images/marvel_studio_logo.png',
);

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).viewPadding.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '가장 인기 있는 영화',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(movie: dummyMovie),
                    ),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: Image.asset(
                      'assets/images/poster1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '현재 상영 중',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posters.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset(posters[index], fit: BoxFit.cover),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '인기순',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posters.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 8),
                          child: Image.asset(posters[index], fit: BoxFit.cover),
                        ),
                        Positioned(
                          left: 4,
                          bottom: 4,
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                    // return Container(
                    //   padding: EdgeInsets.only(right: 12),
                    //   child: Image.asset(posters[index], fit: BoxFit.cover),
                    // );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '평점 높은 순',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posters.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset(posters[index], fit: BoxFit.cover),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '개봉 예정',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posters.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset(posters[index], fit: BoxFit.cover),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
