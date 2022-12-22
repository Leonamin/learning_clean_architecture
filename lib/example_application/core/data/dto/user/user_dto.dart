class UserDTO {
  UserDTO({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.occupation,
  });

  int id;
  String? email;
  String? firstName;
  String? lastName;
  String? occupation;

  factory UserDTO.fromJson(Map<String, dynamic> json) => UserDTO(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        occupation: json["occupation"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "occupation": occupation,
      };
}
