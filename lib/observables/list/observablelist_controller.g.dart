// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observablelist_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ObservablelistController on ObservablelistControllerBase, Store {
  late final _$productsAtom =
      Atom(name: 'ObservablelistControllerBase.products', context: context);

  @override
  ObservableList<ProductModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$ObservablelistControllerBaseActionController =
      ActionController(name: 'ObservablelistControllerBase', context: context);

  @override
  void loadProducts() {
    final _$actionInfo = _$ObservablelistControllerBaseActionController
        .startAction(name: 'ObservablelistControllerBase.loadProducts');
    try {
      return super.loadProducts();
    } finally {
      _$ObservablelistControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addProduct() {
    final _$actionInfo = _$ObservablelistControllerBaseActionController
        .startAction(name: 'ObservablelistControllerBase.addProduct');
    try {
      return super.addProduct();
    } finally {
      _$ObservablelistControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct() {
    final _$actionInfo = _$ObservablelistControllerBaseActionController
        .startAction(name: 'ObservablelistControllerBase.removeProduct');
    try {
      return super.removeProduct();
    } finally {
      _$ObservablelistControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
