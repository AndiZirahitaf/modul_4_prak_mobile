import 'package:flutter/material.dart';
import 'package:testing_modul/detail.dart' show DetailPage;
import 'package:testing_modul/models/data.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halo, ${widget.username}!')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (_, index) {
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
              leading: Image.network(products[index].image),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
            ),
          );
        },
      ),
    );
  }
}
