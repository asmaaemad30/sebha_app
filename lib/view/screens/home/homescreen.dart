import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sebha_app/constant.dart';
import 'package:flutter_svg/svg.dart';




class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(

          children: [
            Text(
              "الأحد 25,سبيتمبر",
              style: TextStyle(
                color: white,
                fontSize: textFont18,
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.right,
            ),
            Text(
              '13صقر,1444',
              style: TextStyle(
                  color: selctedItemColor,
                  fontSize: textFont14,
                  fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.right,
            ),


            Card(
              color: selctedItemColor,
              shadowColor: Colors.black.withOpacity(0.1),
              elevation: 5,
              child: 
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Column(
                    children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text (
                                'الزقازيق,الشرقية',
                                style:TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: textFont14,
                                )

                            ),
                            SvgPicture.asset(location),

                          ],
                        ),

                      Container(
                        alignment: Alignment.centerRight,
                        child: Text (
                            'متبقي على',
                            style:TextStyle(
                              color: white,
                              fontWeight: FontWeight.w500,
                              fontSize: textFont14,
                            )

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text (
                                  'دقيقة',
                                  style:TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: textFont14,
                                  )

                              ),
                              Text (
                                  '15:20',
                                  style:TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: textFont34,
                                  )

                              ),
                            ],
                          ),

                          Text (
                              'صلاة الظهر',
                              style:TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont34,
                              )
                          ),

                        ],
                      ),


                    ],
                  ),
               ),

              
            ),
            Card(
              color:resetBottomColor,
              shadowColor: Colors.black.withOpacity(0.1),
              elevation: 5,
              child:
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                      Container(
                        padding: EdgeInsets.all(8),
                        width:MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(
                          color: shadowColor,
                          borderRadius: BorderRadius.only(
                            topRight:Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                          )
                        ),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text (
                                'مواعيد الصلاة',
                                style:TextStyle(
                                  color: resetBottomColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: textFont18,
                                )
                            ),
                            SizedBox(width: 15,),
                            SvgPicture.asset(dmosque),
                          ],
                        ),
                      ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                              '4:41 ص',
                              textDirection: TextDirection.rtl,
                              style:TextStyle(
                                color: darkGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                          Text (
                              'الفجر',
                              style:TextStyle(
                                color: darkGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                              '6:06 ص',
                              textDirection: TextDirection.rtl,
                              style:TextStyle(
                                color: darkGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                          Text (
                              'الشروق',
                              style:TextStyle(
                                color: darkGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                              '11:30 ص',
                              textDirection: TextDirection.rtl,
                              style:TextStyle(
                                color: selctedItemColor,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                          Text (
                              'الظهر',
                              style:TextStyle(
                                color: selctedItemColor,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                              '2:45 ص',
                              textDirection: TextDirection.rtl,
                              style:TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                          Text (
                              'العصر',
                              style:TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                              '5:11 ص',
                              textDirection: TextDirection.rtl,
                              style:TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                          Text (
                              'المغرب',
                              style:TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                              ' 6:20 ص',
                              textDirection: TextDirection.rtl,
                              style:TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                          Text (
                              'العشاء',
                              style:TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: textFont16,
                              )
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

            ),
            Card(
              color: cardBackGround,
              shadowColor: Colors.black.withOpacity(0.1),
              elevation: 5,
              child:
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text (
                          'دعاء اليوم',
                          style:TextStyle(
                            color: selctedItemColor,
                            fontWeight: FontWeight.w500,
                            fontSize: textFont14,
                          )

                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text (
                               'اللَّهُمَّ إنِّي أعُوذُ بكَ مِنَ الهَمِّ والحَزَنِ، والعَجْزِ والكَسَلِ، والبُخْلِ، والجُبْنِ، وضَلَعِ الدَّيْنِ، وغَلَبَةِ الرِّجالِ'  ,
                          textAlign: TextAlign.right,
                          style:TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: textFont18,
                          )

                      ),
                    ),



                  ],
                ),
              ),


            ),

            SizedBox(height: 5)

          ]
          ),
        )
    );
  }
}
