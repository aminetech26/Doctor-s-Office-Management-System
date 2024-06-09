class Patient {
  String name;
  String email;
  String password;
  DateTime dob;
  String address;

  Patient({required this.name, required this.email, required this.password, required this.dob, required this.address});

  factory Patient.fromJson(Map<String, dynamic> json){
    return Patient(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      dob: DateTime.parse(json['dob']),
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    'dob': dob.toIso8601String(),
    'address': address,
  };
}