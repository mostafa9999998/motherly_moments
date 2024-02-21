class WeaningMonthmodel{
  int id ;
  String weekname;
  WeaningMonthmodel({required this.id,required this.weekname});
  static List<WeaningMonthmodel> categrylist() {
    return [
      WeaningMonthmodel(
          id:1 ,
          weekname:'1-3 months'
      ),
      WeaningMonthmodel(
          id:3 ,
          weekname:'3-6 months'
      ),
      WeaningMonthmodel(
          id:6 ,
          weekname:'6-9 months'
      ),
      WeaningMonthmodel(
          id:9 ,
          weekname:'9-12 months'
      ),
    ];
  }
}