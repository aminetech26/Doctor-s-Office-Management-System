class Doctor {
  String name;
  String email;
  String password;
  String expertise;

  Doctor({required this.name, required this.email, required this.password, required this.expertise});

  factory Doctor.fromJson(Map<String, dynamic> json){
    return Doctor(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      expertise: json['expertise'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    'expertise': expertise,
  };
}