import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_imc_mobx/contador/contador_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key, required this.title});

  final String title;

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final controller = ContadorController();
  final disposers = [];
  @override
  void initState() {
    super.initState();
    final disposeAutorun = autorun((_) {
      //será executado sempre que um observable que estaja dentro do corpo seja alterado.
      log('******************* autorun *******************');
      log('${controller.contador}');
      log('******************* fim *******************');
    });

    final disposeReaction = reaction((_) => controller.testeReaction, (msg) {
      // Escuta sempre que ouvr mudança no atributo descrito no primeiro parametro dessa função
      log('******************* reaction *******************');
      log(controller.testeReaction);
      log('******************* fim *******************');
    });
    disposers.add(disposeAutorun);
    disposers.add(disposeReaction);
  }

  @override
  void dispose() {
    super.dispose();
    for (var disp in disposers) {
      disp();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você apertou o botão tantas vezes:',
            ),
            Observer(
              builder: (_) {
                return Text(
                  '${controller.contador}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            const SizedBox(height: 30),
            Observer(builder: (context) {
              return Text(controller.testeReaction);
            },)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
