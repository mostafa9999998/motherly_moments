class Nutrition {
  int id;
  String title;
  String screenname;
  // String desc;
  Nutrition({
    required this.id,
    required this.title,
    required this.screenname,
    //required this.desc
  });
  static List<Nutrition> categrylist() {
    return [
      Nutrition(
        id: 1,
        title: 'Weaning',
        screenname: 'nutrition',
        //desc: 'It might sound starnge, but at 1th month\n pre..'
      ),
      Nutrition(
        id: 2,
        title: 'Breast Feeding',
        screenname: 'nutrition',
        // desc: 'It might sound starnge, but at 1th month\n pre..'
      ),
      Nutrition(
        id: 3,
        title: 'Bottle Feeding',
        screenname: 'nutrition',
        //desc: 'It might sound starnge, but at 1th month\n pre..'
      ),
    ];
  }
}
