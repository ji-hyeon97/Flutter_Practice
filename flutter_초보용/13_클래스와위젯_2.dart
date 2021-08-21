// Class and Widget
// 클래스 : 객체가 가져야 할 속성과 기능을 정의한 내용을 담고 있는 설계도 역할
// 객체 : 클래스가 정의된 후 메모리상에 할당되었을 때 이를 객체라고 함
// 인스턴스 : 클래스 기반으로 생성 + 클래스 속성과 기능을 똑같이 가지고 프로그래밍 상에서 사용하는 대상

class Person{
  String name;
  int age;
  String sex;
  
  Person({String name, int age, String sex}){//named argument
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
  
  Person1(String name, int age, String sex){
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

class Person1{
  String name;
  int age;
  String sex;
  
  Person1(String name, int age, String sex){
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

void main(){
  Person p1 = new Person(age:30); //모든 위젯들은 클래스를 통해 생성된 인스턴스였다
  Person1 p2 = new Person1("seo",25,"male");
 
  print(p1.age);
  print(p2.name);
}
