import 'package:app_comarcas/DetallesComarcaPage.dart';
import 'package:flutter/material.dart';
import 'ClimaPage.dart';
import 'comarques.dart';

class ComarquesPage extends StatelessWidget {
  final Map<String, dynamic> provincia;

  ComarquesPage({required this.provincia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comarques de ${provincia['provincia']}'),
      ),
      body: ListView.builder(
        itemCount: provincia['comarques'].length,
        itemBuilder: (context, index) {
          final comarca = provincia['comarques'][index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetallesComarcaPage(comarca: comarca)),
              );
            },
            child: Container(
              height: 200,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.network(
                    comarca['img'],
                    fit: BoxFit.cover,
                    width: 1500,
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      comarca['comarca'],
                      style: TextStyle(
                        fontFamily: 'Courgette',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}