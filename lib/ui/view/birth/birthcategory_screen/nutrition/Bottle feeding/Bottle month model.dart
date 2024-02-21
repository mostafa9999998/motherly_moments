class Bottlefeeding{
  int id ;
  String weekname;
  Bottlefeeding({required this.id,required this.weekname});
  static List<Bottlefeeding> categrylist() {
    return [
      Bottlefeeding(
          id:1 ,
          weekname:'1-3 months'
      ),
      Bottlefeeding(
          id:3 ,
          weekname:'3-6 months'
      ),
      Bottlefeeding(
          id:6 ,
          weekname:'6-9 months'
      ),
      Bottlefeeding(
          id:9 ,
          weekname:'9-12 months'
      ),
    ];
  }
}