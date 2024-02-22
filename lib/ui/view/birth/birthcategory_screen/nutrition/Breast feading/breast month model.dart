class BreastFeedingMonthmodel{
  int id ;
  String weekname;
  BreastFeedingMonthmodel({required this.id,required this.weekname});
  static List<BreastFeedingMonthmodel> categrylist() {
    return [
      BreastFeedingMonthmodel(
          id:1 ,
          weekname:'1-6 months'
      ),
      BreastFeedingMonthmodel(
          id:6 ,
          weekname:'6-12 months'
      ),
      BreastFeedingMonthmodel(
          id:12 ,
          weekname:'12-18 months'
      ),
      BreastFeedingMonthmodel(
          id:18 ,
          weekname:'18-24 months'
      ),
    ];
  }
}