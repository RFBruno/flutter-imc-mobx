// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContadorController on ContadorControllerBase, Store {
  late final _$contadorAtom =
      Atom(name: 'ContadorControllerBase.contador', context: context);

  @override
  int get contador {
    _$contadorAtom.reportRead();
    return super.contador;
  }

  @override
  set contador(int value) {
    _$contadorAtom.reportWrite(value, super.contador, () {
      super.contador = value;
    });
  }

  late final _$testeReactionAtom =
      Atom(name: 'ContadorControllerBase.testeReaction', context: context);

  @override
  String get testeReaction {
    _$testeReactionAtom.reportRead();
    return super.testeReaction;
  }

  @override
  set testeReaction(String value) {
    _$testeReactionAtom.reportWrite(value, super.testeReaction, () {
      super.testeReaction = value;
    });
  }

  late final _$ContadorControllerBaseActionController =
      ActionController(name: 'ContadorControllerBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$ContadorControllerBaseActionController.startAction(
        name: 'ContadorControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$ContadorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contador: ${contador},
testeReaction: ${testeReaction}
    ''';
  }
}
