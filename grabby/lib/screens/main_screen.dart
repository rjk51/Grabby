import 'package:flutter/material.dart';
import 'package:grabby/widgets/app_bar.dart';
import 'package:grabby/data/product_data.dart';
import 'package:grabby/widgets/product_card.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 0.4,
            center: Alignment.center,
            colors: <Color>[Color.fromARGB(60, 251, 255, 0), Color(0x00eaff00)],
          )
        ),
        child: Expanded(
          child: ListView(
            children: <Widget>[
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(product: product);
              },
            ),
          ],
          ),
        )
      ),
    );
  }
}