import 'package:InstagramUIClone/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _drawStories() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text('username')
        ],
      ),
    );
  }

  Widget _drawPosts() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 10,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'username',
                            style: darkStyle,
                          ),
                          Text('location'),
                        ],
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.heart),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(Icons.send),
                    ],
                  ),
                ),
                Icon(Icons.label_outline),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 4.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Liked by ',
                  style: defaultStyle,
                ),
                Text(
                  'username ',
                  style: darkStyle,
                ),
                Text(
                  'and ',
                  style: defaultStyle,
                ),
                Text(
                  '100 others',
                  style: darkStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 4.0),
            child: Row(
              children: [
                Text(
                  'username ',
                  style: darkStyle,
                ),
                Text(
                  'Instagram UI Clone',
                  style: defaultStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 4.0),
            child: Text(
              'View all comments',
              style: lightStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 4.0),
            child: Text(
              '2 secs ago',
              style: lightStyle,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.add_box),
        title: Center(child: Text("Instagram")),
        actions: [
          Icon(Icons.send),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            radius: 40,
                          ),
                          Positioned(
                            child: Icon(Icons.add_circle),
                            right: 1,
                            bottom: 1,
                          )
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Your story')
                      ],
                    ),
                  ),
                  _drawStories(),
                  _drawStories(),
                  _drawStories(),
                  _drawStories()
                ],
              ),
            ),
            _drawPosts(),
            _drawPosts(),
            _drawPosts(),
          ],
        ),
      ),
    );
  }
}
