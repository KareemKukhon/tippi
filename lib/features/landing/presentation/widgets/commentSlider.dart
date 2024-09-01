import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tibbi/features/landing/presentation/widgets/OpinionCard.dart';

class CommentSlider extends StatelessWidget {
  List<OpinionCard> cardList = [];
  final CarouselController _controller = CarouselController();
  void Function(int index, CarouselPageChangedReason reason) onPageChange;
  CommentSlider({
    Key? key,
    required this.cardList,
    required this.onPageChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: _controller,
        options: CarouselOptions(
          enableInfiniteScroll: false,
          height: 200.0.h,
          onPageChanged: onPageChange,
        ),
        items: cardList);
  }
}
