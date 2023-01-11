import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sebha_app/constant.dart';

class AzkarCard extends StatefulWidget {
  int count ;
  String text ;
  bool cardVisible=true;


  AzkarCard({
    required this.count,
    required this.text
});

  @override
  State<AzkarCard> createState() => _AzkarCardState();
}

class _AzkarCardState extends State<AzkarCard> {

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.cardVisible ,
      child: InkWell(
          onTap: (){
            if(widget.count>0){
              setState(() {
                widget.count -- ;
                if(widget.count==0){
                  setState(() {
                    widget.cardVisible=false;
                  });
                }
              });
            };
          },
          child:
          Card(
            color: resetBottomColor,
            shadowColor: Colors.black.withOpacity(0.1),
            elevation: 5,
            child:
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text ('${widget.text}' ,
                      style:TextStyle(
                        color: white,
                        fontWeight: FontWeight.w600,
                        fontSize: textFont16,
                      ),
                      textAlign: TextAlign.right,

                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,

                    child:
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(2),
                      child: Center(
                        child: Text (
                            '${widget.count}'  ,
                            style:TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: textFont14,
                            )
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: shadowColor
                      ),
                      width: 23,
                      height: 26,
                    ),
                  )
                ],
              ),
            ),

          ),
        ),
    );

  }
}
