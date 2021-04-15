import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class TextControll extends StatefulWidget {
  @override
  _Info createState() => _Info();
}

class _Info extends State<TextControll> {
  var _skills = "";
  var _tech = "Web";

  void _displayTech() {
    setState(() {
      switch (_tech) {
        case "Web":
          _skills =
              "WEB: HTML/CSS/JS, ReactJS, Redux, NodeJS, ExpressJS, MongoDB, Golang, MySQL";
          _tech = "Mobile";
          break;
        case "Mobile":
          _skills = "MOBILE: ReactNative, Flutter";
          _tech = "Web";
          break;
        default:
          _skills = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text("Web & Mobile App Develper"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(_skills),
            ),
            CupertinoButton(
                child: Text("Show " + _tech + " Skills"),
                onPressed: _displayTech),
          ],
        ),
      ],
    );
  }
}
