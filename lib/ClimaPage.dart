import 'package:flutter/material.dart';
import 'DetallesComarcaPage.dart';

class ClimaPage extends StatelessWidget {
  final Map<String, dynamic> comarca;

  ClimaPage({Key? key, required this.comarca}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima de ${comarca['comarca']}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 500, // Ajusta este valor para cambiar la altura de la imagen
              width: 500, // Ajusta este valor para cambiar la anchura de la imagen
              child: FittedBox(
                child: Image.asset('assets/clima.png'),
                fit: BoxFit.cover,
              ),
            ),
            Text('Población: ${comarca['poblacio']}'),
            Text('Latitud: ${comarca['coordenades'][0]}'),
            Text('Longitud: ${comarca['coordenades'][1]}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.cloud, color: Colors.blue),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(Icons.info),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetallesComarcaPage(comarca: comarca)),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}