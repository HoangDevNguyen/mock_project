class ContentModel {
  String image;
  String title;
  String discription;

  ContentModel({required this.image, required this.title, required this.discription});

}

List<ContentModel> contents = [
  ContentModel(
      title: 'Reach the unknown spot',
      image: 'assets/images/slide1.png',
      discription: 'To your desire'
  ),
  ContentModel(
      title: 'Reach the unknown spot',
      image: 'assets/images/slide2.png',
      discription: 'To your destination'
  ),
  ContentModel(
      title: 'Make connects with Travello',
      image: 'assets/images/slide3.png',
      discription: 'To your dream trip'
  ),
];