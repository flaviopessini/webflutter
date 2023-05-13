import 'package:flutter/material.dart';
import 'package:webflutter/shared/app_drawer.dart';
import 'package:webflutter/shared/simple_app_bar.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: SimpleAppBar(appbar: AppBar(), title: 'Contatos'),
      body: Container(),
    );
  }
}
