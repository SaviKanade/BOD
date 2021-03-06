import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AccDec extends StatefulWidget {
  @override
  _AccDecState createState() => _AccDecState();
}

class _AccDecState extends State<AccDec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BOP"), backgroundColor: Colors.red),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              highlightColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.white),
              ),
              elevation: 8.0,
              child: Center(
                child: Text(
                  'Accept',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ).tr(),
              ),
            ),
          ),
          SizedBox(width: 50),
          Container(
            height: 50,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              highlightColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.white),
              ),
              elevation: 8.0,
              child: Center(
                child: Text(
                  'Decline',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ).tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
