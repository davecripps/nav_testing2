import 'package:flutter/material.dart';

import 'package:nav_testing2/util/common_widgets.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CommonWidgets.theAppBar(context),
    body: RefreshIndicator(
      child: Container(
        color: const Color(0x88002f6c),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            _getArticleCard(
              1,
              "Article 1 Title",
              "December 3, 2018",
              "https://www.google.com",
              "Blah blah blah blah"
            ),
            _getArticleCard(
              2,
              "Article 2 Title",
              "December 1, 2018",
              "https://www.yahoo.com",
              "Some descripion that you'll skim over and possibly read."
            ),
            _getArticleCard(
              3,
              "Article 3 Title",
              "December 20, 2018",
              "https://www.bing.com",
              "Beep boop beep boop beep. Zzzz Zzz Zzz."
            ),
          ],
        ),
      ),
      onRefresh: _refresh,
    ),
  );

  Future<void> _refresh() async {
    return "";
  }

  Widget _articleTap(String articleUrl, int articleNum) =>
    SimpleDialog(
      children: <Widget>[
        AlertDialog(
          title: Text("Tapped Article $articleNum"),
          content: Text("Tapped Article $articleNum. Going to $articleUrl"),
        ),
      ],
    );

  Widget _getArticleCard(int articleId, String articleTitle, String articleDate, String articleSource, String articleTeaser)
  => GestureDetector(
    child: Card(
      semanticContainer: true,
      child: Column(
        children: <Widget>[
          ListTile(
            isThreeLine: true,
            leading: Icon(Icons.access_alarm),
            title: Text("$articleTitle"),
            subtitle: Text("$articleDate"),
          ),
          Text("$articleTeaser"),
          Text(
            "$articleSource",
            style: TextStyle(
              fontSize: 8.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    ),
    onTap: () => _articleTap(articleSource, articleId),
  );

}