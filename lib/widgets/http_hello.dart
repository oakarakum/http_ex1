// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HttpHelloView extends StatefulWidget {
  const HttpHelloView({super.key});

  @override
  State<HttpHelloView> createState() => _HttpHelloViewState();
}

class _HttpHelloViewState extends State<HttpHelloView> {
  late bool isHaveData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isHaveData = false;
  }

  void getApiJohnName() {
    return http
        .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(toolbarHeight: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isHaveData
                ? CircularProgressIndicator()
                : Text(
                    "Done ...",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
            ElevatedButton(onPressed: () {}, child: Text("Send Request"))
          ],
        ),
      ),
    );
  }
}
