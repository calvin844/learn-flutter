// 5. 类
// 类定义
// 类的定义用class关键字
// 如果未显式定义构造函数，会默认一个空的构造函数
// 类名首字母必须大写
// 使用new关键字和构造函数来创建对象
// class Person {
//   //未定义父类的时候，默认继承Object
//   num? x = null;
//   num? y = null;
//   num? z = null;
// }

// void main(List<String> args) {
//   var person = new Person(); //调用默认的构造函数
//   person.x = 10; //使用.来引用实例变量或方法
//   person.y = 11;
//   person?.z = 12; //如果person不为空，设置它的变量z的值为12
//   print(person.x);
//   print(person.y);
//   print(person.z);
// }

// 声明实例变量时，所有未初始化的实例变量的值为null
// 对象的成员包括函数和数据（分别是方法和实例变量），使用点（.）引用实例变量或者方法
// 使用?.来确认前操作数不为空，常用来代替.，避免左边操作数为null印发异常

// 构造函数
// 如果没有声明构造函数，默认有构造函数，默认构造函数没有参数，调用父类的无参构造函数
// var person = new Person();调用默认的构造函数
// 类名构造函数
// 其中构造函数名称是“ClassName”的函数叫“类名构造函数”
// Person(x,y){
//  this.x = y
//  this.y = x
// }
// var person = new Person(2,3)
// 命名构造函数
// 使用命名构造函数可以为类提供多个构造函数，按官方的说法就是提供额外的清晰度
// class Person {
//   num? x = null;
//   num? y = null;
//   num? z = null;
//   String name = "abc";
//   int age = 18;
//   int sex = 1;

//   Person(name, age, {int sex = 1}) {
//     this.name = name;
//     this.age = age;
//     this.sex = sex;
//   }
//   // 方法调用
//   void getInfo() {
//     print(
//         'My number is ${x},my age is ${y},and I am a ${z == 1 ? 'man' : 'woman'}');
//   }

//   // 修改类属性
//   void changeX(int x) {
//     // if (x != null) {
//     this.x = x;
//     // }
//   }

//   // Getters和Setters方法
//   // 1. Getters和Setters是读取和修改对象的特定方法，每次调用对象的属性时，Dart都会隐式的调用一次getter方法，这允许你可以在修改或者读取对象属性时做一些操作
//   // 2. 通过get和set关键词重写对象的默认行为
//   // getter和setter可以最大程度的简化值的获取或者格式化以及设置
//   get info {
//     return 'My name is ${name},my age is ${age},and I am a ${sex == 1 ? 'man' : 'woman'}';
//   }

//   set newName(String name) {
//     // if (name != null) {
//     this.name = name;
//     // }
//   }
// }

// void main(List<String> args) {
//   var person = new Person('calvin', 18); //调用默认的构造函数
//   person.getInfo();
//   person.changeX(4);
//   print(person.x);
//   print(person.y);
//   // 使用 get 和 set
//   Person p5 = new Person('postbird', 20);
//   print(p5.info);
//   p5.newName = "newNamePostbird"; //set 定义时虽然是函数形式定义，但是使用时，需要通过赋值形式使用
//   print(p5.info);
// }

// 静态成员
// 静态方法只能访问静态属性，不能访问非静态属性。
// 非静态方法可以正常访问静态属性

// 类的继承
// 子类继承父类使用 extends 关键字，dart没有多继承
// 重写方法最好加上 @override 注解，便于协作
// 子类构造方法中，如果要初始化父类构造方法，使用 super 关键字，比如 Dog(String name,int age,[String nickName]):super(name,age);
// 子类中调用父类的方法使用：super.fun()
// 父类
// class Animal {
//   String name = "w";
//   int age = 18;
//   Animal(this.name, this.age);
//   void speak() {}
//   void printInfo() {
//     print('My name is ${name}');
//   }

//   void parentPrint() {
//     print('I am parent');
//   }
// }

// class Dog extends Animal {
//   String nickName = "wang";
//   Dog(String name, int age, [String nickName = 'wang']) : super(name, age);
//   @override
//   void speak() {
//     this.parentPrint();
//     this.printInfo();
//     super.printInfo();
//     print(this.nickName);
//   }
// }

// void main(List<String> args) {
//   var dog = new Dog('旺财', 20, 'wang');
//   dog.speak();
// }

// 抽象类和接口
// 抽象类
// 使用abstract 修改器可以定义一个抽象类，抽象类是不能被实例化的，但对于定义接口是非常有用的，
// 如果你想实例化抽象类，你必须实现抽象类，才能被实例化
// 此对象是一个抽象类，因此不能被实例化
// abstract class AbstractContainer {
//   // 定义构造函数、字段、方法
//   void updateChildren();//抽象方法
// }
// 隐式的接口
// 每个类都是隐式的接口，包括类的方法和属性，如果你想创建一个类A不继承B和实现，可以实现B的接口来创建类A。一个类允许通过implements 关键字可以实现多个接口
// 每个类都是一个隐式的接口，所以Person类也是个接口，包括成员属性和方法。
// class Person {
//   // 可在接口中实现，但仅对这个库可见
//   final _name;
//   // 构造函数不能够被接口实现
//   Person(this._name);
//   // 可在接口中实现
//   String greet(String who) => 'Hello,$who,I am $_name';
// }

// // 实现Person接口
// class Impostror implements Person {
//   get _name => '';
//   String greet(String who) => 'Hi $who,Do you know who I am?';
// }

// String greetBob(Person person) => person.greet('Bob');
// void main(List<String> args) {
//   print(greetBob(Person('Kathy')));
//   print(greetBob(Impostror()));
// }

// 实现多个接口
// 实例可以实现多个接口
// abstract class A {
//   fnA();
// }

// abstract class B {
//   fnB();
// }

// class C implements A, B {
//   @override
//   fnA() {
//     print('Fn....A');
//   }

//   @override
//   fnB() {
//     print('Fn....B');
//   }
// }

// void main(List<String> args) {
//   print('----多接口-----');
//   print('----Dart 没有多继承-----');
//   C c = new C();
//   c.fnA();
//   c.fnB();
// }

// mixin
// 因为没有多继承，因此如果要综合多个类属性和方法可以implements多个接口，如果不是抽象类，则可以通过mixin混入多个类的属性和方法
class A {
  void fnA() {
    print('fnA');
  }

  void run() {
    print('runA');
  }
}

abstract class B {
  void fnB() {
    print("fnB");
  }

  void run() {
    print('runB');
  }
}

class C extends Object with A, B {
  void fnA() {
    print('c_fnA');
  }
}

// mixin 类只能继承于 Object
// mixin 类不能又构造函数
// 一个类能够mixin多个mixin类
void main(List<String> args) {
  print('----MIXIN-----');
  print('----dart 没有多继承-----');
  C c = new C();
  c.fnA();
  c.fnB();
  c.run();
  print('====类型=====');
  print(c is C);
  print(c is A);
  print(c is B);
}
