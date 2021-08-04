class Person{
  String name;
  int age;
  String sex;
  
  Person({String name, int age, String sex}){//named argument
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}


void main(){
  Person p1 = new Person(age:30);
  Person p2 = new Person();
  print(p1.age);

}