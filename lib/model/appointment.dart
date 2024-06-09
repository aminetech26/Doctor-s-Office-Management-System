import 'package:flutter/material.dart';

class Appointment {
  String doctorName;
  String patientName;
  DateTime date;
  TimeOfDay time;
  String reason;

  Appointment({required this.doctorName, required this.patientName, required this.date, required this.time, required this.reason});

  factory Appointment.fromJson(Map<String, dynamic> json){
    return Appointment(
      doctorName: json['doctorName'],
      patientName: json['patientName'],
      date: DateTime.parse(json['date']),
      time: TimeOfDay.fromDateTime(DateTime.parse(json['time'])),
      reason: json['reason'],
    );
  }
  Map<String, dynamic> toJson(BuildContext context) => {
    'doctorName': doctorName,
    'patientName': patientName,
    'date': date.toIso8601String(),
    'time': time.format(context),
    'reason': reason,
  };

}