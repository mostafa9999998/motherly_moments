class WeaningMonthmodel{
  int id ;
  String weekname;
  WeaningMonthmodel({required this.id,required this.weekname});
  static List<WeaningMonthmodel> categrylist() {
    return [
      WeaningMonthmodel(
          id:1 ,
          weekname:'1-6 months'
      ),
      WeaningMonthmodel(
          id:6 ,
          weekname:'6-12 months'
      ),
      WeaningMonthmodel(
          id:12 ,
          weekname:'12-18 months'
      ),
      WeaningMonthmodel(
          id:18 ,
          weekname:'18-24 months'
      ),
    ];
  }
}