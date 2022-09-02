import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_1/EtapeScreen.dart';
import 'package:flutter_application_1/Etapes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/etape':
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                EtapeScreen(etape: settings.arguments as Etape),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.ease);
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                appBar: AppBar(title: Text("Error"), centerTitle: true),
                body: Center(child: Text("Page not found"))));
    }
  }
}
