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
      TipsMonthmodel(
          id:12 ,
          weekname:'12-15 months'
      ),
      TipsMonthmodel(
          id:15 ,
          weekname:'15-18 months'
      ),
      TipsMonthmodel(
          id:18 ,
          weekname:'18-21 months'
      ),
      TipsMonthmodel(
          id:21,
          weekname:'21-24 months'
      ),
    ];
  }
}