import 'package:flutter/material.dart';
import '../model/autor_livro_model.dart';
import 'raphael_card.dart';

class StandardPage extends StatelessWidget {
  final String title;
  final Widget body;
  final FloatingActionButton botao;

  StandardPage({
    required this.title,
    required this.body,
    required this.botao,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: botao,
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
        child: SingleChildScrollView(child: body),
      ),
    );
  }
}
