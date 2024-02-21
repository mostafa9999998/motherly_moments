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
      ChildgrothMonthmodel(
          id:12 ,
          weekname:'12-15 months'
      ),
      ChildgrothMonthmodel(
          id:15 ,
          weekname:'15-18 months'
      ),
      ChildgrothMonthmodel(
          id:18 ,
          weekname:'18-21 months'
      ),
      ChildgrothMonthmodel(
          id:21 ,
          weekname:'21-24 months'
      ),
    ];
  }
}