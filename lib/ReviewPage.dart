import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        elevation: 0.0,
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
      ),) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopWidget(),
            MiddleBtns(),
            BottomWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Discover',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Library',
            backgroundColor: Colors.white,
          ),

        ],
        currentIndex: 0,
        selectedItemColor: Colors.black54,
      ),
    );
  }

  Widget TopWidget() {
    return Container(
      height: MediaQuery.of(context).size.height / 3,

      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    border: Border.all(
                      width: 5,
                      color: Colors.white//                   <--- border width here
                    ),
                  ),
                  child: Image.network('https://m.media-amazon.com/images/M/MV5BMTUwNjUxMTM4NV5BMl5BanBnXkFtZTgwODExMDQzMTI@._V1_.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
            child: SideWidget(),
          ),
        ],
      ),
    );
  }

  Widget SideWidget(){
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("Beauty and the Beast!",
                style: TextStyle(fontSize: 40.0,fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
          ),
          Text("By Walt Disney"),
          SizedBox(height:90.0),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                  Expanded(child: Column(
                    children: [
                      Text("Episodes",style: TextStyle(color: Colors.grey),),
                      Text("55",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
                    ],
                  )),
                Expanded(child: Column(
                  children: [
                    Text("View Count",style: TextStyle(color: Colors.grey),),
                    Text("220",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Text("Rating",style: TextStyle(color: Colors.grey),),
                    Text("5.0",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Icon(Icons.healing),
                ),
                Expanded(
                  child: Icon(Icons.share),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget MiddleBtns(){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                child: Text(
                  'Summary',
                  style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  print('Button #1 is clicked!');
                }),
          ),
          Expanded(
            child: TextButton(
                child: Text(
                  'Episodes',
                  style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  print('Button #1 is clicked!');
                }),
          ),
          Expanded(
            child: TextButton(
                child: Text(
                  'Reviews',
                  style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  print('Button #1 is clicked!');
                }),
          ),

        ],
      ),
    );
  }

  Widget BottomWidget(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommentTile(),
          CommentTile(),
          CommentTile(),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Leave a Comment",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 22.0),),
                SizedBox(height:20),
                Text("Do you want to write something?",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,color: Colors.black54,fontSize: 18.0),),
                SizedBox(height:20),
                // ignore: deprecated_member_use
                RaisedButton(
                    padding: EdgeInsets.all(30),
                    child: Text("COMMENT",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,color: Colors.black54,fontSize: 20.0)),
                    onPressed: (){
                      print('Button #1 is clicked!');
                      //Navigator.of(context).pushNamed("your_route_name");
                    } ,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget CommentTile() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.account_circle,size: 50),
          title: Text('Neil Armstrong'),
          subtitle: Text('5 Days Ago.'),
          onTap: (){
            print('Button #1 is clicked!');
            //Navigator.of(context).pushNamed("your_route_name");
          } ,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(23.0,5.0,20.0,10.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text("What a beautiful Book it was!",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),)),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
