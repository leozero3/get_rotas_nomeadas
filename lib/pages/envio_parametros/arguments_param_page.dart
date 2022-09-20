import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamPage extends StatelessWidget {
  const ArgumentsParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> arguments = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Param Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arguments['nome'] ?? 'nome nao encontrado'),
            Text(arguments['curso'] ?? 'curso nao encontrado'),
          ],
        ),
      ),
    );
  }
}
