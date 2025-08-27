import 'package:flutter/material.dart';

class RendezVousWidget extends StatelessWidget {
  final DateTime date;
  final String timeSlot;

  RendezVousWidget({required this.date, required this.timeSlot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Date: ${date.toLocal().toString().split(' ')[0]}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Time slot: $timeSlot',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ajouter la logique de réservation ici (API ou autre)
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Appointment booked successfully!')),
                );
                Navigator.pop(context);
              },
              child: Text('Confirm appointment'),
            ),
          ],
        ),
      ),
    );
  }
}
