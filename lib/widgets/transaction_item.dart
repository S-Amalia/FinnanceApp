import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({super.key, required this.transaction});

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Food':
        return const Color(0xFFFFC107);
      case 'Travel':
        return const Color(0xFF42A5F5);
      case 'Health':
        return const Color(0xFF66BB6A);
      case 'Event':
        return const Color(0xFFAB47BC);
      case 'Income':
        return const Color(0xFF26C6DA);
      default:
        return Colors.grey;
    }
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Food':
        return Icons.fastfood;
      case 'Travel':
        return Icons.directions_car;
      case 'Health':
        return Icons.health_and_safety;
      case 'Event':
        return Icons.event;
      case 'Income':
        return Icons.attach_money;
      default:
        return Icons.money;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getCategoryColor(transaction.category);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: color.withOpacity(0.15),
            child: Icon(_getCategoryIcon(transaction.category), color: color),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              transaction.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2F3A4C),
              ),
            ),
          ),
          Text(
            transaction.amount,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: transaction.amount.startsWith('-')
                  ? Colors.redAccent
                  : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
