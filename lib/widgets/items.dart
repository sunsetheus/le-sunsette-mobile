// import 'package:flutter/material.dart';
// import 'package:le_sunsette/screens/list.dart';

// class MenuItem {
//   final String name;
//   final int harga;
//   final int amount;
//   final String description;

//   static final List<MenuItem> defaultItems = [
//     MenuItem("Baked potato", 15000, 1, "just a baked potato"),
//     MenuItem("Creme brulee", 36000, 2, "no split no gain"),
//     MenuItem("Fried asparagus", 20000, 3, "chef oopsie fries"),
//   ];

//   MenuItem(this.name, this.harga, this.amount, this.description);

//   static MenuItem fromJson(d) {}
// }

// class ItemCard extends StatelessWidget {
//   final MenuItem item;

//   const ItemCard(this.item, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white38,
//       child: InkWell(
//         // Area responsive terhadap sentuhan
//         onTap: () {
//           // Memunculkan SnackBar ketika diklik
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(SnackBar(
//                 content: Text("Kamu telah menekan tombol ${item.name}!")));
//           if (item.name == "Tambah Item") {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const ListPage(),
//                 ));
//           }
//         },

//         borderRadius: BorderRadius.circular(12),
//         child: Container(
//           // Container untuk menyimpan Icon dan Text
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.white,
//             border: Border.all(
//               color: Colors.black, // Set your desired border color here
//               width: 2.0, // Set the border width
//             ),
//           ),
//           padding: const EdgeInsets.all(0),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Padding(padding: EdgeInsets.all(3)),
//                 Text(
//                   item.name,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.black),
//                 ),
//                 Text(
//                   item.harga.toString(),
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.black),
//                 ),
//                 Text(
//                   item.description,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
