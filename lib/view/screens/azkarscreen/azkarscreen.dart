import 'package:flutter/material.dart';
import 'package:sebha_app/constant.dart';
import 'package:flutter/cupertino.dart';

import '../descriptionScreen/descriptionScreen.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Center(
          child: Text('الأذكار',
            style: TextStyle(
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: textFont26
            ),),
        ),
      ),
      body: ListView(


        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return DescriptionScreen();
              })
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  Image.asset(
                    motning,
                    width: MediaQuery.of(context).size.width,),

                  Positioned(
                      bottom: 20,
                      right: 20,
                      child:
                      Center(
                        child: Text('أذكار الصباح',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: textFont18
                          ),
                        ),
                      )

                  )

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset(night,
                  width: MediaQuery.of(context).size.width,),

                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Center(child:
                    Text('أذكار المساء',
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: textFont18
                        ),
                      ),
                    ))

              ],
            ),
          ),

          Container(
            child: Text('أذكار متنوعة'
           ,style:
              TextStyle(
              fontSize:textFont18,
              color: white,
              fontWeight: FontWeight.w600
            ),
            ),
           padding: EdgeInsets.all(15),
           width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerRight,
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset(midnight,
                  width: MediaQuery.of(context).size.width,),

                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Center(child:
                    Text('أذكار قيام الليل',
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: textFont18
                        ),
                      ),
                    ))

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset(pray,
                  width: MediaQuery.of(context).size.width,),

                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Center(child:
                    Text('أذكار الصلاة',
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: textFont18
                        ),
                      ),
                    ))

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset(bedtime,
                  width: MediaQuery.of(context).size.width,),

                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Center(child:
                    Text('أذكار النوم',
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: textFont18
                        ),
                      ),
                    ))

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Image.asset(random,
                  width: MediaQuery.of(context).size.width,),

                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Center(child:
                    Text('أذكار متنوعة',
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: textFont18
                        ),
                      ),
                    ))

              ],
            ),
          ),
        ],
      ),
    );
  }
}
