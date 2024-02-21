class BreastFeedingMonthmodel{
  int id ;
  String weekname;
  BreastFeedingMonthmodel({required this.id,required this.weekname});
  static List<BreastFeedingMonthmodel> categrylist() {
    return [
      BreastFeedingMonthmodel(
          id:1 ,
          weekname:'1-3 months'
      ),
      BreastFeedingMonthmodel(
          id:3 ,
          weekname:'3-6 months'
      ),
      BreastFeedingMonthmodel(
          id:6 ,
          weekname:'6-9 months'
      ),
      BreastFeedingMonthmodel(
          id:9 ,
          weekname:'9-12 months'
      ),
    ];
  }
}