import 'package:flutter/material.dart';

class AddReminderScreen extends StatelessWidget {
  final VoidCallback onBack;
  const AddReminderScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: onBack, icon: const Icon(Icons.chevron_left)),
            const Text('Set Reminder', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            _label("MEDICINE NAME"),
            const TextField(
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(hintText: 'e.g. Ibuprofen', border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_label("DOSE"), const TextField(decoration: InputDecoration(hintText: '1 Pill'))])),
                const SizedBox(width: 24),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_label("TIME"), const TextField(decoration: InputDecoration(hintText: '08:00 AM'))])),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity, height: 65,
              child: ElevatedButton(
                onPressed: onBack,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF5F5F5),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: const Text('SAVE REMINDER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _label(String text) => Text(text, style: const TextStyle(fontSize: 10, letterSpacing: 2, color: Colors.grey));
}