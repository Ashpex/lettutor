class User {
  final String name;
  final String email;
  final String avatar;

  User({
    required this.name,
    required this.email,
    required this.avatar,
  });

  static final data = User(
      name: 'Vy Bui',
      email: 'vyfithcmus@gmail.com',
      avatar: 'assets/images/logo.png');
}
