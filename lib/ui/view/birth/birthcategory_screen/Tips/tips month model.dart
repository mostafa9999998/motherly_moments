class TipsMonthmodel{
  int id ;
  String weekname;
  TipsMonthmodel({required this.id,required this.weekname});
  static List<TipsMonthmodel> categrylist() {
    return [
      TipsMonthmodel(
          id:1 ,
          weekname:'1-3 months'
      ),
      TipsMonthmodel(
          id:3 ,
          weekname:'3-6 months'
      ),
      TipsMonthmodel(
          id:6 ,
          weekname:'6-9 months'
      ),
      TipsMonthmodel(
          id:9 ,
          weekname:'9-12 months'
      ),
    ];
  }
}