import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavBar.dart';
import 'package:get/get.dart';
import 'Etapes.dart';
import 'NavBar.dart';
import 'FlambeauEtapes.dart';

//import 'package:cached_network_image/cached_network_image.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Icon _cusIcon = Icon (Icons.search,
                  );
  //Icon cusIcon2 = Icon (Icons.clear,
     //             color: Colors.white54, );

  Widget _cusSearchBar = Text('JEA App');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
          drawer: NavigationDrawer(),
          appBar: AppBar(
            title: _cusSearchBar,
            actions: [
              IconButton(
                  icon: _cusIcon,
                  onPressed: (){
                    setState((){
                       if(this._cusIcon.icon == Icons.search){
                         this._cusIcon = Icon (Icons.clear,
                           color: Colors.white54, );
                         this._cusSearchBar = MyTextField();

                       }
                       else {
                         this._cusIcon = Icon (Icons.search);
                         this._cusSearchBar=Text ('JEA App');
                       }
                      });
                  },
              )
            ],
            backgroundColor: Colors.green,
            bottom: TabBar(

              indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              tabs:[
                Tab(
                    child: Container(
                      child:Text(
                        "Flambeau",
                        style: TextStyle(fontWeight: FontWeight.w500)
                      ),
                  ),
                ),
                Tab(

                  child: Container(
                    child:Text(
                      "Lumière",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Tab(

                  child: Container(
                    child:Text(
                      "Comité",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            ),
          body:
          Expanded(
            child: TabBarView(
              children:[
                FlambeauEtapes(),
                FlambeauEtapes(),
                FlambeauEtapes(),
              ]
            ),
          )
      ),
    );
  }


}

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.go,
      decoration: InputDecoration(
        prefixIcon: new Icon(
          Icons.search,
          color: Colors.white,
        ),
        hintText: 'Search...',
        hintStyle: TextStyle(
          color:Colors.white54,
          fontSize: 16.0,
        ),
        border: InputBorder.none,
      ),
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
      ),
    );;
  }
}









