import 'package:assignment_flutter/screens/home/components/part_seven/part_seven_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class PartSeven extends StatelessWidget {
  PartSeven({super.key});
  final List feedbacks = [
    {
      'comment':
          '" وﺟﺪت ﻓﻲ ﺻﻜﻮك اﻟﻤﺮوﻧﺔ اﻟﻠﺎزﻣﺔ ﻟﺘﻔﻬﻢ اﺣﺘﻴﺎﺟﺎت اﻟﻌﻤﻠﺎء ﻋﻦ ﻃﺮﻳﻖ ﻓﺮﻳﻖ ﻋﻤﻞ ﻣﺎﻫﺮ وﺣﻠﻮل ﺗﻤﻮﻳﻠﻴﺔ ﻣﺒﺘﻜﺮة ﻟﺘﻠﺒﻲ اﻟﺎﺣﺘﻴﺎج ﻓﻲ أﺳﺮع ﻣﺪة ﻣﻤﻜﻨﺔ "',
      'name': '-اﺣﻤﺪ ﺳﻤﺮه، اﻟﻤﺪﻳﺮ اﻟﻤﺎﻟﻲ ﻟﺸﺮﻛﺔ اﻟﺘﻌﻤﻴﺮ اﻟﻤﺘﻘﺪﻣﺔ'
    },
    {
      'comment':
          '"اﻟﺘﻤﻮﻳﻞ اﻟﻨﺎﺟﺢ ﻳﻔﻲ ﺑﺎﺣﺘﻴﺎﺟﻚ ﻣﻦ اﻟﻤﺎل ﺑﺎﻟﻘﺪر واﻟﻮﻗﺖ واﻟﻄﺮﻳﻘﺔ اﻟﻤﻨﺎﺳﺒﺔ، وﺑﻬﺬا ﺗﺘﻤﻴﺰ ﺻﻜﻮك"',
      'name': '- ﻓﻴﺼﻞ اﻟﻌﺎﻣﺮ، اﻟﻤﺎﻟﻚ ﻟﺴﻠﺴﺔ ﻣﻄﺎﻋﻢ ﺳﻨﺠﺎر '
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey.withOpacity(0.2),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/intersect.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: size.height * 0.34,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            height: size.height * 0.34,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return PartSevenCard(
                  comment: feedbacks[index]['comment'],
                  name: feedbacks[index]['name'],
                );
              },
              itemCount: feedbacks.length,
              pagination: SwiperPagination(
                margin: const EdgeInsets.all(30),
                alignment: Alignment.bottomCenter,
                builder: DotSwiperPaginationBuilder(
                    space: 5,
                    size: 8,
                    activeSize: 8,
                    color: Colors.grey.withOpacity(0.5),
                    activeColor: Colors.amber),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
