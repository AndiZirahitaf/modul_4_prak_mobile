import 'package:flutter/material.dart';
import 'detail.dart';
import 'models/data.dart';

class HomePage extends StatelessWidget {
  final String nama;
  const HomePage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halo!, $nama!',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(productIndex: index),
                ),
              );
            },

            child: ListTile(
              title: Text(products[index].name),
              subtitle: Text('Rp ${products[index].price}'),
              leading: Image.network(
                products[index].image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
            ),
          );
        },
      ),
    );
  }
}
