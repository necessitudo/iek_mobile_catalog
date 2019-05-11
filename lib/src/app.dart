import 'package:flutter/material.dart';
import 'package:iek_mobile_catalog/src/ui/bottom_navigation.dart';
import 'ui/group_ddp_list.dart';
import 'ui/movie_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        //body: MovieList(),
        body: GroupdDDPList(),
        bottomNavigationBar: BotNavBar(),
      ),
    );
  }
}
