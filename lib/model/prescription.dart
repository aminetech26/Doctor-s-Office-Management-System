class Prescription {
  String patientName;
  String medicationName;
  String dosage;
  String frequency;
  DateTime startDate;
  DateTime endDate;

  Prescription({required this.patientName, required this.medicationName, required this.dosage, required this.frequency, required this.startDate, required this.endDate});

  factory Prescription.fromJson(Map<String, dynamic> json){
    return Prescription(
      patientName: json['patientName'],
      medicationName: json['medicationName'],
      dosage: json['dosage'],
      frequency: json['frequency'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
    );
  }

  Map<String, dynamic> toJson() => {
    'patientName': patientName,
    'medicationName': medicationName,
    'dosage': dosage,
    'frequency': frequency,
    'startDate': startDate.toIso8601String(),
    'endDate': endDate.toIso8601String(),
  };
}