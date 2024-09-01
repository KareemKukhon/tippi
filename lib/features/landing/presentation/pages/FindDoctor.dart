import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/features/landing/presentation/blocs/UiProvider.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';
import 'package:tibbi/features/landing/presentation/widgets/OpinionCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/commentSlider.dart';

class FindDoctor extends StatelessWidget {
  FindDoctor({super.key});
  List<OpinionCard> cardList = [
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
  ];
  // final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: Consumer<UiProvider>(builder: (context, provider, child) {
        return ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Column(
                children: [
                  Column(
                    children: [
                      AppBarWidget(scaffoldKey: _scaffoldKey),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Find a Doctor",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.primary)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: AppColors.primary)),
                                hintText: "Search for a doctor",
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomButton(onPressed: () {
                            
                          }, text: "Search")
                        ],
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'What our pationts say?',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'At Tibbi, we value the importance of transparency, so we support patients by expressing their opinions about services and service providers.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      CommentSlider(
                          cardList: cardList,
                          onPageChange: (index, reason) {
                            provider.setCurrentPageIndex(index);
                          }),
                      SizedBox(
                        height: 100.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Footer()
          ],
        );
      }),
    );
  }
}
