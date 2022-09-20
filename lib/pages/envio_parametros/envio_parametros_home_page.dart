import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Parametros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/envioParametros/arguments', arguments: {
                    'nome': 'Leo',
                    'curso': 'Flutter',
                  });
                },
                child: const Text('Arguments')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/envioParametros/arguments',
                      arguments: 'Parametro enviado pelo arguments');
                },
                child: const Text('Path Param')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/envioParametros/arguments',
                      arguments: 'Parametro enviado pelo arguments');
                },
                child: const Text('Quary Param')),
          ],
        ),
      ),
    );
  }
}
