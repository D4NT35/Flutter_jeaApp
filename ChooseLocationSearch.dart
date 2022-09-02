import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavBar.dart';
import 'package:get/get.dart';
import 'Etapes.dart';
import 'NavBar.dart';
import 'FlambeauEtapes.dart';



class Chooselocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<Chooselocation> {
  List<String> locations = [
    'London',
    'Berlin',
    'Cairo',
    'Nairobi',
    'Seoul',
    'Qatar',
    'Sudan',
    'Pakistan',
    'USA'
  ];
  late List<String> locationList;
  var locationDataList = <String>[];

  final TextEditingController _filter = TextEditingController();
  String _searchText = "";
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = Text('JEA App');

  void _searchPressed(String title) {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          style: setTextStyle(),
          controller: _filter,
          decoration: new InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              prefixIcon: new Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Search...',
              hintStyle: setTextStyle()),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text(title);
        _filter.clear();
        this._appBarTitle = Text('JEA App');
      }
    });
  }

  setTextStyle() {
    return TextStyle(color: Colors.white);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("object");
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          updateFilter(_searchText);
        });
      } else {
        setState(() {
          _searchText = _filter.text;
          updateFilter(_searchText);
        });
      }
    });
  }

  void updateFilter(String text){
    print("updated Text: ${text}");
    filterSearchResults(text);
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = <String>[];
    dummySearchList.addAll(locationList);
    print("List size : " + dummySearchList.length.toString());
    if(query.isNotEmpty) {
      List<String> dummyListData = <String>[];
      dummySearchList.forEach((item) {
        if(item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        locationDataList.clear();
        locationDataList.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        locationDataList.clear();
        locationDataList.addAll(locations);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    if (locationList == null) {
      locationList = <String>[];
      locationList.addAll(locations);
      locationDataList.addAll(locationList);
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: _searchIcon,
            onPressed: () {
              _searchPressed("Choose Location");
            },
            tooltip: "Search",
          )
        ],
        title: _appBarTitle == null ? Text('Choose a Location') : _appBarTitle,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locationDataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  title: Text(locationDataList[index]),
                  leading: CircleAvatar(),
                ),
              ),
            );
          }),
    );
  }
}