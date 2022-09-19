import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/inicial/inicial_page1.dart';
import 'package:get_rotas_nomeadas/pages/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute: GetPage(
        name: '/404',
        page: () => const RotaNaoEncontradaPage(),
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(
          name: '/inicial/page1',
          page: () => const InicialPage1(),
        )
      ],
    );
  }
}
