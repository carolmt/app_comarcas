import 'package:flutter/material.dart';
import 'ClimaPage.dart';

class DetallesComarcaPage extends StatelessWidget {
  final Map<String, dynamic> comarca;

  DetallesComarcaPage({Key? key, required this.comarca}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(comarca['comarca']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                comarca['img'],
                width: 500,
                height: 500,
            ),
            Text(
              comarca['comarca'],
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Capital: ${comarca['capital']}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              comarca['desc'],
              style: TextStyle(fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.cloud),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClimaPage(comarca: comarca)),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.info, color: Colors.blue),
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}