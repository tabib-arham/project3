import 'package:flutter/material.dart';

class DonorList extends StatelessWidget {
  const DonorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donor List', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          donorCard('Tabib', 'O+'),
          donorCard('Tasnim', 'O-'),
          donorCard('Ali', 'B+'),
          donorCard('Ana', 'AB-'),
        ],
      ),
    );
  }
}

/// Function to create a donor card
Widget donorCard(String name, String bloodGroup) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 10),
    elevation: 4,
    child: ListTile(
      contentPadding: const EdgeInsets.all(16.0),
      title: Text(
        name,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Blood Group: $bloodGroup',
        style: const TextStyle(fontSize: 16),
      ),
      trailing: ElevatedButton(
        onPressed: () {
          // Future action for "Details" button
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text('Details', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
}
