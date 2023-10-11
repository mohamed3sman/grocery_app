import 'package:flutter/material.dart';
import 'widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AccountViewBody(),
    );
  }
}
