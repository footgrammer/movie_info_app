import 'package:flutter/material.dart';
import 'package:movie_info_app/models/movie.dart';

class DetailPage extends StatefulWidget {
  Movie movie;
  DetailPage({super.key, required this.movie});
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.movie.moviePoster, width: double.infinity),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.movie.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      widget.movie.shortExplanation,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      '${widget.movie.runningTime}분',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Divider(thickness: 0.5),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.movie.categories.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Text(
                              widget.movie.categories[index],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueAccent,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        widget.movie.explanation,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        '흥행정보',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  widget.movie.movieRating.toString(),
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  '평점',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  widget.movie.votedNumbers.toString(),
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  '평점투표수',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  widget.movie.popularity.toString(),
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  '인기점수',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '${widget.movie.budget.toString()}원',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  '예산',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '${widget.movie.income.toString()}원',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  '수익',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            child: Image.asset(
                              widget.movie.productionImage,
                              height: 70,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
