import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionModel('Capcin', '-Rp5.000', 'Food'),
      TransactionModel('Gober', '-Rp25.000', 'Travel'),
      TransactionModel('Padel Membership', '-Rp150.000', 'Health'),
      TransactionModel('Concert Ticket', '-Rp60.000', 'Event'),
      TransactionModel('Penjualan', '+Rp5.000.000', 'Income'),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Finance Mate'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 64,
        titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Greeting
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome back, Amalia 👋',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F3A4C),
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Track your spending and stay in control 💰',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),

            // Title
            Text(
              'My Cards',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),

            // Banner Cards
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AtmCard(
                    bankName: 'Bank BRI',
                    cardNumber: '**** 2345',
                    balance: 'Rp12.500.000',
                    color1: Theme.of(context).colorScheme.primary,
                    color2: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  AtmCard(
                    bankName: 'Bank BCA',
                    cardNumber: '**** 8765',
                    balance: 'Rp5.350.000',
                    color1: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.9),
                    color2: Theme.of(
                      context,
                    ).scaffoldBackgroundColor.withOpacity(0.9),
                  ),
                  AtmCard(
                    bankName: 'Bank Mandiri',
                    cardNumber: '**** 9876',
                    balance: 'Rp3.200.000',
                    color1: Theme.of(context).colorScheme.primary,
                    color2: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  AtmCard(
                    bankName: 'Bank BNI',
                    cardNumber: '**** 5678',
                    balance: 'Rp4.750.000',
                    color1: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.85),
                    color2: Theme.of(
                      context,
                    ).scaffoldBackgroundColor.withOpacity(0.85),
                  ),
                  AtmCard(
                    bankName: 'Bank Kong',
                    cardNumber: '**** 5678',
                    balance: 'Rp9.800.000',
                    color1: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.85),
                    color2: Theme.of(
                      context,
                    ).scaffoldBackgroundColor.withOpacity(0.85),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Grid Menu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: const [
                  Expanded(
                    child: GridMenuItem(
                      icon: Icons.health_and_safety,
                      label: 'Health',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GridMenuItem(
                      icon: Icons.travel_explore,
                      label: 'Travel',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GridMenuItem(icon: Icons.fastfood, label: 'Food'),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GridMenuItem(icon: Icons.event, label: 'Event'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Transaction List
            Text(
              'Recent Transactions',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionItem(transaction: transactions[index]);
              },
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add, color: Color.fromARGB(255, 8, 8, 8)),
      ),
    );
  }
}
