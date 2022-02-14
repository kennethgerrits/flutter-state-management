import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:state_management/main.dart';
import 'package:state_management/models/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductForm extends HookConsumerWidget {
  const ProductForm({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Navigation")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Title',
              ),
              initialValue: item.name,
              onChanged: (text) {
                item.name = text;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Description',
              ),
              initialValue: item.description,
              onChanged: (text) {
                item.description = text;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Description',
              ),
              initialValue: item.price.toString(),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: (text) {
                item.price = int.parse(text);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () {
                      ref.read(productListProvider.notifier).updateProduct(item.copyWith());
                      Navigator.pop(context, false);
                    } ,
                    label: const Text("Submit"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
