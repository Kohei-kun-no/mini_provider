import 'package:flutter/material.dart';
import 'package:mini_provider/count_mode/count_model.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountModel>(
      create: (context) => CountModel(),
      child: Consumer<CountModel>(
          builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text('Flutter Demo Home Page'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    CountText(),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: model.increment,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              )
          )
      ),
    );
  }
}

class CountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      /// context からModelの値が使える
      '${Provider.of<CountModel>(context).count}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}