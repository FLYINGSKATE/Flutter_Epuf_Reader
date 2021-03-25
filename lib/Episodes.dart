
import 'package:flutter/material.dart';
import 'package:saga_ebook_technical_round/ReviewPage.dart';

class Episodes extends StatefulWidget {
  @override
  _EpisodesState createState() => _EpisodesState();
}

class _EpisodesState extends State<Episodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.sort_by_alpha,
                size: 30.0,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
            SizedBox(width: 20.0,),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
            SizedBox(width: 20.0,),
          ],
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed:(){
              Navigator.pop(context);
            },
          ),),
      ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Chapter 1",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 40.0),),
            Padding(
              padding: const EdgeInsets.fromLTRB(60.0,0.0,60.0,0.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                style: TextStyle(
                    height: 3.0,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
