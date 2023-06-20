import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/api.dart';
import 'final_page.dart';

class CreateAnnouncementPage extends StatefulWidget {
  const CreateAnnouncementPage({Key? key}) : super(key: key);

  @override
  _CreateAnnouncementPageState createState() => _CreateAnnouncementPageState();
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        width: 3,
      ));
}

final formKey = GlobalKey<FormState>();
String name = "";

class _CreateAnnouncementPageState extends State<CreateAnnouncementPage> {
  final api = Api();
  final nome = TextEditingController();
  final datanasc = TextEditingController();
  final cpf = TextEditingController();
  final civil = TextEditingController();
  final endereco = TextEditingController();
  final principalcond = TextEditingController();
  final menorvintecinco = TextEditingController();
  final fabricacao = TextEditingController();
  final modelo = TextEditingController();
  final placa = TextEditingController();
  final chassi = TextEditingController();
  final combustivel = TextEditingController();
  final email = TextEditingController();
  final celular = TextEditingController();
  final wpp = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ANCOR SEGUROS'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Coloque seu nome completo ",
                    border: myinputborder()),
                controller: nome,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.cake),
                  labelText: "Coloque sua data de nascimento ",
                  border: myinputborder(),
                ),
                controller: datanasc,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.credit_card),
                  labelText: "CPF ",
                  border: myinputborder(),
                ),
                controller: cpf,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Estado civil ",
                  border: myinputborder(),
                ),
                controller: civil,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_city),
                  labelText: "Endereço ",
                  border: myinputborder(),
                ),
                controller: endereco,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Você é o principal condutor ",
                    border: myinputborder()),
                controller: principalcond,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Carro utilizado por pessoa menor de 25 anos",
                    border: myinputborder()),
                controller: menorvintecinco,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month_sharp),
                    labelText: "Coloque o ano de fabricacao de seu carro ",
                    border: myinputborder()),
                controller: fabricacao,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.car_rental_rounded),
                    labelText: "Coloque o modelo de seu carro  ",
                    border: myinputborder()),
                controller: modelo,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.menu_outlined),
                    labelText: "Coloque a placa de seu veiculo ",
                    border: myinputborder()),
                controller: placa,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.chair_alt_outlined),
                    labelText: "Coloque o chassi de seu veiculo ",
                    border: myinputborder()),
                controller: chassi,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.local_gas_station),
                    labelText: "Coloque o combustivel de seu veiculo",
                    border: myinputborder()),
                controller: combustivel,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Coloque seu email",
                    border: myinputborder()),
                controller: email,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.call),
                    labelText: "Coloque seu telefone ",
                    border: myinputborder()),
                controller: celular,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.call_outlined),
                    labelText: "Este telefone possui WhatsApp",
                    border: myinputborder()),
                controller: wpp,
              ),
              SizedBox(height: 60),
              CupertinoButton(
                color: Colors.blue,
                child: Text('Continuar'),
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    final snackBar = SnackBar(content: Text('Enviado'));
                    await api
                        .postAnnouncements(
                          nome: nome.text,
                          datanasc: datanasc.text,
                          cpf: cpf.text,
                          civil: civil.text,
                          endereco: endereco.text,
                          principalcond: principalcond.text,
                          menorvintecinco: menorvintecinco.text,
                          fabricacao: fabricacao.text,
                          modelo: modelo.text,
                          placa: placa.text,
                          chassi: chassi.text,
                          combustivel: combustivel.text,
                          email: email.text,
                          celular: celular.text,
                          wpp: wpp.text,
                        )
                        .whenComplete(() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FinalPage())));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
