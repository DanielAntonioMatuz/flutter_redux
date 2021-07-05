import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:upwind_redux/pages/about.dart';
import 'package:upwind_redux/pages/home.dart';
import 'package:upwind_redux/pages/settings.dart';
import 'package:upwind_redux/redux/reducers.dart';
import 'package:upwind_redux/model/app_state.dart';

void main() {
  final _initalState = AppState(sliderFontSize: 0.5);
  final Store<AppState> _store =
        Store<AppState>(reducer, initialState: _initalState);

  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {

  final Store<AppState> store;

  MyApp({required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/settings': (context) => Settings(),
      },
      theme: ThemeData.dark(),
      ),
      
    );
  }
}
