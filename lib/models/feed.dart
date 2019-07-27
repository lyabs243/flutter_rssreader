import 'package:intl/intl.dart';

class Feed{

  String channelTitle;
  String articleTitle;
  String articleDescription;
  String articlePubDate;
  String articleUurlImage;
  String articleUrlArticle;

  Feed(this.channelTitle, this.articleTitle, this.articleDescription,
      this.articlePubDate, this.articleUurlImage, this.articleUrlArticle);

  String convertDateToAbout(){

    int sec=0,min=0,hour=0,days=0,months=0,years=0;
    String formet = 'E, d MMM y H:mm:s zzz';
    DateFormat formater = DateFormat(formet);
    DateTime dateTime = formater.parse(this.articlePubDate);

    sec = DateTime.now().difference(dateTime).inSeconds;
    String result = '?';
    if(sec >= 0){
      result = 'about ${sec} sec';
      if(sec > 59){
        min = (sec/60).floor();
        result = 'about ${min} mins';
      }
      if(min > 59){
        hour = (min/60).floor();
        result = 'about ${hour} hours';
      }
      if(hour > 23){
        days = (hour/24).floor();
        result = 'about ${days} days';
      }
      if(days > 29){
        months = (days/30).floor();
        result = 'about ${months} months';
      }
      if(days>364){
        years = (days/365).floor();
        result = 'about ${years} years';
      }
    }
    return result;
  }

}