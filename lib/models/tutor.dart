class Tutor {
  final String name;
  final String description;
  final String countryCode;
  final String countryName;
  final String avatar;
  final double rating;

  Tutor(
      {required this.name,
      required this.countryCode,
      required this.countryName,
      required this.avatar,
      required this.description,
      required this.rating});

  static final data = Tutor(
      name: 'Vy Bui',
      countryCode: 'vn',
      countryName: 'Viet Nam',
      avatar: 'assets/images/cat.png',
      rating: 4.9,
      description:
          'I am a teacher of English and a lecturer at a college in HCMC. I can help you to communicate better in English and be more confident to use English. For me, to learn is to you, so you will be given many chances to practice English...');
  static final data1 = Tutor(
      name: 'Vy Bui',
      countryCode: 'pt',
      countryName: 'Portugal',
      avatar: 'assets/images/cat.png',
      rating: 4.7,
      description:
          'Hello there! I am an Industrial Engineer in the profession but chose to do online teaching because I love to meet different learners. I am an outgoing person and I have this passion for dealing with different people and seeing...');
  static final data2 = Tutor(
      name: 'Cat',
      countryCode: 'vn',
      countryName: 'Viet Nam',
      avatar: 'assets/images/cat.png',
      rating: 3,
      description:
          'Being a teacher is what I live for. Making a difference in a students life, and seeing them progress and achieve their language goal, is the biggest pleasure in my life.');
  static final data3 = Tutor(
      name: 'Cat',
      countryCode: 'vn',
      countryName: 'Viet Nam',
      avatar: 'assets/images/cat.png',
      rating: 3.5,
      description:
          'Hello there! I am an Industrial Engineer in the profession but chose to do online teaching because I love to meet different learners. I am an outgoing person and I have this passion for dealing with different people and seeing...');
}
