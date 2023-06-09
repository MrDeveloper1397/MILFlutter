import 'package:flutter/material.dart';
import 'package:mil/models/day_coll_model.dart';

class DayCollList extends StatefulWidget {
  List<DayCollectionModel> dayCollModel = [];
  late String acnumbe;
  DayCollList(this.dayCollModel,this.acnumbe);
  @override
  DayPayListState createState() => DayPayListState();
}

class DayPayListState extends State<DayCollList> {
  bool shouldShowWidget = false;
  @override
  Widget build(BuildContext context) {
    var dayCollModel = widget.dayCollModel;
    var userAcnumb = widget.acnumbe;
    return new ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: dayCollModel.length,
      padding: EdgeInsets.all(8.0),
      shrinkWrap: true,
      itemBuilder: (BuildContext ctxt, int index) {
        return Card(
            elevation: 20.0,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: index == 0
                    ? const Border() // This will create no border for the first item
                    : Border(
                    top: BorderSide(
                        width: 1,
                        color: Colors
                            .black26)), // This will create top borders for the rest
              ),

              // child: InkWell(
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: -1,
                        child: Row(
                          children: <Widget>[
                            // Icon(Icons.bookmark_border_outlined),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  height: 35,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        //                   <--- left side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      left: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Recipt Id",
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.4,
                                      fontSize: 13,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  height: 35,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        //                   <--- left side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      left: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                      dayCollModel[index]
                                          .memberReceiptsId
                                          .toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5,
                                      )),
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  height: 35,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        //                   <--- left side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      left: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Date :",
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontSize: 15,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: 35,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        //                   <--- left side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      left: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      right: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                      dayCollModel[index]
                                          .receiptDate
                                          .toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5,
                                      )),
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: -1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        //                   <--- left side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      left: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    dayCollModel[index].passBook.toString(),
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontSize: 15,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 12,
                                child: Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.black),
                                  ),
                                  padding: EdgeInsets.only(left: 5),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    dayCollModel[index].applName.toString(),
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      fontSize: 12,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      //

                      (dayCollModel[index].bankName.toString()=="")?SizedBox.shrink():
                      Expanded(
                        flex: -1,
                        child: Row(
                          children: <Widget>[

                            Expanded(
                                flex: 3,
                                child: Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        //                   <--- left side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      left: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    'Bank',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontSize: 15,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 12,
                                child: Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.black),
                                  ),
                                  padding: EdgeInsets.only(left: 5),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    dayCollModel[index].bankName.toString()+" ("+ userAcnumb +")",
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      fontSize: 12,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),


                      Expanded(
                        flex: -1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        //                   <--- left side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      right: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      top: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Chq.No.",
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontSize: 15,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      // bottom: BorderSide( //                   <--- left side
                                      //   color: Colors.black,
                                      //   width: 1.0,
                                      // ),
                                      right: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    dayCollModel[index].cheqDDno.toString(),
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.3,
                                      fontSize: 11,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      // bottom: BorderSide( //                   <--- left side
                                      //   color: Colors.black,
                                      //   width: 1.0,
                                      // ),
                                      right: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Chq.Dt.",
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontSize: 15,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      // bottom: BorderSide( //                   <--- left side
                                      //   color: Colors.black,
                                      //   width: 1.0,
                                      // ),
                                      right: BorderSide(
                                        //                    <--- top side
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                      dayCollModel[index].cheqdate.toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5,
                                      )),
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: -1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 15,
                                child: Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.black),
                                  ),
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                      '\u{20B9}${dayCollModel[index].recAmount.toString()}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                )),
                          ],
                        ),
                      ),
                    ],
                  )),
            ));
      },
    );
  }
}
