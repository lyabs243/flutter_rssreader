import 'package:flutter/material.dart';

class ItemFeed{

  Widget createElement(BuildContext context) {
    return new Card(
      elevation: 30.0,
      child: new Container(
        margin: EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.circular(5),
                image: new DecorationImage(
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: new NetworkImage('https://qph.fs.quoracdn.net/main-thumb-518957970-200-zezcbywnwoaoabaebktrzirciamthdwu.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: new Text(
                'Salut les amis ca va?',
                maxLines: 1,
                textScaleFactor: 2.0,
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
            new Container(
              child: new Text(
                'c un plaisir partage que nous sommes ici ave vous ca faisait vraiment longtemps'
                    'c un plaisir partage que nous sommes ici ave vous ca faisait vraiment longtemps',
                maxLines: 2,
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

}