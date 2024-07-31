import 'package:contacts_list/pages/home_page.dart';
import 'package:contacts_list/theme/theme.dart';
import 'package:contacts_list/theme/util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactsListApp());
}

class ContactsListApp extends StatelessWidget {
  const ContactsListApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Open Sans", "Roboto");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorSchemeSeed: Colors.amber,
      // ),
      //theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      theme: theme.light(),
      home: const HomePage(),
    );
  }
}
