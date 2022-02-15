import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:state_management/states/app/app_model.dart';
import 'package:state_management/states/app/app_reducers.dart';
import 'package:state_management/states/app/app_state.dart';
import 'package:state_management/views/product_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Store<AppState> store =
      Store<AppState>(appStateReducer, initialState: AppState.initialState());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: StoreConnector<AppState, AppModel>(
              converter: (store) => AppModel.create(store),
              builder: (context, AppModel appModel) => ProductList(
                title: 'Product state demo home page',
                model: appModel,
              ),
            )));
  }
}
