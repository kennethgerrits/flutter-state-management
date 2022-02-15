import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/states/app/app_model.dart';
import 'package:state_management/states/app/app_state.dart';

class ProductForm extends StatelessWidget {
  const ProductForm({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
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
                  if (text != "") {
                    item.price = int.parse(text);
                  } else {
                    item.price = 0;
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    StoreConnector<AppState, AppModel>(
                        converter: (store) => AppModel.create(store),
                        builder: (context, appModel) =>
                            FloatingActionButton.extended(
                                onPressed: () {
                                  appModel.onUpdateProduct(item);
                                  Navigator.of(context).pop();
                                },
                                label: const Text("Submit")))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
