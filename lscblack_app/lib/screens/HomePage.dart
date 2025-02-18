import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight: 100,
        title: const Text('Patient Dashboard'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/profile'); // Navigate to Profile Screen
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            'https://media.licdn.com/dms/image/v2/D4D03AQEsOd8roQZrRg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1731268875551?e=1745452800&v=beta&t=WEXr5y9eqUGyVnGxK0ESV3-sU977v7FSBMuO4gJRo9Q',
                          ), // Profile Image
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Loue Sauveur Christian',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text('Patient ID: #123456',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),

            const SizedBox(height: 20),

            // Quick Actions
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                _buildActionTile(
                    'Appointments', Icons.calendar_today, Colors.green),
                _buildActionTile(
                    'Prescriptions', Icons.local_pharmacy, Colors.blue),
                _buildActionTile(
                    'Medical History', Icons.article, Colors.orange),
                _buildActionTile('Messages', Icons.mail, Colors.red),
              ],
            ),

            const SizedBox(height: 20),

            // Recent Appointments Section
            const Text('Recent Appointments',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.medical_services, color: Colors.blue),
                title: const Text('Dr. John Doe - Cardiologist'),
                subtitle: const Text('Feb 20, 2025 - 10:00 AM'),
                trailing: const Icon(Icons.arrow_forward_ios,
                    size: 16, color: Colors.grey),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for Action Tiles
  Widget _buildActionTile(String title, IconData icon, Color color) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: InkWell(
        onTap: () {}, // Add navigation or functionality
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: color),
            const SizedBox(height: 10),
            Text(title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
