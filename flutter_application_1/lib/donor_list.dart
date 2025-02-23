import 'package:flutter/material.dart';
import 'donor_details.dart'; // Import the new page

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
          donorCard(context, 'Tabib', 'O+', '017810xxxx', 'Dhaka, Bangladesh',
              'tabib@email.com'),
          donorCard(context, 'Tasnim', 'O-', '01819XXXXXX',
              'Cumilla, Bangladesh', 'tasnim@email.com'),
          donorCard(context, 'Ali', 'B+', '019562XXXXX', 'Sylhet, Bangladesh',
              'ali@email.com'),
          donorCard(context, 'Ana', 'AB-', '01678XXXXXX',
              'Rajshahi, Bangladesh', 'ana@email.com'),
        ],
      ),
    );
  }
}

/// Function to create a donor card
Widget donorCard(BuildContext context, String name, String bloodGroup,
    String mobile, String address, String email) {
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
          // Navigate to DonorDetails page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DonorDetails(
                name: name,
                bloodGroup: bloodGroup,
                mobile: mobile,
                address: address,
                email: email,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text('Details', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
}
