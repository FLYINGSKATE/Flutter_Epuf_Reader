
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      iconSize: 30.0,
                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/1.46),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      iconSize: 30.0,
                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                    ),
                  ),
                  SizedBox(width: 30.0,),
                  Align(
                    alignment: Alignment.topRight,

                    child: IconButton(
                      color: Colors.black,
                      iconSize: 30.0,
                      icon: Icon(Icons.search,color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ),
            Text("Chapter 1",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 40.0),),
            Padding(
              padding: const EdgeInsets.fromLTRB(60.0,0.0,60.0,0.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                  " when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"
                  " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software "
                  "like Aldus PageMaker including versions of Lorem Ipsum."
                  " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                  " when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"
                  " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software "
                  "like Aldus PageMaker including versions of Lorem Ipsum."
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                  " when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"
                  " remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software "
                  "like Aldus PageMaker including versions of Lorem Ipsum. ",
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
