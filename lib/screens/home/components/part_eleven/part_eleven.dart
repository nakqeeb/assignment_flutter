import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PartEleven extends StatelessWidget {
  const PartEleven({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xff626262),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 12,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.white,
                  size: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: size.height * 0.12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/png.png',
                  width: 50,
                  height: 150,
                  color: Colors.white70,
                  fit: BoxFit.cover,
                ),
                const VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: const Text(
                    'انبثقت فكرة المنصة الرقمية السعودية لجودة التشغيل الغذائي بشركة الاكتمال السعودية لنرسم الطريق نحو أداء تقني متميز في خدمة ضيوف الرحمن في مجال التغذية والإعاشة وفق أعلى معاييرالجودة العالمية.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: size.height * 0.2,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ﺻﻜﻮك اﻟﻤﺎﻟﻴﺔ',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        fontFamily: 'Tajawal-Bold',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'من نحن',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'ﻣﺴﺘﺜﻤﺮ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'ﻃﺎﻟﺐ ﺗﻤﻮﻳﻞ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'رواﺑﻂ ﻣﻬﻤﺔ',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        fontFamily: 'Tajawal-Bold',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'اﻟﺎﻟﺘﺰام ﺑﺎﻟﺸﺮﻳﻌﺔ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'اﻟﺸﺮوط واﻟﺄﺣﻜﺎم',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'اﻟﺘﻘﻴﻴﻢ اﻟﺈﺋﺘﻤﺎﻧﻲ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'اﻟﻤﺪوﻧﺔ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'اﻟﺄﺳﺌﻠﺔ اﻟﺸﺎﺋﻌﺔ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'اﻟﻤﻮﻗﻊ ﺑﺈدارة ﺷﺮﻛﺔ ﺻﻜﻮك اﻟﻤﺎﻟﻴﺔ اﻟﻤﺴﺠﻠﺔ ﺑﻮزارة اﻟﺘﺠﺎرة ﺑﺴﺠﻞ ﺗﺠﺎري رﻗﻢ ١٠١٠٦٣٢٤٥٦ وﺗﺎرﻳﺦ ١٤٤١/٧/٢٠ﻫـ وﻣﺼﺪره ﻣﺪﻳﻨﺔ اﻟﺮﻳﺎض. وﻣﺼﺮﺣﺔ ﻣﻦ ﻫﻴﺌﺔ اﻟﺴﻮق اﻟﻤﺎﻟﻴﺔ ﺿﻤﻦ ﻣﺨﺘﺒﺮ اﻟﺘﻘﻨﻴﺔ اﻟﻤﺎﻟﻴﺔ ﺑﺘﺎرﻳﺦ ٠٢٠٢/١١/٤م. وﻟﺎ ﺗﻘﺪم ﺻﻜﻮك أي ﻣﻦ اﻟﻤﻨﺘﺠﺎت أو اﻟﺨﺪﻣﺎت اﻟﺎﺳﺘﺜﻤﺎرﻳﺔ اﻟﺎﺳﺘﺸﺎرﻳﺔ ﻏﻴﺮ اﻟﺘﻲ ﺗﻢ اﻟﺤﺼﻮل ﻋﻠﻰ ﺗﺼﺮﻳﺢ ﻟﻬﺎ ﻣﻦ اﻟﺠﻬﺔ اﻟﻤﺨﺘﺼﺔ، وﻟﺎ ﺗﻘﺪم ﺻﻜﻮك أي ﻣﻦ ﺗﺎﺑﻌﻴﻬﺎ أو ﻣﻮﻇﻔﻴﻬﺎ أو ﻣﺪﻳﺮﻳﻬﺎ أي ﺿﻤﺎﻧﺎت ﺻﺮﻳﺤﺔ أو ﺿﻤﻨﻴﺔ ﺗﺘﻌﻠﻖ ﺑﻜﻔﺎﻳﺔ أو دﻗﺔ أو اﻛﺘﻤﺎل اﻟﻤﻌﻠﻮﻣﺎت ﻋﻠﻰ اﻟﻤﻮﻗﻊ، وﻳﻘﺘﺼﺮ دور ﺻﻜﻮك ﻋﻠﻰ اﻟﺘﺄﻛﺪ ﻣﻦ ﺳﻠﺎﻣﺔ ﺗﺴﺠﻴﻞ اﻟﻤﻨﺸﺄة اﻟﻤﻄﺮوﺣﺔ أو اﻟﺮاﻏﺒﺔ ﺑﺎﻟﺘﻤﻮﻳﻞ وﻣﺮاﺟﻌﺔ اﻟﺒﻴﺎﻧﺎت اﻟﻤﺎﻟﻴﺔ وﻏﻴﺮﻫﺎ ﻣﻦ اﻟﻤﻌﻠﻮﻣﺎت اﻟﺠﻮﻫﺮﻳﺔ وأن اﻟﺒﻴﺎﻧﺎت اﻟﻮاردة ﺑﺎﻟﻤﻮﻗﻊ وﻃﺮﻳﻘﺔ ﻋﺮﺿﻬﺎ ﻣﻄﺎﺑﻘﺔ ﻟﻤﺘﻄﻠﺒﺎت ﻫﻴﺌﺔ اﻟﺴﻮق اﻟﻤﺎﻟﻴﺔ وﻛﺎﻓﻴﺔ ﻟﻠﻤﺴﺘﺜﻤﺮ ﺑﺎﺗﺨﺎذ اﻟﻘﺮار اﻟﻤﻨﺎﺳﺐ، وﻛﺎﻣﻞ اﻟﻤﺴﺆوﻟﻴﺔ ﺗﻘﻊ ﻋﻠﻰ ﻋﺎﺗﻖ اﻟﺠﻬﺔ اﻟﻄﺎرﺣﺔ ﻟﻠﺄوراق اﻟﻤﺎﻟﻴﺔ.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 7,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 15),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                '© 2022 الحقوق محفوظة لشركة صكوك المالية',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 7,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
