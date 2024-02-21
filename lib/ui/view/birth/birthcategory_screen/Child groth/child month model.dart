class ChildgrothMonthmodel{
  int id ;
  String weekname;
  ChildgrothMonthmodel({required this.id,required this.weekname});
  static List<ChildgrothMonthmodel> categrylist() {
    return [
      ChildgrothMonthmodel(
          id:1 ,
          weekname:'1-3 months'
      ),
      ChildgrothMonthmodel(
          id:3 ,
          weekname:'3-6 months'
      ),
      ChildgrothMonthmodel(
          id:6 ,
          weekname:'6-9 months'
      ),
      ChildgrothMonthmodel(
          id:9 ,
          weekname:'9-12 months'
      ),
    ];
  }
}