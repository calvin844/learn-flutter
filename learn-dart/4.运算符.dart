// 4. 运算符
// 算术运算符：
// +：加
// -：减
// -：一元减号，也被命名为负号（使后面表达式的值反过来）
// *：乘
// /：除
// ~/：返回一个整数值的除法，向下取整
// // %：取余，除法剩下的余数
// void main(List<String> args) {
//   assert(2 + 3 == 5);
//   assert(2 - 3 == -1);
//   assert(2 * 3 == 6);
//   assert(5 / 2 == 2.5); //结果是double类型
//   assert(5 ~/ 2 == 2); //结果是一个整数
//   assert(5 % 2 == 1); //余数
//   assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
// }

// 等式和关系运算符
// ==：等于
// !=：不等于
// >：大于
// <：小于
// >=：大于等于
// <=：小于等于
// 要是测试两个个对象x和y是否相等，请使用==运算符，“在极少数情况下，需要知道两个对象是否是完全相同的对象，请改用experation函数”
// ==运算符原理：
// 1. 如果两者都为空，则返回true；如果只有一个为空，则返回false
// 2. 返回一个函数调用的结果：x.==(y)，这个调用是正确的，像==这样的运算符实际上也由第一个操作数所调用的一个方法，可以重写大部分的运算符
// void main(List<String> args) {
//   assert(2 == 2);
//   assert(2 != 3);
//   assert(3 > 2);
//   assert(2 < 3);
//   assert(3 >= 3);
//   assert(2 <= 3);
// }

// 类型测试操作符
// as、is和is!操作符在运行时用于检查类型
// as：类型转换
// is：当对象是相应类型时返回true
// is!：当对象不是相应类型时返回true
// 如果obj实现了T所定义的接口，那么obj is T将返回true，比如，obj is Object 返回true
// 使用as操作符可以把一个对象转换为特定类型，一般来说，如果在is测试之后还有一些关于对象的表达式，就可以把as当做是is测试的一种简写
// void main(List<String> args) {
//   if (emp is Person) {
//     // type check
//     emp.firstName = '永动机';
//   }
// }
// 可以通过as来简化代码：
// void main(List<String> args) {
//   (emp as Person).firstName = '永动机';
// }
// 注意上面两段代码并不相等，如果emp的值为null或者不是一个Person对象，第一段代码不会做任何事情，第二段代码会报错

// 赋值操作符
// 赋值给a
// a = value
// 如果b为空，则将值分配给b，否则，b保持不变
// b ??= value

// 复合赋值运算符
// a op b 等于 a= op b
// a+=b 等于 a=a+b
// a-=b 等于 a=a-b

// 逻辑运算符
// !：取反
// ||：逻辑或
// &&：逻辑与

// 位运算
// 把10进制转为二进制，再进行位移的操作符

// 条件表达式
// condition ? expr1:expr2
// 如果条件为真，返回expr1，否则返回expr2
// expr1 ?? expr2
// 如果expr1为非空，则返回其值，否则，执行expr2并返回其值

// 级联操作符
// 级联操作符（..）允许对同一个对象执行一系列操作，除了函数调用，还可以访问同一对象上的字段，
// 这通常会省去创建临时变量的步骤，并允许编写更多的级联代码

// class Person {
//   var name;
//   var age;
//   Person(this.name, this.age);
//   getInfo() {
//     print('${this.name}.${this.age}');
//   }
// }

// void main(List<String> args) {
//   var p = new Person('张三', 18);
//   p.getInfo();
//   p.name = "李四";
//   // 使用级联操作符
//   p
//     ..name = "王五"
//     ..age = 18
//     ..getInfo();
// }