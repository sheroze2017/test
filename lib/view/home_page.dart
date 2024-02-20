import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:testing/view/movie_details.dart';

import '../constant/colors.dart';
import '../controller/movies_data_controller.dart';

class MoviePosterDetails extends StatelessWidget {
  final MovieDataController movieDataController =
      Get.put(MovieDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.white,
          currentIndex: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.audiotrack), label: 'A'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.navigation), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'home')
          ]),
      appBar: AppBar(
        backgroundColor: bgColor,
        toolbarHeight: kToolbarHeight + 1,
        centerTitle: true,
        title: Text(
          'Watch',
          style: TextStyle(color: textColor),
        ),
        leading: Icon(
          Icons.menu,
          color: textColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderImage(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Text(
              'Watch Movies',
              style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
            ),
          ),
          Obx(() {
            var movies = Get.find<MovieDataController>()
                .movies; // Access the movies list from your controller

            return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movieDataController.movies.length,
                    itemBuilder: (context, index) {
                      var movie = movieDataController.movies[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: InkWell(
                          onTap: () => Get.to(MovieDetailPage(movie: movie)),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/marvel_images.jpeg',
                                  width: 30.w,
                                  height: 22.h,
                                ),
                                Container(
                                  width: 30.w,
                                  child: Text(
                                    movie.originalTitle,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: subLightColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.sp),
                                  ),
                                ),
                                Text(
                                  'Adventure | Crime',
                                  style: TextStyle(
                                      color: subLightColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.sp),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            );
          })
        ],
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/marvel_images.jpeg',
      height: 50.h,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
