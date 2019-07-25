import 'package:flutter/material.dart';

class FeedDetail extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _FeedDetail();
  }

}

class _FeedDetail extends State<FeedDetail>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new SingleChildScrollView(
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    width: MediaQuery.of(context).size.width/1,
                    height: MediaQuery.of(context).size.height/2,
                    child: new Image.network(
                      'https://qph.fs.quoracdn.net/main-thumb-518957970-200-zezcbywnwoaoabaebktrzirciamthdwu.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(4.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                'France 24',
                                style: new TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              new Text(
                                'Il y a 5 minutes',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        new Container(
                          child: new Text(
                            'Salut les amis ca va?',
                            textScaleFactor: 2.0,
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        new Container(
                          child: new Text(
                            'Salut les amis ca va?''c un plaisir partage que nous sommes ici ave vous ca faisait vraiment longtemps'
                                'c un plaisir partage que nous sommes ici ave vous ca faisait vraiment longtemps',
                            textScaleFactor: 1.3,
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new FlatButton(
                              onPressed: (){

                              },
                              child: new Text(
                                'Read More',
                                style: new TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Positioned( //Place it at the top, and not use the entire screen
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text(''),
              backgroundColor: Colors.transparent, //No more green
              elevation: 0.0, //Shadow gone
            ),
          ),
        ],
      ),
    );
  }
}