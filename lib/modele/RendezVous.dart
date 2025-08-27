import 'package:flutter/foundation.dart';

class RendezVous {
  final int? appointmentId;
  final String? nomClient;
  final DateTime? date;
  final String? debut;
  final String? fin;
  final String? etat;
  final String? statut;

  RendezVous({
    this.appointmentId,
    required this.nomClient,
    required this.date,
    required this.debut,
    required this.fin,
    required this.etat,
    required this.statut,
  });

  // Convertir un objet JSON en un objet RendezVous
  factory RendezVous.fromJson(Map<String, dynamic> json) {
    return RendezVous(
      appointmentId: json['appointmentId'],
      nomClient: json['nomClient'],
      date: DateTime.parse(json['date']),
      debut: json['debut'],
      fin: json['fin'],
      etat: json['etat'],
      statut: json['statuts'],
    );
  }

  // Convertir un objet RendezVous en JSON
  Map<String, dynamic> toJson() {
    return {
      "nomClient": nomClient,
      "date": date?.toIso8601String(),
      "debut": debut,
      "fin": fin,
      "etat": etat,
      "statuts": statut,
    };
  }
}
