import 'package:flutter/material.dart';
import 'package:flutter_imc_mobx/observables/list/observablelist_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ObservablelistPage extends StatelessWidget {
  ObservablelistPage({super.key});

  final controller = ObservablelistController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Observable List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (_) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final product = controller.products[index];
                    return CheckboxListTile(
                      value: false,
                      onChanged: (value) {},
                      title: Text(product.name),
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
