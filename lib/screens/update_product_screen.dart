import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProcutScreen extends StatelessWidget {
  const UpdateProcutScreen({super.key});

  static String id = 'UpdateProductPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CustomTextFieldWidget(
              hintText: 'Product name',
              icon: Icon(Icons.edit),
            ),
            const SizedBox(height: 12),
            const CustomTextFieldWidget(
              hintText: 'Product description',
              icon: Icon(Icons.edit_note_rounded),
            ),
            const SizedBox(height: 12),
            const CustomTextFieldWidget(
              hintText: 'Product price',
              icon: Icon(Icons.price_check_rounded),
            ),
            const SizedBox(height: 12),
            const CustomTextFieldWidget(
              hintText: 'Product image',
              icon: Icon(Icons.image_outlined),
            ),
            const SizedBox(height: 16),
            CustomButtonWidget(
              text: 'Edit',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
