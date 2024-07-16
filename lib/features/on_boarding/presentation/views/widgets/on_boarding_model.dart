class BoardingModel
{
  BoardingModel({required this.title, required this.subTitle, required this.image});

  final String title;
  final String subTitle;
  final String image;

  static List<BoardingModel> list = [
    BoardingModel(
      title: 'كل الخدمات معنا في مكان واحد',
      subTitle: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
      image: 'assets/images/phone.png',
    ),
    BoardingModel(
      title: 'كل الخدمات معنا في مكان واحد',
      subTitle: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
      image: 'assets/images/phone1.png',
    ),
    BoardingModel(
      title: 'كل الخدمات معنا في مكان واحد',
      subTitle: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
      image: 'assets/images/phone2.png',
    ),
  ];
}