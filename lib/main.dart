import 'package:flutter/material.dart';
import 'package:flutter_imc_mobx/contador/contador_page.dart';
import 'package:flutter_imc_mobx/imc/imc_controller.dart';
import 'package:flutter_imc_mobx/imc/imc_page.dart';
import 'package:flutter_imc_mobx/observables/list/observablelist_page.dart';
import 'package:flutter_imc_mobx/observables/modelo_observavel/modelo_observavel_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOBX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ImcPage(),
    );
  }
}


