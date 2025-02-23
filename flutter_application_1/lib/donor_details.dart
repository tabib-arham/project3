import 'package:flutter/material.dart';

class DonorDetails extends StatelessWidget {
  final String name;
  final String bloodGroup;
  final String mobile;
  final String address;
  final String email;

  const DonorDetails({
    super.key,
    required this.name,
    required this.bloodGroup,
    required this.mobile,
    required this.address,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donor Details', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Blood Group: $bloodGroup', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Mobile: $mobile', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Address: $address', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Email: $email', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
