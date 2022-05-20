import 'package:raphael_3sir/pages/components/raphael_card.dart';
import 'package:raphael_3sir/pages/components/raphael_form.dart';
import 'package:flutter/material.dart';
import 'components/raphael_page.dart';
import 'model/autor_livro_model.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController autorController = TextEditingController();
  TextEditingController livroController = TextEditingController();
  FocusNode autorFocus = FocusNode();
  FocusNode livroFocus = FocusNode();

  List<autorLivro> autorLivroList = [
    /* autorLivro(autor: 'Thiago Nigro', livro: 'Do Mil ao Milhão'),
    autorLivro(autor: 'J. K. Rowling', livro: 'Harry Potter'),
    autorLivro(autor: 'Harlan Coben', livro: 'Não Fale com Estranhos'),
    autorLivro(autor: 'Yuval Noah harari', livro: 'Homo Deus'), */
  ];

  addNewRegister({required String autor, required String livro}) {
    setState(() {
      autorLivroList.insert(
        0,
        autorLivro(
          autor: autor,
          livro: livro,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Cadastre seu livro',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: StandardForm(
                label: 'Autor',
                focusNode: autorFocus,
                userInputController: autorController,
                onEditingComplete: () {
                  livroFocus.nextFocus();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: StandardForm(
                label: 'Livro',
                focusNode: livroFocus,
                userInputController: livroController,
              ),
            ),
            const SizedBox(height: 45),
            ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                shrinkWrap: true,
                itemCount: autorLivroList.length,
                itemBuilder: (context, index) {
                  var registrarLivro = autorLivroList[index];
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: raphaelCard(
                        leftText: registrarLivro.autor,
                        rightText: registrarLivro.livro,
                      ),
                    ),
                  );
                }),
            const SizedBox(height: 15),
          ],
        ),
      ),
      botao: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          addNewRegister(
              autor: autorController.text, livro: livroController.text);
        },
      ),
    );
  }
}
