class MedicalHistory {

  String patientName;
  List<String> diagnoses;
  List<String> treatments;
  List<String> notes;

  MedicalHistory({required this.patientName, required this.diagnoses, required this.treatments, required this.notes});

  factory MedicalHistory.fromJson(Map<String, dynamic> json){
    return MedicalHistory(
      patientName: json['patientName'],
      diagnoses: List<String>.from(json['diagnoses']),
      treatments: List<String>.from(json['treatments']),
      notes: List<String>.from(json['notes']),
    );
  }

  Map<String, dynamic> toJson() => {
    'patientName': patientName,
    'diagnoses': diagnoses,
    'treatments': treatments,
    'notes': notes,
  };
}