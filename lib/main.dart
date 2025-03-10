import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        primaryColor: Colors.blue.shade700,),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String,dynamic>> produk = [
  {
    "name": "Pintu Kayu Jati",
    "price": "Rp. 2.500.000 - 6.000.000",
    "imageUrl": "assets/images/Mengenal-Kayu-Jati-Jenis-Kelebihan-Dan-Kekurangannya-Untuk-Rumah-1-1170x658.jpeg"
  },
  {
    "name": "Jendela Klasik",
    "price": "Rp. 1.500.000 - 4.000.000",
    "imageUrl": "assets/images/Jendela-Garis-kotak-kotak-klasik-kayu.jpg"
  },
  {
    "name": "Lampu Gantung Vintage",
    "price": "Rp. 700.000 - 2.500.000",
    "imageUrl": "https://images.unsplash.com/photo-1511537190424-bbbab87ac5eb?q=80&w=2070&auto=format&fit=crop"
  },
  {
    "name": "Lantai Parket Kayu",
    "price": "Rp. 3.000.000 - 7.500.000",
    "imageUrl": "assets/images/tidak_ada_merk_lantai_kayu_solid_parket-parquet-parkit_jati_full05_rb7z35o8.jpg"
  },
  {
    "name": "Meja Kayu Antik",
    "price": "Rp. 1.800.000 - 5.500.000",
    "imageUrl": "assets/images/yfHHX9u11fIkWQJ7GfLSx2jzaFRw9mv7KV2jdVb7.jpg"
  },
  {
    "name": "Kursi Rotan Klasik",
    "price": "Rp. 900.000 - 3.000.000",
    "imageUrl": "data:image/jpeg;base64,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"
  },
  {
    "name": "Rak Dinding Besi",
    "price": "Rp. 500.000 - 1.800.000",
    "imageUrl": "data:image/jpeg;base64,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"
  },
  {
    "name": "Handle Pintu Klasik",
    "price": "Rp. 200.000 - 1.200.000",
    "imageUrl": "https://images.unsplash.com/photo-1567515004624-219c11d31b13?q=80&w=2070&auto=format&fit=crop"
  },
  {
    "name": "Cermin Hiasan Dinding",
    "price": "Rp. 1.000.000 - 4.500.000",
    "imageUrl": "https://images.unsplash.com/photo-1638740174723-8c8590b7436a?q=80&w=2070&auto=format&fit=crop"
  },
  {
    "name": "Cat Dinding Premium",
    "price": "Rp. 250.000 - 1.000.000",
    "imageUrl": "https://images.unsplash.com/photo-1611958963289-9a0baf2ea6bc?q=80&w=2070&auto=format&fit=crop"
  }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Alfitronik", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text("Home")),
                  TextButton(onPressed: () {}, child: const Text("Tools")),
                  TextButton(onPressed: () {}, child: const Text("Services")),
                ],
              )
            ],
          ),
        ),
      body : Column(
        children: [
          HeaderWidget(),
          UIWidget(),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Tampilkan 2 item per baris
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.4, // Atur proporsi grid agar lebih seimbang
              ), 
              itemCount: produk.length,
              itemBuilder: (context, index){
                return ProdukCard(
                  name: produk[index]["name"], 
                  price: produk[index]["price"],  
                  imageURL: produk[index]["imageUrl"] ?? ""
                  );
              }
              )
              )
    ]
    )
    );
  }
}

class HeaderWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: const Color.fromARGB(255, 13, 0, 61),
      child: const Center(
        child: Text("Alfitronik - Info Harga Restorasi Rumah Anda di Bekasi! 🏡",
        style: TextStyle(
          fontSize: 12, 
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
          ),
          )
    );
  }
}

class ProdukCard extends StatelessWidget{
  final String name;
  final String price;
  // final bool isFavorite; 
  final String imageURL;
  // final VoidCallback onPressed; 

const ProdukCard({required this.name, required this.price, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Card(
  margin: const  EdgeInsets.all(5),
  child: Padding(
    padding: const EdgeInsets.all(0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          height: 60,
          child: imageURL.startsWith('http')
              ? Image.network(imageURL, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported))
              : Image.asset(imageURL, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported)),
        ),
        const SizedBox(width: 10), // Jarak antara gambar dan teks
        Expanded(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(price),
            ],
          ),
        ),
    //     IconButton(
    //     icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, 
    //     color: isFavorite ? Colors.red : Colors.grey),
    //     onPressed: onPressed,
    // ),
      ],
    ),
  ),
);
}
}


class UIWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child : const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child:  TextField(
            decoration: InputDecoration(
            labelText: "Cari Barang",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search )
          ),
        ),),
      ],
      )
    );
  }
}




// class HomeScreen extends StatelessWidget {
//   final List<Map<String,String>> produk = [
//     {"name" : "Laptop", "price" : "Rp. 8.300.000"},
//     {"name" : "Komputer", "price" : "Rp. 3.800.000"},
//     {"name" : "Handphone", "price" : "Rp. 3.300.000"}
//     , {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"},
//    {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"}, {"name": "Laptop", "price": "Rp. 8.300.000"},
//   {"name": "Komputer", "price": "Rp. 3.800.000"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aplikasi Elektronik")),
//       body : Column(
//         children: [
//           HeaderWidget(),
//           Expanded(
//             child: ListView.builder(
//               itemCount: produk.length,
//               itemBuilder: (context , index){
//                 return ProdukCard(
//                   name: produk[index]["name"]!, 
//                   price: produk[index]["price"]!,
//                 );
//               }, 
//             ),
//       )
//     ]
//     )
//     );
//   }
// }


// class HeaderWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       color: const Color.fromARGB(255, 94, 223, 19),
//       child: Center(child: Text("Ini adalah toko kami", style: TextStyle(fontSize: 12, color: Colors.white ),),)
//     );
//   }
// }

// class ProdukCard extends StatelessWidget{
//   final String name;
//   final String price; 

//  const ProdukCard({required this.name, required this.price});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin : EdgeInsets.all(10),
//       child : ListTile(
//         title: Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
//         subtitle: Text(price),
//         trailing:  Icon(Icons.shopping_cart),
//       )
//     );
//   }
// }






// class ProductScreen extends StatelessWidget {
//   final List <Map <String, dynamic>> products = [
//     {'kode' : 'P001', 'nama' : 'Laptop', 'harga' : 1230000},
//     {'kode' : 'P001', 'nama' : 'Laptop', 'harga' : 1230000},
//     {'kode' : 'P001', 'nama' : 'Laptop', 'harga' : 1230000}
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Alfitho APP 123")),
//       body: Center(
//         child: DataTable(columns: [ DataColumn(label: Text('Kode')),
//         DataColumn(label: Text("Nama")),
//         DataColumn(label: Text("Harga"))
//          ], rows: products.map((product) => DataRow(cells: [
//           DataCell(Text(product['kode'])),
//           DataCell(Text(product['nama'])),
//           DataCell(Text(product['harga'].toString())),
//           ],
//           ),
//           )
//           .toList(),
//       ),
//       ),
//     );
//   }
// }




// class ListScreen extends StatelessWidget {
//   final List<String> items = ["Laptop", "Handphone", "Komputer"];
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: Text("Contoh List"),),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index){
//           return ListTile(
//             leading: Icon(Icons.devices_other),
//             title: Text(items[index]),
//           );
//         }
//       )
//     );
//   }
// }

