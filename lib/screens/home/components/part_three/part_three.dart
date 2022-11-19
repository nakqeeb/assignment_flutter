import 'package:flutter/material.dart';

import 'part_three_swiper.dart';

class PartThree extends StatelessWidget {
  const PartThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 25),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            const Text(
              'اﻟﻔﺮص اﻟﺎﺳﺘﺜﻤﺎرﻳﺔ',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.7,
                fontFamily: 'Tajawal-Bold',
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'أﺣﺪث اﻟﻔﺮص اﻟﺘﻲ ﺗﻢ اﻃﻠﺎﻗﻬﺎ ﻓﻲ اﻟﻤﻨﺼﺔ',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            PartThreeSwiper(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
