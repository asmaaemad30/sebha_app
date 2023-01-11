import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sebha_app/constant.dart';


class SebhaScreen extends StatefulWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter =0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:backgroundColor,

      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Center(
          child: Text('السبحة الإلكترونية',
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.w600,
            fontSize: textFont26
          ),),
        ),
      ),
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(

                  onPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(55),
                    shape: CircleBorder(),
                    backgroundColor:sebhaButton,
                    shadowColor: shadowColor,
                    elevation: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$counter',
                        style: TextStyle(
                          color: white,
                          fontSize: textFont50,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        'سبح',
                        style: TextStyle(
                            color: darkGreen,
                            fontSize: textFont18,
                            fontWeight: FontWeight.w600
                        ),
                      ),

                    ],
                  )
              ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
              setState(() {
                counter=0;
              });
            },
                child:SvgPicture.asset(reset),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                backgroundColor:resetBottomColor,

              ),
            )




          ],
        ),
      ) ,

    );
  }
}

