import 'package:flutter/material.dart';

import 'part_five_card.dart';

class PartFive extends StatelessWidget {
  const PartFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      color: Colors.grey.withOpacity(0.2),
      child: Column(
        children: const [
          PartFiveCard(
            imgPath: 'assets/images/content-image-01.jpeg',
            label: 'دراﺳﺔ اﻟﻄﻠﺐ',
            title: 'ﻋﺮض ﺗﻤﻮﻳﻠﻲ ﺧﻠﺎل 3 أﻳﺎم',
            description:
                'ﺑﻤﺠﺮد ﺗﻌﺒﺌﺔ اﻟﻤﺴﺘﻨﺪات ﻓﻲ اﻟﻤﻮﻗﻊ ﻳﻘﻮم ﻓﺮﻳﻘﻨﺎ اﻟﻤﺎﻟﻲ ﺑﺎﻟﺘﺤﻠﻴﻞ اﻟﺎﺋﺘﻤﺎﻧﻲ ﻟﻠﺸﺮﻛﺔ واﻟﻤﻠﺎك ودراﺳﺔ ﻃﻠﺐ اﻟﺘﻤﻮﻳﻞ ﺛﻢ ﻳﺘﻢ إرﺳﺎل اﻟﻌﺮض اﻟﺘﻤﻮﻳﻠﻲ ﻟﻜﻢ ',
            boldWords: 'ﺧﻠﺎل 3 أﻳﺎم',
          ),
          SizedBox(
            height: 22,
          ),
          PartFiveCard(
            imgPath: 'assets/images/content-image-02.jpeg',
            label: 'ﻋﻤﻠﻴﺔ اﻟﺘﻤﻮﻳﻞ',
            title: 'ﺗﻤﻮﻳﻞ إﻟﻜﺘﺮوﻧﻲ ﺑﺎﻟﻜﺎﻣﻞ',
            description:
                'ﻧﺮﺗﺒﻂ ﻣﻊ اﻟﻌﺪﻳﺪ ﻣﻦ اﻟﺠﻬﺎت اﻟﺤﻜﻮﻣﻴﺔ واﻟﺸﺮﻛﺎت ﻣﻦ ﻣﺰودي اﻟﺨﺪﻣﺎت واﻟﺒﻴﺎﻧﺎت ﻓﻲ ﺳﺒﻴﻞ ﺗﻮﻓﻴﺮ ﺧﺪﻣﺔ ﻣﻮﺛﻮﻗﺔ وﻣﻌﺘﻤﺪة ﻟﺠﻌﻞ ﺗﺠﺮﺑﺔ ﺗﻤﻮﻳﻠﻚ ',
            boldWords: 'اﻧﺴﻴﺎﺑﻴﺔ، ﺳﻬﻠﺔ، ورﻗﻤﻴﺔ ﺑﺎﻟﻜﺎﻣﻞ',
          )
        ],
      ),
    );
  }
}
