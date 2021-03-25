import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saga_ebook_technical_round/Episodes.dart';

import 'Summary.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black12,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            TopWidget(),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MiddleBtns(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: BottomWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontFamily: 'RobotoMono'),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,size: 30.0,),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,size: 30.0,),
            label: 'Discover',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view,color: Colors.black,size: 30.0,),
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
          Align(

            alignment: Alignment.topCenter,
            child: Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0,0.0,10.0,0.0),
                child: Container(
                  width:MediaQuery.of(context).size.height / 6 ,
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
            flex: 2,
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
                style: TextStyle(fontSize: 35.0,fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
          ),
          Text("By Walt Disney"),
          SizedBox(height:MediaQuery.of(context).size.height / 12,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                  Expanded(child: Column(
                    children: [
                      Text("Episodes",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
                      Text("55",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
                    ],
                  )),
                Expanded(child: Column(
                  children: [
                    Text("View Count",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
                    Text("220",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Text("Rating",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
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
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Summary',
                    style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 20.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Summary()),
                  );
                }),
          ),
          Container(height: 60, child: VerticalDivider(color: Colors.black12)),
          Expanded(
            child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Episodes',
                    style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 20.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Episodes()),
                  );
                }),
          ),
          Container(height: 60, child: VerticalDivider(color: Colors.black12)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  child: Text(
                    'Reviews',
                    style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 20.0),
                  ),
                  onPressed: () {
                    print('Button #1 is clicked!');
                  }),
            ),
          ),

        ],
      ),
    );
  }

  Widget BottomWidget(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CommentTile(),
        CommentTile(),
        CommentTile(),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Leave a Comment",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 22.0),),
                SizedBox(height:20),
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Do you want to write something?",
                        hintStyle: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,color: Colors.black54,fontSize: 18.0),
                    ),
                  ),
                ),
              ),
                SizedBox(height:30),
                // ignore: deprecated_member_use
                RaisedButton(
                    padding: EdgeInsets.all(40),
                    child: Text("COMMENT",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,color: Colors.black54,fontSize: 20.0)),
                    onPressed: (){
                      print('Button #1 is clicked!');
                      //Navigator.of(context).pushNamed("your_route_name");
                    } ,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
                )
              ],
            ),
          ),
        )
      ],
    );
  }


}
Widget CommentTile() {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.account_circle,size: 50),
              title: Text('AshrafK.Salim'),

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
        ),

      ),
      SizedBox(height: 20,),
    ],
  );
}