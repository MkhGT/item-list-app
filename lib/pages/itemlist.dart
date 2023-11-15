import 'package:flutter/material.dart';
import 'package:item_list_app/components/itemData.dart';
import 'package:item_list_app/color-palette/palette.dart';

class itemDashboard extends StatefulWidget {
  const itemDashboard({super.key});

  @override
  State<itemDashboard> createState() => _itemDashboardState();
}

class _itemDashboardState extends State<itemDashboard> {
  TextEditingController _inputController = TextEditingController();
  final List<Product> products = [
    Product(id: 1, name: 'Produk 1', price: 10000),
    Product(id: 2, name: 'Produk 2', price: 20000),
    Product(id: 3, name: 'Produk 3', price: 30000),
    Product(id: 4, name: 'Produk 4', price: 40000),
    Product(id: 5, name: 'Produk 5', price: 50000),
    Product(id: 6, name: 'Produk 6', price: 60000),
    Product(id: 7, name: 'Produk 7', price: 70000),
    Product(id: 8, name: 'Produk 8', price: 80000),
    Product(id: 9, name: 'Produk 9', price: 90000),
    Product(id: 10, name: 'Produk 10', price: 100000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item-List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.refresh),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _inputController,
              decoration: InputDecoration(
                  labelText: 'Filter Produk',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.clear,
                    ),
                    onPressed: () {
                      _inputController.clear();
                    },
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, int index) {
                return Container(
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${products[index].id}'),
                    ),
                    title: Text(products[index].name),
                    subtitle: Text('Harga: Rp ${products[index].price}'),
                    trailing: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                );
              },
              itemCount: products.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        splashColor: Palette.gradient1,
        hoverColor: Palette.gradient2,
        onPressed: () {
          // Panggil fungsi untuk menambahkan produk baru
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
