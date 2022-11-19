import 'package:assignment_flutter/screens/home/components/part_nine/part_nine_card.dart';
import 'package:flutter/material.dart';

class PartNine extends StatelessWidget {
  const PartNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey.withOpacity(0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PartNineCard(),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'ﻧﺮﺗﺒﻂ ﻓﻲ ﺻﻜﻮك ﻣﻊ اﻟﻌﺪﻳﺪ ﻣﻦ ﻣﺰودي اﻟﺒﻴﺎﻧﺎت واﻟﺨﺪﻣﺎت',
            style: TextStyle(color: Colors.black38, fontSize: 13),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo/logo-f03.png',
                width: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/logo/logo-f010.png',
                width: 70,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/logo/logo-f04.png',
                width: 33,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/logo/logo-f08.png',
                width: 40,
              ),
              Image.asset(
                'assets/images/logo/logo-f09.png',
                width: 50,
              ),
              Image.asset(
                'assets/images/logo/logo-f01.png',
                width: 80,
              ),
              Image.asset(
                'assets/images/logo/logo-f02.png',
                width: 70,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo/logo-f05.png',
                width: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/logo/logo-f06.png',
                width: 60,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/logo/logo-f07.png',
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
