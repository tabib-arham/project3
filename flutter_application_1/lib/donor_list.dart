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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            donorCard('John Doe', 'A+'),
            donorCard('Jane Smith', 'O-'),
            donorCard('Mike Johnson', 'B+'),
            donorCard('Emily Davis', 'AB-'),
          ],
        ),
      ),
    );
  }

  Widget donorCard(String name, String bloodGroup) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text('Blood Group: $bloodGroup',
            style: const TextStyle(fontSize: 16)),
        trailing: ElevatedButton(
          onPressed: () {
            // Details action
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text('Details', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
