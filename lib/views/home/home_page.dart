import 'package:flutter/material.dart';
import 'package:webflutter/shared/app_drawer.dart';
import 'package:webflutter/shared/simple_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    if (_counter > 10) {
      showDialog<void>(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Alerta'),
          content: const SelectableText(
              'Você atingiu o limite, o contador será reiniciado.'),
          actions: [
            OutlinedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Ok')),
          ],
        ),
      );

      setState(() {
        _counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: SimpleAppBar(appbar: AppBar(), title: 'Início'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(
              'Você apertou o botão: $_counter x',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
