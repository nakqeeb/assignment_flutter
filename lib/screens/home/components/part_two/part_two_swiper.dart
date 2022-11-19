import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'part_two_card.dart';

class PartTwoSwiper extends StatelessWidget {
  PartTwoSwiper({super.key});
  final List infoList = [
    {
      'total': '659,300,039+',
      'title': 'إجمالي البرامج التمويلية',
      'subTitle': 'منذ 2021'
    },
    {
      'total': '100%',
      'title': 'نسبة تغطية الإصدارات السابقة',
      'subTitle': 'تجاوزت 98 إصدار'
    },
    {
      'total': '88%',
      'title': 'من التمويلات للشركات الصغيرة والمتوسطة',
      'subTitle': 'لتمكينها من التوسع والانتشار'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.24,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(25),
            child: PartTwoCard(
              total: infoList[index]['total'],
              title: infoList[index]['title'],
              subTitle: infoList[index]['subTitle'],
            ),
          );
        },
        itemCount: infoList.length,
        pagination: SwiperPagination(
          margin: EdgeInsets.zero,
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
              size: 7,
              activeSize: 7,
              color: Colors.grey.withOpacity(0.5),
              activeColor: Colors.amber),
        ),
        // control: const SwiperControl(color: Colors.amber),
      ),
    );
  }
}
