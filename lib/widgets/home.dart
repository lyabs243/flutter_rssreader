import 'package:flutter_rss_reader/models/feed_parser.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/webfeed.dart';
import 'package:flutter_rss_reader/widgets/item_feed.dart';
import 'package:flutter_rss_reader/widgets/feed_detail.dart';
import 'package:flutter_rss_reader/models/feed.dart';
import 'package:html/parser.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  RssFeed feed;
  List<Feed> feeds;

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
    RssFeed result = await FeedParser().loadRss();
    feeds = [];
    if(result != null){
      setState(() {
        feed = result;
        feed.items.forEach((f){
          String title = f.source.value;
          String aTitle = f.title;
          String aDesc = f.description;
          String pubDate = f.pubDate;
          String uArticle = f.link;
          String uImg = 'https://q5v8e3s3.stackpathcdn.com/wp-content/uploads/2019/04/news-default-image-300x225.jpg';

          f.media.contents.forEach((content){
            uImg = content.url;
          });

          Feed item = new Feed(title, aTitle, aDesc, pubDate, uImg, uArticle);
          feeds.add(item);
        });
      });
    }
    else{
      print('It null!');
    }
  }

  Widget listView(){
    return new ListView.builder(
      itemCount: (feeds != null)? feeds.length : 0,
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
          child: new ItemFeed().createElement(context,feeds[i]),
        );
      },
    );
  }
}