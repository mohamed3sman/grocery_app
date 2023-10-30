import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/default_button.dart';
import 'package:grocery_app/views/account_view/widgets/account_custom_row.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 20, left: 25, right: 25),
      child: Column(
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/person.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mohamed Osman',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'mohamedabdoosman12@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const AccountCustomRow(
            icon: Icons.shopping_bag_outlined,
            text: 'Order',
          ),
          const AccountCustomRow(
            icon: Icons.location_on_outlined,
            text: 'Delivery Address',
          ),
          const AccountCustomRow(
            icon: Icons.payment_rounded,
            text: 'Payment Methods',
          ),
          const AccountCustomRow(
            icon: Icons.discount_outlined,
            text: 'Promo Code',
          ),
          const AccountCustomRow(
            icon: Icons.notifications_active_outlined,
            text: 'Notifications',
          ),
          const AccountCustomRow(
            icon: Icons.help_outline_rounded,
            text: 'Help',
          ),
          const AccountCustomRow(
            icon: Icons.info_outline_rounded,
            text: 'About',
          ),
          const Spacer(),
          DefaultButton(text: 'Logout', onPressed: () {})
        ],
      ),
    );
  }
}
