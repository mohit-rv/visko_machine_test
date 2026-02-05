class AppUser {
  final String uid;
  final String name;
  final String email;
  final String phone;
  final String imageUrl;

  AppUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.phone,
    required this.imageUrl,
  });

  factory AppUser.fromMap(String uid, Map<String, dynamic> map) {
    return AppUser(
      uid: uid,
      name: map['name'] ?? 'NA',
      email: map['email'] ?? 'NA',
      phone: map['phoneNumber'] ?? 'NA',
      imageUrl: map['photoUrl'] ?? 'NA',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phoneNumber': phone,
      'photoUrl': imageUrl,
      'createdAt': DateTime.now(),
    };
  }
}
