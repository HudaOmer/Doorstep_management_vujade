class Review {
  final String name;
  final String image;
  final int review;
  final String comment;

  Review(
      {required this.name,
      required this.image,
      required this.review,
      required this.comment});
}

Review user1 = Review(
    name: 'user1',
    image: 'image',
    review: 3,
    comment:
        'The house owner\'s courteos treatment and the apartment are more than wonderfuk the house owner bla bla bla');

Review user2 = Review(
    name: 'user2',
    image: 'image',
    review: 4,
    comment:
        'The house owner\'s courteos treatment and the apartment are more than wonderfuk the house owner bla bla bla');
