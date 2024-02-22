class Bottlefeeding{
  int id ;
  String weekname;
  Bottlefeeding({required this.id,required this.weekname});
  static List<Bottlefeeding> categrylist() {
    return [
      Bottlefeeding(
          id:1 ,
          weekname:'1-6 months'
      ),
      Bottlefeeding(
          id:6 ,
          weekname:'6-12 months'
      ),
      Bottlefeeding(
          id:12 ,
          weekname:'12-18 months'
      ),
      Bottlefeeding(
          id:18 ,
          weekname:'18-24 months'
      ),
    ];
  }
}