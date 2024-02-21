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
      BreastFeedingMonthmodel(
          id:12 ,
          weekname:'12-15 months'
      ),
      BreastFeedingMonthmodel(
          id:15 ,
          weekname:'15-18 months'
      ),
      BreastFeedingMonthmodel(
          id:18 ,
          weekname:'18-21 months'
      ),
      BreastFeedingMonthmodel(
          id:21 ,
          weekname:'21-24 months'
      ),
    ];
  }
}