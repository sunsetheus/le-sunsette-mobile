import 'package:flutter/material.dart';
import 'package:le_sunsette/screens/list.dart';
import 'package:le_sunsette/screens/form.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;

  ShopItem(this.name, this.icon, this.color);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          if (item.name == "Tambah Item") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormPage(),
                ));
          } else if (item.name == "Daftar Item") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListPage(),
                ));
          }
        },

        borderRadius: BorderRadius.circular(12),
        child: Container(
          // Container untuk menyimpan Icon dan Text
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: item.color,
            boxShadow: [
              BoxShadow(spreadRadius: 3),
            ],
          ),
          padding: const EdgeInsets.all(0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 50.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
