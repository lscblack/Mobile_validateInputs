import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight: 100,
        title: const Text('Profile'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Add functionality to edit profile
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Center(
              child: Column(
                children:  [
                  CircleAvatar(
                    radius: 50,
                    child: Image.network('https://media.licdn.com/dms/image/v2/D4D03AQEsOd8roQZrRg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1731268875551?e=1745452800&v=beta&t=WEXr5y9eqUGyVnGxK0ESV3-sU977v7FSBMuO4gJRo9Q'), // Replace with actual image
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Loue Sauveur Christian',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Patient ID: #123456', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Personal Information
            _buildSectionTitle('Personal Information'),
            _buildInfoRow(Icons.phone, 'Phone', '+123 456 7890'),
            _buildInfoRow(Icons.email, 'Email', 'l.christian@alustudent.com'),
            _buildInfoRow(Icons.cake, 'Date of Birth', 'Jan 1, 2025'),
            _buildInfoRow(Icons.person, 'Gender', 'Male'),
            _buildInfoRow(Icons.bloodtype, 'Blood Type', 'B-'),

            const SizedBox(height: 20),

            // Medical Information
            _buildSectionTitle('Medical Information'),
            _buildInfoRow(Icons.healing, 'Allergies', 'None'),
            _buildInfoRow(Icons.medical_services, 'Medications', 'None'),
            _buildInfoRow(Icons.contact_emergency, 'Emergency Contact', '+987 654 3210'),

            const SizedBox(height: 20),

            // Edit Profile Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add profile editing functionality
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text('Edit Profile', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),

    );
  }

  // Section Title Widget
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Info Row Widget
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value),
      ),
    );
  }
}
