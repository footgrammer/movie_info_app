import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(20.0),
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
              SizedBox(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 9 / 16,
                  child: Image.asset(
                    'assets/images/poster1.png',
                    fit: BoxFit.cover,
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
