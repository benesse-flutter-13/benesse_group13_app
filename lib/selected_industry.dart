import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';


class SelectedIndustryPage extends StatefulWidget {
  @override
  _SelectedIndustryPage createState() => _SelectedIndustryPage();
}

class _SelectedIndustryPage extends State<SelectedIndustryPage> {

  var _checkBox2 = false;
  var _isCheckboxChecked = false;
  // var list1 = false;
  // var list2 = false;
  var _count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('分野を選んでください'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // CheckboxListTile(
                //   // value: _isCheckboxChecked,
                //   value: list1,
                //   onChanged: (bool value) {
                //     setState(() => list1 = value);
                //     // print(_isCheckboxChecked);
                //   },
                //   title: Text('医療・看護系'),
                //   // subtitle: Text("This is a subtitle"),
                //   secondary: Icon(Icons.medical_services),
                //   activeColor: Colors.blue,
                //   selected: list1,
                // ),
                MyStatefulWidget(label: "法務系"),
                MyStatefulWidget(label: "法務系", ),
                MyStatefulWidget(label: "公務員系", ),
                MyStatefulWidget(label: "公務員保安系", ),
                MyStatefulWidget(label: "対人サービス系", ),
                MyStatefulWidget(label: "技能サービス系", ),
                MyStatefulWidget(label: "金融系", ),
                MyStatefulWidget(label: "営業・販売系",),
                MyStatefulWidget(label: "事務系", ),
                MyStatefulWidget(label: "マスコミ系", ),
                MyStatefulWidget(label: "医療・看護系",),
                MyStatefulWidget(label: "企画調査系",),
                MyStatefulWidget(label: "芸能・芸術系",),
                MyStatefulWidget(label: "デザイン系",),
                MyStatefulWidget(label: "教育系",),

                // MyStatefulWidget(label: "neko", icon: Icons.medical_services,),
                // MyStatefulWidget(label: "neko", icon: Icons.medical_services,),
                // MyStatefulWidget(label: "neko", icon: Icons.medical_services,),
                // MyStatefulWidget(label: "neko", icon: Icons.medical_services,),
                // MyStatefulWidget(label: "neko", icon: Icons.medical_services,),
                // MyStatefulWidget(label: "neko", icon: Icons.medical_services,),


              ],
            ),
          ),
        ),


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
          print(_count);
        }),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.arrow_forward_ios),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,








      //
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //   floatingActionButton: FloatingActionButton(
      //     // backgroundColor: Theme.of(context).accentColor,
      //     backgroundColor: Colors.white,
      //     onPressed: () {},
      //     child: Icon(Icons.arrow_forward_ios),
      //   ),
      //   bottomNavigationBar: BottomAppBar(
      //     color: Theme.of(context).primaryColor,
      //     notchMargin: 6.0,
      //     shape: AutomaticNotchedShape(
      //       RoundedRectangleBorder(),
      //       StadiumBorder(
      //         side: BorderSide(),
      //       ),
      //     ),
      //     // child: RaisedButton()
      //     child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //     child: new Row(
      //       mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: <Widget>[
      //         IconButton(
      //           icon: Icon(
      //             Icons.person_outline,
      //             color: Colors.black,
      //           ),
      //           onPressed: () {},
      //         ),
      //         // IconButton(
      //         //   icon: Icon(
      //         //     Icons.info_outline,
      //         //     color: Colors.white,
      //         //   ),
      //         //   onPressed: () {},
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }


}

//   CheckboxListTile buildCheckboxListTile() {
//     return CheckboxListTile(
//                 // value: _isCheckboxChecked,
//                 value: list2,
//                 onChanged: (bool value) {
//                   setState(() => list2 = value);
//                   // print(_isCheckboxChecked);
//                 },
//                 title: Text('医療・看護系'),
//                 // subtitle: Text("This is a subtitle"),
//                 secondary: Icon(Icons.medical_services),
//                 activeColor: Colors.blue,
//                 selected: list2,
//               );
//   }
// }


//
// class ReusableCard extends StatelessWidget {
// ReusableCard({this._isCheckboxChecked});
// final Color colour;
// final Widget cardChild;
// final bool isCheckboxChecked,
// // const colorString = colour.toString();
// @override
// Widget build(BuildContext context) {
//   return Container(
//               child: CheckboxListTile(
//                 value: _isCheckboxChecked,
//                 onChanged: (value) {
//                   setState(() => _isCheckboxChecked = value);
//                 },
//                 title: Text('医療・看護系'),
//                 // subtitle: Text("This is a subtitle"),
//                 secondary: Icon(Icons.medical_services),
//                 activeColor: Colors.blue,
//                 selected: _isCheckboxChecked,
//               ),
//             );
//   }
// }
//
//
//
//
//   Container buildContainer({bool:value}) {
//     return Container(
//                 child: CheckboxListTile(
//                   value: _isCheckboxChecked,
//                   onChanged: (value) {
//                     setState(() => _isCheckboxChecked = value);
//                   },
//                   title: Text('医療・看護系'),
//                   // subtitle: Text("This is a subtitle"),
//                   secondary: Icon(Icons.medical_services),
//                   activeColor: Colors.blue,
//                   selected: _isCheckboxChecked,
//                 ),
//               );
//   }
// }
//
// var _checkBox2 = false;
// var _isCheckboxChecked=false;


// Widget myContainer({bool : _isCheckboxChecked}) {
//   return Container(
//     CheckboxListTile(
//       value: _isCheckboxChecked,
//       onChanged: (bool value) {
//         setState(() => _isCheckboxChecked = value);
//       },
//       title: Text('医療・看護系'),
//       // subtitle: Text("This is a subtitle"),
//       secondary: Icon(Icons.medical_services),
//       activeColor: Colors.blue,
//       selected: _isCheckboxChecked,
//     )
//
//   );
// }
