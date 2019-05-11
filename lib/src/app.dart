import 'package:flutter/material.dart';
import 'package:iek_mobile_catalog/src/ui/bottom_navigation.dart';
import 'localizations.dart';
import 'ui/group_ddp_list.dart';
import 'ui/movie_list.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale("en"), Locale("ru")],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context).title,
      theme: ThemeData.light(),
      home: Scaffold(
        //body: MovieList(),
        body: GroupdDDPList(),
        bottomNavigationBar: BotNavBar(),
      ),
    );
  }
}
