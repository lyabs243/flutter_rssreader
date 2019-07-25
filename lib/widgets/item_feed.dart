import 'package:flutter/material.dart';
import 'package:flutter_rss_reader/models/feed.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class ItemFeed{

  Widget createElement(BuildContext context,Feed itemFeed) {
    return new Card(
      elevation: 30.0,
      child: new Container(
        margin: EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: /*const Color(0xff7c94b6)*/Colors.black,
                borderRadius: BorderRadius.circular(5),
                image: new DecorationImage(
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: new NetworkImage(itemFeed.articleUurlImage),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: new Text(
                itemFeed.articleTitle,
                maxLines: 2,
                textScaleFactor: 1.3,
                style: new TextStyle(
                  color: Colors.white,
                ),
              ),
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 4.5,
            ),
            new Container(
              color: Colors.blue,
              padding: EdgeInsets.all(4.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      itemFeed.channelTitle,
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Container(
                    child: new Text(
                      itemFeed.articlePubDate.substring(0,15),
                      style: new TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: Html(
                data: itemFeed.articleDescription,
              ),
            ),
          ],
        ),
      ),
    );
  }

}