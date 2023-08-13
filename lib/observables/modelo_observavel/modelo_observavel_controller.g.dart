// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelo_observavel_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ModeloObservavelController on _ModeloObservavelControllerBase, Store {
  late final _$productsAtom =
      Atom(name: '_ModeloObservavelControllerBase.products', context: context);

  @override
  ObservableList<ProductStore> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductStore> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$_ModeloObservavelControllerBaseActionController =
      ActionController(
          name: '_ModeloObservavelControllerBase', context: context);

  @override
  void loadProducts() {
    final _$actionInfo = _$_ModeloObservavelControllerBaseActionController
        .startAction(name: '_ModeloObservavelControllerBase.loadProducts');
    try {
      return super.loadProducts();
    } finally {
      _$_ModeloObservavelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addProduct() {
    final _$actionInfo = _$_ModeloObservavelControllerBaseActionController
        .startAction(name: '_ModeloObservavelControllerBase.addProduct');
    try {
      return super.addProduct();
    } finally {
      _$_ModeloObservavelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct() {
    final _$actionInfo = _$_ModeloObservavelControllerBaseActionController
        .startAction(name: '_ModeloObservavelControllerBase.removeProduct');
    try {
      return super.removeProduct();
    } finally {
      _$_ModeloObservavelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toSelect(int index) {
    final _$actionInfo = _$_ModeloObservavelControllerBaseActionController
        .startAction(name: '_ModeloObservavelControllerBase.toSelect');
    try {
      return super.toSelect(index);
    } finally {
      _$_ModeloObservavelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
