import 'package:webfeed/webfeed.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class Parser{

  final String url = 'https://news.google.com/rss?hl=fr&gl=FR&ceid=FR:fr';

  Future loadRss() async{
    final response = await http.get(url);
    if(response.statusCode == 200){
      final feed = RssFeed.parse(response.body);
      return feed;
    }
    else{
      print('Error ${response.statusCode}');
    }
    return null;
  }
}