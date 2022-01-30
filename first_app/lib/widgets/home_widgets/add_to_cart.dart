// ignore: duplicate_ignore
// ignore_for_file: implementation_imports, duplicate_ignore

import 'package:first_app/models/cart.dart';
import 'package:first_app/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe, implementation_imports
import 'package:velocity_x/src/extensions/bool_ext.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/src/extensions/context_ext.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        isInCart = isInCart.toggle();
        if (!isInCart) {
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(catalog);
        }
      },
      style: ButtonStyle(
          // ignore: deprecated_member_use
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          )),
      child: isInCart
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
