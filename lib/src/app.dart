import 'package:flutter/material.dart';
import 'package:iek_mobile_catalog/generated/i18n.dart';
import 'package:iek_mobile_catalog/src/ui/bottom_navigation.dart';
import 'ui/group_ddp_list.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) => S.of(context).app_name,
      localizationsDelegates: const [
        S.delegate,
        // You need to add them if you are using the material library.
        // The material components usses this delegates to provide default
        // localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        //body: MovieList(),
        body: GroupdDDPList(),
        bottomNavigationBar: BotNavBar(),
      ),
    );
  }
}
