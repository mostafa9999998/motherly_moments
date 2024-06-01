class CommonIssues {
  int id;
  String title;
  String screenname;
  // String desc;
  CommonIssues({
    required this.id,
    required this.title,
    required this.screenname,
    //required this.desc
  });
  static List<CommonIssues> categrylist() {
    return [
      CommonIssues(
        id: 1,
        title: 'Soring in children',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 2,
        title: 'Sleep Risks',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 3,
        title: 'Vomiting in children',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 4,
        title: 'ADHD ',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 5,
        title: 'Baby poop color',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 6,
        title: 'Autism',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 7,
        title: 'Child stuning',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 8,
        title: 'Delayed speech in cheldren',
        screenname: 'babyGrowth',
      ),
      CommonIssues(
        id: 9,
        title: 'Baby teething',
        screenname: 'babyGrowth',
      ),
    ];
  }
}
