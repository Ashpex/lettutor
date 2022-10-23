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
      name: 'Thu Ha',
      countryCode: 'vn',
      countryName: 'Viet Nam',
      avatar: 'assets/images/cat.png',
      rating: 4.7,
      description:
          'Hi! My name is Thu ha. You can call me Stevia. I come from Hanoi. I really like English and I want to help others study English. I have passion for innovative teaching methods, such as learning by playing or reversal of roles in the classroom. People say that I am a great listener and communicator in general, and it is easy for me to win the hearts of children. But I honestly believe that I still have to improve on many things, if I am to become a great teacher one day. Nice to meet you!!!');
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
          'Hi! My name is Thu ha. You can call me Stevia. I come from Hanoi. I really like English and I want to help others study English. I have passion for innovative teaching methods, such as learning by playing or reversal of roles in the classroom. People say that I am a great listener and communicator in general, and it is easy for me to win the hearts of children. But I honestly believe that I still have to improve on many things, if I am to become a great teacher one day. Nice to meet you!!!');
}
