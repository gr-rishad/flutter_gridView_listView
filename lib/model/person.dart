class Person {
  final String id;
  final String name;
  final String position;
  final String image;

  Person(this.id, this.name, this.position, this.image);

  static List<Person> personList = [
    Person(
        "0", "Rabbani", "Software Engineer", "assets/images/person_image.png"),
    Person("1", "Golam Rabbani", "Jr. Software Engineer",
        "assets/images/person2.png"),
    Person("2", "Rishad", "Apps Developer", "assets/images/person_image.png"),
  ];
}
