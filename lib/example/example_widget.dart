import 'package:flutter/material.dart';
import 'package:key_veule/example/example_model.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({super.key});

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  final _model = ExampleWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: _model.setName,
                 child: Text('Save Name')
                 ),
                 ElevatedButton(
                  onPressed: _model.readName,
                  child: Text('readName')
                  ),
                  ElevatedButton(
                    onPressed: _model.setToken,
                     child: Text('saveToken')
                     ),
                     ElevatedButton(
                      onPressed: _model.readToken,
                       child: Text('readToken'))
            ],
          ),
        )
        ),
    );
  }
}