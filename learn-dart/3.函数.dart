// 3. 函数
// 任何应用都必须有一个顶级main()函数，作为应用服务的入口。main()函数返回值为空，参数为一个可选的list<String>。
// void main() {
//   final name = "Calvin";
//   var str = "abc";
//   str = "2131";
//   print(str);
// }
// 函数是一个一等对象
// 一个函数可以作为另一个函数的参数
// void main() {
//   void printElement(int element) {
//     print(element);
//   }

//   var list = [1, 2, 3];
// // 将printElement函数作为参数传递
//   list.forEach(printElement);
// }

// 匿名函数
// 创建没有名字的函数，这种函数被称为匿名函数
// void main() {
//   var list = ['apples', 'bananas', 'oranges'];
//   list.forEach((item) {
//     print('${list.indexOf(item)}:$item');
//   });
// }
// 如果函数只有一条语句，可以使用箭头简写
// void main() {
//   var list = ['apples', 'bananas', 'oranges'];
//   list.forEach((item) => print('${list.indexOf(item)}:$item'));
// }

// 词法作用域
// 变量的作用域是固定的，简单说变量的作用域在声明的时候就已经确定了，花括号内的是变量可见的作用域
// bool topLevel = true;
// void main() {
//   var insideMain = true;
//   assert(topLevel);
//   assert(insideMain);
//   // assert(insideFunction); //无效
//   // assert(insideNestedFunction); //无效
//   void myFunction() {
//     var insideFunction = true;
//     assert(topLevel);
//     assert(insideMain);
//     assert(insideFunction);
//     // assert(insideNestedFunction);//无效
//     void nestedFunction() {
//       var insideNestedFunction = true;
//       assert(topLevel);
//       assert(insideMain);
//       assert(insideFunction);
//       assert(insideNestedFunction);
//     }
//   }
// }

// 语法闭包
// 闭包即一个函数对象，即使函数对象的调用在它原始作用域之外，依然能够访问在它词法作用域内的变量
// 函数可以封闭定义到它作用域内的变量，下面的例子中，makeAdder()捕获了变量addBy，无论在什么时候执行返回函数，函数都会使用捕获的addBy变量
// 返回一个函数，返回的函数参数与addBy相加
// Function makeAdder(num addBy) {
//   return (num i) => addBy + i;
// }
// void main() {
//   // 创建一个加2的函数
//   var add2 = makeAdder(2);
//   // 创建一个加4的函数
//   var add4 = makeAdder(4);
//   assert(add2(3) == 5);
//   assert(add4(3) == 7);
// }

// 返回值
// 所有函数都会返回一个值，如果没有明确指定返回值，函数体会被隐式的添加return null;语句
// void main() {
//   foo() {}
//   assert(foo() == null);
// }

// 可选参数
// 可选命名参数{}和可选位置参数[]
// 将参数放到[]中来标记参数是可选的：
// void main() {
//   // Dart2引入了null safety，所有可选参数都必须为非空，而Dart1中不需要
//   // ? device = null解除空安全机制（null safety）
//   // 可选位置参数：
//   String say(String from, String msg, [String? device = null]) {
//     var result = "$from says $msg";
//     if (device != null) {
//       result = "$result with a $device";
//     }
//     return result;
//   }
//   // 不使用可选位置参数调用
//   print(say('Bob1', 'Howdy'));
//   // 使用可选位置参数调用
//   print(say('Bob1', 'Howdy', "smoke signal"));
//   // 可选命名参数{}，设置默认值为abc
//   String say2(String from, String msg, {String device = "abc"}) {
//     var result = "$from says $msg";
//     if (device != null) {
//       result = "$result with a $device";
//     }
//     return result;
//   }
//   // 不使用可选命名参数调用
//   print(say2('Bob2', 'Howdy'));
//   // 使用可选命名参数调用，可选命名参数需要通过key:value来传参
//   print(say2('Bob2', 'Howdy', device: "smoke signal"));
//   // 必选项
//   String say3(String from, String msg, {required String device}) {
//     var result = "$from says $msg";
//     if (device != null) {
//       result = "$result with a $device";
//     }
//     return result;
//   }
//   // 使用必选项,必须使用Key:value方式传参
//   print(say3('Bob3', 'Howdy', device: "smoke signal"));
// }

