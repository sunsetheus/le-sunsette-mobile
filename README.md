# le_sunsette

### Navigator tugas
1. [TUGAS 7](#7)

# <a id="7">Tugas 7</a>
## 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
`Stateless widged`: Widget yang bersifat statis, artinya tampilan pada stateless widget TIDAK DAPAT berubah walaupun terdapat interaksi pengguna maupun ketika menerima data. Contohnya adalah Icon, IconButton, Text, dan sebagainya.
<br>
`Stateful widget`: Widget yang bersifat dinamis, artinya tampilan pada stateful widget DAPAT berubah sesuai interaksi pengguna maupun ketika menerima data. Contohnya adalah CheckBox, Radio, Slider, InkWell, TextField, dan sebagainya.

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
<ul>
<li><b>Scaffold</b>: Mengimplementasikan basic material design seperti Drawer, SnackBar, ButtonNavigationBar, AppBar, FloatingActionButton, dan sebagainya</li>
<li><b>SingleChildScrollView</b>: Membuat tampilan yang scrollable jika terdapat child yang tidak muat pada layar</li>
<li><b>Padding</b>: Memberikan padding pada child</li>
<li><b>Column</b>: Menampilkan childnya secara vertikal (berbentuk kolom)</li>
<li><b>MaterialApp</b>: Sebagai starting point dari app yang memberikan theming dan aturan/design yang sudah di-default-kan oleh Material UI</li>
<li><b>InkWell</b>: Membuat tampilan tombol lebih responsif dengan adanya efek ripple ketika diklik</li>
<li><b>Container</b>: Menampung/membungkus sautu widget (seperti div pada HTML)</li>
<li><b>Center</b>: Menampilkan childnya di tengah</li>
<li><b>Icon</b>: Menampilkan Icon</li>
<li><b>GridView</b>: Menampilkan data / childnya dalam bentuk grid</li>
<li><b>Text</b>: Menampilkan text</li>
</ul>

## 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
<details>
    <summary>Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.</summary>
    
1) Buka direktori yang diinginkan untuk menyimpan proyek
2) Jalankan perintah berikut pada command line
    ```
    flutter create le_sunsette
    cd le_sunsette
    ```
3) Jalankan proyek dengan menulis perintah berikut pada command line
    ```
    flutter run
    ```
</details>

<details>
    <summary>Membuat tombol display dan snackbar</summary>

1) Buat file bernama `menu.dart` lalu masukkan kode berikut
    ```dart
    import 'package:flutter/material.dart';

    class ShopItem {
    final String name;
    final IconData icon;

    ShopItem(this.name, this.icon);
    }

    class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);
    final List<ShopItem> items = [
        ShopItem("Lihat Produk", Icons.checklist),
        ShopItem("Tambah Produk", Icons.add_shopping_cart),
        ShopItem("Logout", Icons.logout),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text(
            'Shopping List',
            ),
            backgroundColor: Colors.indigo,
        ),
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
                    'PBP Shop', // Text yang menandakan toko
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                // Grid layout
                GridView.count(
                    // Container pada card kita.
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ShopItem item) {
                    // Iterasi untuk setiap item
                    return ShopCard(item);
                    }).toList(),
                ),
                ],
            ),
            ),
        ),
        );
    }
    }

    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {super.key}); // Constructor

    @override
    Widget build(BuildContext context) {
        return Material(
        color: Colors.indigo,
        child: InkWell(
            // Area responsive terhadap sentuhan
            onTap: () {
            // TUGAS 7: Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
            },
            child: Container(
            // TUGAS 7: Container untuk menyimpan Icon dan Text
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
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
    ```

2) Update `main.dart` menjadi berikut
    ```dart
    import 'package:flutter/material.dart';
    import 'package:le_sunsette/menu.dart';

    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Le Sunsette',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
        ),
        home: MyHomePage(),
        );
    }
    }
    ```

3) Perkhatikan keterangan tambahan pada comment, seperti `TUGAS 7:` yang menjelaskan komponen sesuai kriteria tugas 7

</details>