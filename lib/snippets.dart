import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';
import 'package:blurrycontainer/blurrycontainer.dart';



//double height=MediaQuery.of(context).size.height;
//TextStyle
TextStyle signPainter = TextStyle(
  fontFamily: "SignPainter",
  fontSize: 105,
  color:Color(0xffffffff),
);
TextStyle signPainter2 = TextStyle(
  fontFamily: "SignPainter",
  fontSize: 50,
  color:Color(0xffffffff),
);
TextStyle glacial = TextStyle(
  fontFamily: "Glacial Indifference",
  fontSize: 25,
  color:Color(0xffffffff),
);

TextStyle gd = TextStyle(
fontFamily: "Glacial Indifference",
fontSize: 20,
color:Color(0xffffffff),
);

//
//Colors

Color bg =Color.fromRGBO(0, 3, 44, 1);
Color buttonColor =Color(0x262952);



//Widgets

class Logo extends StatelessWidget {
  final double h;
  final double w;
  final double f;
  final String s;

  Logo({
    Key key, this.h, this.w, this.s,this.f
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height: h+10,
            width: w+10,
            decoration: BoxDecoration(
              color: Color(0xffff7ed7),
              shape: BoxShape.circle,
            ),
            child: Text(""),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlurryContainer(
                child: Center(child: Text(s,style: signPainter.copyWith(fontSize:f))),
                height: h,
                width: w,
                blur: 5,
                bgColor: Color(0xFFA4FD),
                borderRadius: BorderRadius.circular(150),
              )
          ),
        ]
    );
  }
}

// new Container(
// height: 281.00,
// width: 281.00,
// decoration: BoxDecoration(
// color: Color(0xffffffff),borderRadius: BorderRadius.circular(141.00),
// ),
// )

// Color(0xffff7ed7);
// Container(
//   height: 320,
//   width: 320,
//   decoration: BoxDecoration(
//     color: Color(0xffff7ed7),
//     shape: BoxShape.circle,
//   ),
//   child: Text(""),
// ),
// Padding(
//   padding: const EdgeInsets.all(34.0),
//   child: ClipRect(
//     child: BackdropFilter(
//       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//       child: Container(
//         height: 300,
//         width: 300,
//
//         decoration: BoxDecoration(
//             color: Color(0xFFA4FD),
//             shape: BoxShape.circle,
//         ),
//         child: Center(child: Text("VISION",style: signPainter)),
//       ),
//     ),
//   ),
// ),
//

