import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/responsive_layout/app_styles.dart';
import 'book_details_mobile_screen.dart';

class BookDetailsTabletScreen extends StatelessWidget {
  const BookDetailsTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        height: 170,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/image_test/1.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "A Spark of Ligh",
                              style: TextStyle(
                                  color: color.onSurface,
                                  fontSize: getResponsiveFontSize(context,
                                      fontSize: 18)),
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "jodi picoult",
                              style: TextStyle(
                                  color: color.onSurface,
                                  fontSize: getResponsiveFontSize(context,
                                      fontSize: 16)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("${"Rating:"}    "),
                              RatingBarIndicator(
                                rating: 2.75,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: color.primary,
                                  size: 10,
                                ),
                                itemCount: 5,
                                itemSize: 20.0,
                                direction: Axis.horizontal,
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${"Genre:"}      ${"Fantasy"}"),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  elevation: WidgetStateProperty.all<double>(0),
                                  shape:
                                      WidgetStateProperty.all<OutlinedBorder>(
                                          RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  )),
                                  backgroundColor:
                                      WidgetStateProperty.all<Color>(
                                          color.primary)),
                              child: Text(
                                "Take it",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.surface),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  randomText,
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
