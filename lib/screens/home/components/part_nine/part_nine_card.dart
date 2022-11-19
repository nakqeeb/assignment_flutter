import 'package:flutter/material.dart';

class PartNineCard extends StatelessWidget {
  const PartNineCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.2,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: const Color(0xFF494949),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'ﻧﺸﻮف اﻟﻤﺴﺘﻘﺒﻞ ﻣﻌﻜﻢ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Tajawal-Bold',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'ﻓﻲ ﺻﻜﻮك ﻧﺆﻣﻦ داﺋﻤﺎ ﺑﻠﺤﻈﺔ اﻟﻘـــــﺮار ﻟﺄن ﻛﻞ ﻗﺮار ﻳﻔـــــﺮق',
            style: TextStyle(color: Colors.white38, fontSize: 12),
          ),
          const Spacer(),
          SizedBox(
            width: size.width * 0.4,
            height: size.height * 0.03,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                'اﺣﺼﻞ ﻋﻠﻰ ﺗﻤﻮﻳـﻠﻚ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
