import 'package:flutter/material.dart';
import 'comarques.dart';
import 'ComarquesPage.dart';

class ProvinciesPage extends StatelessWidget {
  final Map<String, dynamic> provinciesData;

  ProvinciesPage({required this.provinciesData});

  void _navigateToComarcasPage(BuildContext context, Map<String, dynamic> provincia) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ComarquesPage(provincia: provincia)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provincies'),
      ),
      body: ListView.builder(
        itemCount: provinciesData['provincies'].length,
        itemBuilder: (context, index) {
          final provincia = provinciesData['provincies'][index];
          return GestureDetector(
            onTap: () => _navigateToComarcasPage(context, provincia),
            child: Card(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(provincia['img']),
                    radius: 250,
                  ),
                  Text(
                    provincia['provincia'],
                    style: const TextStyle(
                      fontFamily: 'Courgette',
                      fontSize: 80,
                      color: Colors.white,
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