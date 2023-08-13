import 'package:flutter/material.dart';
import 'package:flutter_imc_mobx/observables/list/observablelist_controller.dart';
import 'package:flutter_imc_mobx/observables/modelo_observavel/modelo_observavel_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ModeloObservavelPage extends StatelessWidget {
  ModeloObservavelPage({super.key});

  final controller = ModeloObservavelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modelo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (_) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final productStore = controller.products[index];
                    return Observer(
                      builder: (_) {
                        return CheckboxListTile(
                          value: productStore.selected,
                          onChanged: (_) {
                            controller.toSelect(index);
                          },
                          title: Text(productStore.product.name),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  controller.addProduct();
                },
                child: const Text('Adicionar'),
              ),
              TextButton(
                onPressed: () {
                  controller.removeProduct();
                },
                child: const Text('Remover'),
              ),
              TextButton(
                onPressed: () {
                  controller.loadProducts();
                },
                child: const Text('Carregar'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
