import 'package:flutter/cupertino.dart';
import 'package:my_futter_demo/info.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: "Flutter Demo",
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("Vivek S"),
          ),
          child: Center(child: TextControll()),
        ));
  }
}
