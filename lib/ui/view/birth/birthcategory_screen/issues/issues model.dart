class CommonIssues {
  int  id;
  String title;
  String screenname;
 // String desc;
  CommonIssues(
  {required this.id,
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
  //desc: 'It might sound starnge, but at 1th month\n pre..'
        ),
  CommonIssues(
  id: 2,
  title: 'Sleep Risks',
  screenname: 'babyGrowth',
 // desc: 'It might sound starnge, but at 1th month\n pre..'
        ),
  CommonIssues(
  id: 3,
  title: 'Vomiting in children',
  screenname: 'babyGrowth',
  //desc: 'It might sound starnge, but at 1th month\n pre..'
  ),
  CommonIssues(
  id: 4,
  title: 'ADHD ',
  screenname: 'babyGrowth',
  //desc: 'It might sound starnge, but at 1th month\n pre..'
  ),
  CommonIssues(
  id: 5,
  title: 'Baby poop color',
  screenname: 'babyGrowth',
  //desc: 'It might sound starnge, but at 1th month\n pre..'
  ),
  CommonIssues(
  id: 6,
  title: 'Autism',
  screenname: 'babyGrowth',
  //desc: 'It might sound starnge, but at 1th month\n pre..'
  ),
  CommonIssues(
  id: 7,
  title: 'Child stuning',
  screenname: 'babyGrowth',
  //desc: 'It might sound starnge, but at 1th month\n pre..'
  ),
  CommonIssues(
  id: 8,
  title: 'Delayed speech in cheldren',
  screenname: 'babyGrowth',
  //desc: 'It might sound starnge, but at 1th month\n pre..'
  ),
  CommonIssues(
  id: 9,
  title: 'Baby teething',
  screenname: 'babyGrowth',
  //desc: 'It might sound starnge, but at 1th month\n pre..'
  ),
  ];
  }
  }
