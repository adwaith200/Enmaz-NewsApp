import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
String imageUrl;
  ArticleView({required this.imageUrl});
  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

   void initState() {
     super.initState();
         // Enable hybrid composition.
 if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
   }

  final Completer <WebViewController> _completer= Completer<WebViewController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title:Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Flutter"),
          Text("News",style:TextStyle(color: Colors.greenAccent))

        ],),
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     height:20,
        //     width:20,
        //     child: CircleAvatar(
        //       backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLniMmaEqbBPBR7G59oZncZ3dDI9wS8Vau6A&usqp=CAU"),
        //     ),
        //   ),
        // ),
        //  actions: <Widget>[
        //   Container(
        //     padding: EdgeInsets.symmetric(horizontal: 16),
        //       child: Icon(Icons.share,))
        // ],
       
        elevation: 0.0,
      ),
      body: Container(
        child:WebView(
          initialUrl: widget.imageUrl,
          onWebViewCreated: ((WebViewController webViewController){
            _completer.complete(webViewController);
          }),
        )
      ),
    );
  }
}