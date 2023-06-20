import 'package:ancor/view/create_announcementpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: CupertinoButton(
                color: Colors.blue,
                child: Text('FAZER SUA COTAÇÃO'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAnnouncementPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
