import 'dart:developer';

import 'package:flutter_imc_mobx/models/product_model.dart';
import 'package:flutter_imc_mobx/observables/modelo_observavel/model/product_store.dart';
import 'package:mobx/mobx.dart';
part 'modelo_observavel_controller.g.dart';

class ModeloObservavelController = _ModeloObservavelControllerBase
    with _$ModeloObservavelController;

abstract class _ModeloObservavelControllerBase with Store {
  @observable
  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() {
    products.addAll([
      ProductStore(product: ProductModel(name: 'Produto 1'), selected: false),
      ProductStore(product: ProductModel(name: 'Produto 2'), selected: false),
      ProductStore(product: ProductModel(name: 'Produto 3'), selected: false),
      ProductStore(product: ProductModel(name: 'Produto 4'), selected: false),
    ]);
  }

  @action
  void addProduct() {
    products.add(
      ProductStore(product: ProductModel(name: 'Adiconado'), selected: false),
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

  @action
  void toSelect(int index){
    final productSelect = products[index].selected;
    products[index].selected = !productSelect;
  }
}
