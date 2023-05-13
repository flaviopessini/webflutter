import 'package:flutter/material.dart';
import 'package:webflutter/shared/app_drawer.dart';
import 'package:webflutter/shared/simple_app_bar.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: SimpleAppBar(appbar: AppBar(), title: 'Gerenciar contas'),
      body: Container(),
    );
  }
}
