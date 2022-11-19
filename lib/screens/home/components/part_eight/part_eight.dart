import 'package:flutter/material.dart';

import 'part_eight_tile.dart';

class PartEight extends StatelessWidget {
  const PartEight({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: const [
        PartEightTile(
          label: 'اﻟﺸﺮﻳﻌﺔ',
          title: 'ﻣﻠﺘﺰﻣﻮن ﺑﺎﻟﺄﺣﻜﺎم اﻟﺸﺮﻋﻴﺔ',
          description:
              'ﻧﻤﺘﺜﻞ ﻓﻲ ﺻﻜﻮك اﻟﻤﺎﻟﻴﺔ ﺑﻘﻮاﻋﺪ وأﺣﻜﺎم اﻟﺸﺮﻳﻌﺔ اﻟﺈﺳﻠﺎﻣﻴﺔ وذﻟﻚ ﻋﻦ ﻃﺮﻳﻖ ﻣﺮاﻗﺒﺔ اﻟﻠﺠﻨﺔ اﻟﺸﺮﻋﻴﺔ ﻟﺠﻤﻴﻊ اﻟﻌﻤﻠﻴﺎت واﻟﺎﺗﻔﺎﻗﻴﺎت واﻟﺈﺟﺮاءات واﻟﺴﻴﺎﺳﺎت.',
          imgPath: 'assets/images/shariya-stamp.jpeg',
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            thickness: 2,
          ),
        ),
        PartEightTile(
          label: 'التصريح',
          title: 'ﻣﺼﺮﺣﺔ ﻣﻦ ﻫﻴﺌﺔ اﻟﺴﻮق اﻟﻤﺎﻟﻴﺔ',
          description:
              'ﺻﻜﻮك اﻟﻤﺎﻟﻴﺔ ﻣﺼﺮﺣﺔ ﻣﻦ ﻫﻴﺌﺔ اﻟﺴﻮق اﻟﻤﺎﻟﻴﺔ ﻓﻲ اﻟﺒﻴﺌﺔ اﻟﺘﺠﺮﻳﺒﻴﺔ ﻟﺈﻧﺸﺎء ﻣﻨﺼﺔ ﻟﻄﺮح أدوات اﻟﺪﻳﻦ واﻟﺎﺳﺘﺜﻤﺎر ﻓﻴﻬﺎ.',
          imgPath: 'assets/images/capital-market-athority.jpeg',
        ),
      ],
    );
  }
}
