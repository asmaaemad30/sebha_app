import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sebha_app/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sebha_app/controller/cuontercard/cuontercard.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title:Text('الأذكار',
            style: TextStyle(
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: textFont18
            ),),
         centerTitle: true,
         leading: IconButton(onPressed: (){
           Navigator.pop(context);
         }, icon:SvgPicture.asset(backbutton)),
        

      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            AzkarCard(count: 33,text:'“((اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا ، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ)). [وإذا أمسى قال: اللَّهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت، وإليك المصير.]”' ,),
            AzkarCard(count: 33,text: '“(اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلاَّ أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لاَ يَغْفِرُ الذُّنوبَ إِلاَّ أَنْتَ)”'),
            AzkarCard(count: 33,text: '“((اللَّهُمَّ إِنِّي أَصْبَحْتُ أُشْهِدُكَ، وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلاَئِكَتِكَ، وَجَمِيعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْدُكَ وَرَسُولُكَ)) [ وإذا أمسى قال: اللَّهم إني أمسيت...]”',),
            AzkarCard(count: 33,text: '“((سُبْحَانَ اللَّهِ وَبِحَمْدِهِ))”',),


          ],
        ),
      ),

    );
  }
}
