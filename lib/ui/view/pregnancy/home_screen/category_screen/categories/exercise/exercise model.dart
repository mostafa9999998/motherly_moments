class Exerciseslist {
  int  id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Exerciseslist(
      {required this.id,
        required this.title,
        required this.imagepath,
        required this.screenname,
        required this.desc});
  static List<Exerciseslist> categrylist() {
    return [
      Exerciseslist(
          id: 1,
          title: 'Exercise for first Trimester ',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 2,
          title: '10 min Exercise',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 3,
          title: 'Yoga',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 4,
          title: 'Exercise for secod Trimester',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
     /* Exerciseslist(
          id: 5,
          title: 'Yoga helps in you in 5 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 6,
          title: 'Yoga helps in you in 6 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 7,
          title: 'Yoga helps in you in 7 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 8,
          title: 'Yoga helps in you in 8 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 9,
          title: 'Yoga helps in you in 9 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),*/
    ];
  }
}