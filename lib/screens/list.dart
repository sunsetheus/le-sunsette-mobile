import 'package:flutter/material.dart';
import 'package:le_sunsette/widgets/items.dart';
import 'package:le_sunsette/widgets/drawer.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Le Sunsette',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Daftar Menu Yang Dipesan', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),

              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                // padding: const EdgeInsets.all(200),
                padding:
                    const EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 0),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 10,
                shrinkWrap: true,
                children: MenuItem.defaultItems.map((MenuItem item) {
                  // Iterasi untuk setiap item
                  return ItemCard(item);
                }).toList(),
              ),
              // Row(
              //   children: itemsss.map((Item item){
              //     return Card(item);
              //   }).toList(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
