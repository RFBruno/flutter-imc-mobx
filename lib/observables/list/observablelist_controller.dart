import 'dart:developer';

import 'package:flutter_imc_mobx/models/product_model.dart';
import 'package:mobx/mobx.dart';
part 'observablelist_controller.g.dart';

class ObservablelistController = ObservablelistControllerBase
    with _$ObservablelistController;

abstract class ObservablelistControllerBase with Store {
  @observable
  var products = <ProductModel>[].asObservable();

  @action
  void loadProducts() {
    products.addAll([
      ProductModel(name: 'Produto 1'),
      ProductModel(name: 'Produto 2'),
      ProductModel(name: 'Produto 3'),
      ProductModel(name: 'Produto 4'),
    ]);
  }

  @action
  void addProduct() {
    products.add(
      ProductModel(name: 'Adicionado'),
    );
  }

  @action
  void removeProduct() {
    try {
  products.removeLast();
} catch (e, s) {
  log('Erro ao remover', error: e, stackTrace: s);
}
  }
}
