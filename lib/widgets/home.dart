import 'package:flutter_rss_reader/models/parser.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/webfeed.dart';
import 'package:flutter_rss_reader/widgets/item_feed.dart';
import 'package:flutter_rss_reader/widgets/feed_detail.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  RssFeed feed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    parse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: listView(),
      ),
    );
  }

  Future parse() async{
    RssFeed result = await Parser().loadRss();
    if(result != null){
      setState(() {
        feed = result;
        feed.items.forEach((f){
          print('Title: ${f.title}');
        });
        print('La longueur: ${feed.items.length}');
      });
    }
    else{
      print('It null!');
    }
  }

  Widget listView(){
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (context,i){
        return new InkWell(
          onTap: (){
            Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context){
                    return new FeedDetail();
                  }
              ),
            );
          },
          child: new ItemFeed().createElement(context),
        );
      },
    );
  }

}