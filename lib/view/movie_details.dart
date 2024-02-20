import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:testing/constant/colors.dart';
import 'package:testing/model/movies_data_model.dart';

class MovieDetailPage extends StatelessWidget {
  Movie movie;
  MovieDetailPage({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset(
              'assets/images/bgkong.jpg',
              width: double.infinity,
              height: 100.h,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 150,
              bottom: 0,
              left: 30,
              right: 0,
              child: Icon(
                size: 12,
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 320,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black.withOpacity(0.8),
                padding: EdgeInsets.all(16),
              ),
            ),
            Positioned(
              top: 270,
              left: 10,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/kong.jpg',
                        width: 33.w,
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60.w,
                              child: Text(
                                movie.title,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: subLightColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    movie.adult ? '+18' : '+12',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: RatingBar.builder(
                                itemSize: 15,
                                glowColor: Colors.white,
                                initialRating: 5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                '${movie.releaseDate.split('-')[2]} - Adventure',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: subLightColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                '2 hr 09 min',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: subLightColor,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            'Directed by Stephen Hawking',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: subLightColor,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            'The Cast',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: subLightColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: 80.w,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://gobookmart.com/wp-content/uploads/2022/07/10-9-1.webp"),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://gobookmart.com/wp-content/uploads/2022/07/10-9-1.webp"),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://gobookmart.com/wp-content/uploads/2022/07/10-9-1.webp"),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://gobookmart.com/wp-content/uploads/2022/07/10-9-1.webp"),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://gobookmart.com/wp-content/uploads/2022/07/10-9-1.webp"),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://gobookmart.com/wp-content/uploads/2022/07/10-9-1.webp"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                          child: Text(
                            'Storyline',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: subLightColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          width: 90.w,
                          child: Text(
                            movie.overview,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: subLightColor,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
