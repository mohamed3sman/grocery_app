import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/custom_cart_product.dart';
import 'package:grocery_app/shared/components/default_button.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:grocery_app/views/cart_view/widgets/bottom_sheet_custom_container.dart';
import 'package:grocery_app/views/paid_successfully_view/paid_successfully_view.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.grey,
              endIndent: 0,
              height: 0.5,
              indent: 0,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const CustomCartProduct(
                    productImage: 'assets/images/pepper.png',
                    productName: 'Bell Pepper Red',
                    productUnit: '1Kg',
                    productPrice: 1.99,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Divider(
                    color: Colors.grey,
                    endIndent: 0,
                    height: 0.5,
                    indent: 0,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CustomCartProduct(
                    productImage: 'assets/images/egg.png',
                    productName: 'Egg Chicken Red',
                    productUnit: '4Pcs',
                    productPrice: 1.99,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Divider(
                    color: Colors.grey,
                    endIndent: 0,
                    height: 0.5,
                    indent: 0,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CustomCartProduct(
                    productImage: 'assets/images/banana.png',
                    productName: 'Organic Bananas',
                    productUnit: '2Kg',
                    productPrice: 1.99,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Divider(
                    color: Colors.grey,
                    endIndent: 0,
                    height: 0.5,
                    indent: 0,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CustomCartProduct(
                    productImage: 'assets/images/ginger.png',
                    productName: 'Ginger',
                    productUnit: '250g',
                    productPrice: 1.99,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultButton(
                    text: 'Go to Chackout',
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Checkout',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Icon(
                                          Icons.close,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                    endIndent: 0,
                                    height: 0.5,
                                    indent: 0,
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: Column(
                                      children: [
                                        const CheckoutBottomSheetContainer(
                                          title: 'Delivery',
                                          subTitle: 'Select Method',
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Divider(
                                            color: Colors.grey,
                                            endIndent: 0,
                                            height: 0.5,
                                            indent: 0,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Payment',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black
                                                      .withOpacity(0.6)),
                                            ),
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.payment_rounded,
                                                  size: 30,
                                                  color: primaryColor,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Divider(
                                            color: Colors.grey,
                                            endIndent: 0,
                                            height: 0.5,
                                            indent: 0,
                                          ),
                                        ),
                                        const CheckoutBottomSheetContainer(
                                          title: 'Promo Code',
                                          subTitle: 'Pick discount',
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Divider(
                                            color: Colors.grey,
                                            endIndent: 0,
                                            height: 0.5,
                                            indent: 0,
                                          ),
                                        ),
                                        const CheckoutBottomSheetContainer(
                                          title: 'Total Cost',
                                          subTitle: '\$13.97',
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        DefaultButton(
                                            text: 'Place Order',
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return const PaidSuccessView();
                                              }));
                                            })
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
