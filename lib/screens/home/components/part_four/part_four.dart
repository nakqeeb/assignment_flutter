import 'package:flutter/material.dart';

class PartFour extends StatelessWidget {
  const PartFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/mobile-gray-bg.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(12, 4, 12, 2),
              margin: const EdgeInsets.only(bottom: 7),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'ﺻﻜﻮك اﻟﻤﺎﻟﻴﺔ',
                style: TextStyle(
                  fontFamily: 'Tajawal-Light',
                ),
              ),
            ),
            const Text(
              'ﺗﻤﺜﻞ اﻟﺼﻜﻮك أدوات دﻳﻦ ﻟﺘﻤﻜﻴﻦ اﻟﻨﻤﻮ ﻟﺄﻋﻤﺎﻟﻚ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Tajawal-Bold',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: 'ﺑﺪأﻧﺎ ﻓﻲ'),
                  TextSpan(
                    text: ' ﺻﻜﻮك',
                    style: TextStyle(fontFamily: 'Tajawal-Bold'),
                  ),
                  TextSpan(
                      text:
                          ' ﺑﺘﻤﻜﻴﻦ اﻟﻨﻤﻮ ﻓﻲ ﻣﺎﻳﻮ 2021 ﻟﻤﺸﺮوع ﻣﺴﺘﺸﻔﻰ خاص ﻓﻲ مدينة ﺟﺪة ﺑﻤﺒﻠﻎ '),
                  TextSpan(
                    text: '10 ﻣﻠﺎﻳﻴﻦ رﻳﺎل',
                    style: TextStyle(fontFamily: 'Tajawal-Bold'),
                  ),
                  TextSpan(
                      text:
                          '، وﻣﻨﺬ ذﻟﻚ اﻟﺤﻴﻦ و ﺣﺘﻰ اﻟﻴﻮم ﺳﺎﻫﻤﻨﺎ ﺑﺘﻮﺟﻴﻪ أﻛﺜﺮ ﻣﻦ '),
                  TextSpan(
                    text: '917 ﻣﻠﻴﻮن رﻳﺎل',
                    style: TextStyle(fontFamily: 'Tajawal-Bold'),
                  ),
                  TextSpan(text: ' ﻓﻲ '),
                  TextSpan(
                    text: 'اﻟﺘﻨﻤﻴﺔ اﻟﺎﻗﺘﺼﺎدﻳﺔ',
                    style: TextStyle(fontFamily: 'Tajawal-Bold'),
                  ),
                  TextSpan(text: '.'),
                ],
                style:
                    TextStyle(color: Colors.white, height: 1.2, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
