
import 'package:flutter/material.dart';
import 'package:saga_ebook_technical_round/ReviewPage.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: [
          Container(
            height: size.height*.50,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.black45,
                borderRadius: new BorderRadius.only(
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topLeft ,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios,size: 30.0,),
                      onPressed:(){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                SizedBox(height:size.height*.20),
                Text("Beauty and the Beast!",
                  style: TextStyle(fontSize: 30.0,fontFamily: 'Raleway',fontWeight: FontWeight.w700),),
                Text("By Walt Disney"),
                SizedBox(height:70.0),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Text("Rating",style: TextStyle(color: Colors.white,fontSize: 12.0),),
                          Text("55",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 12.0),),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Text("Page",style: TextStyle(color: Colors.white,fontSize: 12.0),),
                          Text("220",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 12.0),),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Text("Views",style: TextStyle(color: Colors.white,fontSize: 12.0),),
                          Text("18210",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 12.0),),
                        ],
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: size.width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [


                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              padding: EdgeInsets.all(20),
                              child: Text("Buy for 62.8 \$ ",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20.0)),
                              onPressed: (){
                                print('Button #1 is clicked!');
                                //Navigator.of(context).pushNamed("your_route_name");
                              } ,
                              color: Colors.pinkAccent,
                              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
                          ),
                        ),
                        Text("Summary",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 40.0),),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60.0,0.0,60.0,0.0),
                          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              CommentTile(),
                              CommentTile(),
                              ListTile(
                                leading: Icon(Icons.account_circle_sharp,size: 70.0,),
                                title: Text("Flower Books",style: TextStyle(fontFamily: 'Raleway',color: Colors.black,fontSize: 20.0)),
                                trailing: Icon(Icons.check_circle,color: Colors.blueAccent,),
                                // ignore: deprecated_member_use
                                subtitle: RaisedButton(
                                    padding:const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0) ,
                                    child: Text("FOLLOW",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20.0)),
                                    onPressed: (){
                                      print('Button #1 is clicked!');
                                      //Navigator.of(context).pushNamed("your_route_name");
                                    } ,
                                    color: Colors.black87,
                                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                  ),
                )
              ],
            ),
          )
        ],
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
}
