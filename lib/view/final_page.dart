import 'package:ancor/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80.0,
            ),
            Text(
              "DADOS CADASTRADOS",
              style: TextStyle(color: Colors.blue, fontSize: 28),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "ENTRAREMOS EM CONTATO O \nMAIS BREVE POSSÍVEL",
              style: TextStyle(color: Colors.blue, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            Image.asset(
              'assets/logo.png',
            ),
            SizedBox(height: 70.0),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: CupertinoButton(
                  color: Colors.blue,
                  child: Text('VOLTAR AO INÍCIO'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
