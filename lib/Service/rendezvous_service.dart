import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rendezvous/modele/RendezVous.dart';

class RendezVousService {
  final String baseUrl = 'http://localhost:8084/api/RendezVous';

  // Méthode pour ajouter un rendez-vous
  Future<Map<String, dynamic>> ajouterRendezVous(int professionnelId, RendezVous rendezVous) async {
    final url = Uri.parse('$baseUrl/ajouter/$professionnelId');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode(rendezVous.toJson());

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Erreur: ${response.statusCode}, ${response.body}');
      }
    } catch (e) {
      throw Exception('Erreur lors de l\'ajout du rendez-vous: $e');
    }
  }
}
