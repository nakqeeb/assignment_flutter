import 'package:assignment_flutter/screens/home/components/part_six/part_six_card.dart';
import 'package:flutter/material.dart';

class PartSix extends StatelessWidget {
  const PartSix({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.52,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/mobile-gray-bg.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(12, 4, 12, 2),
              margin: const EdgeInsets.only(bottom: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.amber, width: 0.3),
              ),
              child: const Text(
                'ﻟﻤﺎذا ﺻﻜﻮك',
                style:
                    TextStyle(fontFamily: 'Tajawal-Light', color: Colors.amber),
              ),
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'اﺳﺘﻨــﺪ ﻋﻠﻰ \nﺷــــــــﺮﻳﻚ '),
                  TextSpan(
                      text: 'ﻳﻔﻬﻤــﻚ', style: TextStyle(color: Colors.amber)),
                ],
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Tajawal-Bold',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.04,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text(
                  'لمعرفة المزيد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (4.5 / 2),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                controller: ScrollController(keepScrollOffset: false),
                children: const <Widget>[
                  PartSixCard(
                    title: 'ﺗﻤﻮﻳﻞ ﻃﻮﻳﻞ اﻟﺄﺟﻞ',
                    subTitle: 'ﺑﻤﺪة ﺗﺼﻞ إﻟﻰ ',
                    label: '10 ﺳﻨﻮات',
                  ),
                  PartSixCard(
                      title: 'ﺗﻤﻮﻳﻞ ﻟﻤﺸﺮوﻋﻚ', label: 'ﻳﺼﻞ إﻟﻰ 30 ﻣﻠﻴﻮن رﻳﺎل'),
                  PartSixCard(
                      title: 'ﺟﺪول ﺳﺪاد ﻣﺮن', label: 'ﻳﻨﺎﺳﺐ ﺗﺪﻓﻘﻚ اﻟﻨﻘﺪي'),
                  PartSixCard(title: 'ﺳﺪاد ﻣﺒﻜﺮ', label: 'ﺑﺪون رﺳﻮم إﺿﺎﻓﻴﺔ')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
