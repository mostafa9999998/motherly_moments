class Contacts {
  int  id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Contacts(
      {required this.id,
      required this.title,
      required this.imagepath,
      required this.screenname,
      required this.desc});
  static List<Contacts> categrylist() {
    return [
      Contacts(
          id: 1,
          title: 'What Happens at 1 Month',
          imagepath: 'assets/images/babygroth photo.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 2,
          title: 'What Happens at 2 Month',
          imagepath: 'assets/images/babygroth photo.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 3,
          title: 'What Happens at 3 Month',
          imagepath: 'assets/images/babygroth photo.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 4,
          title: 'What Happens at 4 Month',
          imagepath: 'assets/images/babygroth photo.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 5,
          title: 'What Happens at 5 Month',
          imagepath: 'assets/images/babygroth photo.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 6,
          title: 'What Happens at 6 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 7,
          title: 'What Happens at 7 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 8,
          title: 'What Happens at 8 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Contacts(
          id: 9,
          title: 'What Happens at 9 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
    ];
  }
}
