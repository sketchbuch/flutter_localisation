import 'package:flutter_localisation/l10n/app/localizations.dart';
import 'package:flutter_localisation/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      onGenerateTitle: (context) => AppLocalizations.of(context).title,
      supportedLocales: [
        const Locale('en', 'UK'),
        const Locale('de'),
      ],
      theme: themeData,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // If your widget contains many translations you can store a copy of the
    // of() function return in a variable and just append the translation name.
    // This makes it easier to read as you then do not have
    // AppLocalizations.of(context) every where. This must be
    // Done in the build function as it needs access to the context.
    AppLocalizations appLocalizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizations.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              appLocalizations.hello,
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}
