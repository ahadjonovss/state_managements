import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/2-lesson/data/models/poduct_model/product_model.dart';
import 'package:state_managements/2-lesson/ui/products/widgets/product_item.dart';
import 'package:state_managements/2-lesson/view_model/products_view_model.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products Page"),),
      body: Consumer<ProductsViewModel>(
        builder: (context, myProvider, child) {
          if(myProvider.isLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(myProvider.products.isNotEmpty){
            return ListView.builder(
              shrinkWrap: true,
              itemCount: myProvider.products.length,
                itemBuilder: (context, index) => ProductItem(product: myProvider.products[index]),);
          }
          else{
            return const Text("Data yo'q");
          }

      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProductsViewModel>().getAllProducts();
        },
      ),
    );
  }
}
