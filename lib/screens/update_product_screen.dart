import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProcutScreen extends StatefulWidget {
  const UpdateProcutScreen({super.key});

  static String id = 'UpdateProductPage';

  @override
  State<UpdateProcutScreen> createState() => _UpdateProcutScreenState();
}

class _UpdateProcutScreenState extends State<UpdateProcutScreen> {
  String? productName, productDesc, productPrice, productImage;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Product'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                CustomTextFieldWidget(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product name',
                  icon: const Icon(Icons.edit),
                ),
                const SizedBox(height: 12),
                CustomTextFieldWidget(
                  onChanged: (data) {
                    productDesc = data;
                  },
                  hintText: 'Product description',
                  icon: const Icon(Icons.edit_note_rounded),
                ),
                const SizedBox(height: 12),
                CustomTextFieldWidget(
                  onChanged: (data) {
                    productPrice = data;
                  },
                  hintText: 'Product price',
                  textType: TextInputType.number,
                  icon: const Icon(Icons.price_check_rounded),
                ),
                const SizedBox(height: 12),
                CustomTextFieldWidget(
                  onChanged: (data) {
                    productImage = data;
                  },
                  hintText: 'Product image',
                  textType: TextInputType.url,
                  icon: const Icon(Icons.image_outlined),
                ),
                const SizedBox(height: 16),
                CustomButtonWidget(
                  text: 'Edit',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                      print('Sucsess');
                    } catch (e) {
                      print('lol error');
                      
                      print(e);
                    }
                    isLoading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService.updateProduct(
      title: productName ?? product.title,
      price: productPrice ?? product.price.toString(),
      description: productDesc ?? product.description,
      image: productImage ?? product.image,
      category: product.category,
      id: product.id,
    );
  }
}
