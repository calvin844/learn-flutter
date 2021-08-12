// 7. 控制流程
/**
 * 可以通过以下方式来控制 Dart 程序流程：
 *    if / else
 *    for loops
 *    while / do-while loops
 *    break / continue
 *    switch / case
 *    assert 
 * 
 * if / else
 * Dart 支持 if-else 语句，其中 else 是可选的
 */
// if(isRaining()){
//   you.bringRainCoat();
// }else if(isSnowing()){
//   you.wearJacket();
// }else{
//   car.putTopDown();
// }
// 和 JavaScript 不同，Dart 的判断条件必须是布尔值，不能是其他类型，就是不能直接判断值是否为空。
/**
 * for 循环
 * 进行迭代操作，可以使用标准 for 语句
 */
// void main(List<String> args) {
//   var message = StringBuffer('Dart is fun');
//   for (var i = 0; i < 5; i++) {
//     message.write('!');
//   }
//   print(message);
// }
/**
 * 如果要迭代一个实现了 Iterable 接口的对象，可以使用 forEach() 方法，如果不需要使用当前计数值，使用 forEach() 是很好的选择
 */
// void main(List<String> args) {
//   candidates.forEach((candidate) => candidate.interview());
// }

/**
 * 实现了 Iterable 的类（比如，List 和 Set）同样也支持使用 for-in 进行迭代操作 iteration ：
 */
// void main(List<String> args) {
//   var collection = [0, 1, 2];
//   for (var x in collection) {
//     print(x);
//   }
// }

/**
 * while和do-while
 * while 循环在执行前判断执行条件
 */
// while (!isDone()) {
//   doSomething();
// }
/**
 * do-while循环在执行后判断执行条件
 */
// do{
//   printLine();
// }while(!atEndOfPage());

/**
 * break 和 continue
 * 使用 break 停止程序循环
 */
// while (true) {
//   if(shutDownRequested()) break;
//   processIncomingRequests();
// }
/**
 * 使用 continue 跳转到下一次迭代
 */
// for(int i=0;i<candidates.length;i++){
//   var candidate =candidates[i];
//   if(candidate.yearsExperience <5){
//     continue;
//   }
//   candidate.interview();
// }
/**
 * 如果对象实现了 Iterable 接口（例如，list 或者 set）。那么上面的例子完全可以用另一种方式实现：
 */
// candidates
//   .where((c)=>c.yearsExperience>=5)
//   .forEach((c)=>c.interview());

/**
 * switch 和 case
 * 在 Dart 中 switch 语句使用 == 比较整数，字符串，或者编译时常量。比较的对象必须都是同一个类的实例（并且不可以是子类），类必须没有对 == 重写。
 * 枚举类型可以用于 switch 语句。
 * 提示：在 Dart 中 Switch 语句仅适用于有限的情况下，例如在 interpreter 或 scanner 中。
 * 在 case 语句中，每个非空的 case 语句结尾都需要跟一个 break 语句。除 break 以外，还可以使用 continue，throw，或者 return。
 * 当没有 case 语句匹配时，执行 default 代码
 */
// var command = 'OPEN';
// switch (command) {
//   case 'CLOSED':
//     executeClosed();
//     break;
//   case 'PENDING':
//     executePending();
//     break;
//   case 'APPROVED':
//     executeApproved();
//     break;
//   case 'DENIED':
//     executeDenied();
//     break;
//   case 'OPEN':
//     executeOpen();
//     break;
//   default:
//     executeOpenUnknown();
// }
/**
 * 下面的 case 程序中缺省了 break 语句，导致错误
 */
// var command = 'OPEN';
// switch (command) {
//   case 'OPEN':
//     executeOpen(); //ERROR：丢失 break
//   default:
//     executeOpenUnknown();
// }
/**
 * 但是，Dart 支持空 case 语句，允许程序以 fall-through 的形式执行
 */
// var command = 'CLOSED';
// switch (command) {
//   case 'CLOSED':// 空 case 被跳过执行
//   case 'NOW_CLOSED':
//     executeClosed(); // 一起执行 CLOSED 和 NOW_CLOSED
//     break;
// }
/**
 * 在非空 case 中实现 fall-through 形式，可以使用 continue 语句结合 lable 的方式实现
 */
// var command = 'CLOSED';
// switch (command) {
//   case 'CLOSED':
//     executeClosed(); 
//     continue nowClosed; // 继续执行 nowClosed 标签中代码
//   nowClosed:
//   case 'NOW_CLOSED':
//     executeClosed(); // 一起执行 CLOSED 和 NOW_CLOSED
//     break;
// }
/**
 * case 语句可以拥有局部变量，这些局部变量只能在这个语句的作用域中可见
 */

/**
 * assert
 * 如果 assert 语句中的布尔条件为 false，那么正常的程序执行流程会被中断。
 */
// 确认变量值不为空
// assert(text != null);
// 确认变量值小于100
// assert(number<100);
// 确认 URL 是否为 https 类型
// assert(urlString.startsWith('https'));
/**
 * 提示：assert 语句只在开发环境中有效，在生产环境是无效的；Flutter 中的 assert 只在 debug 模式中有效。开发用的工具，如 dartdevc 默认是开启 assert 功能
 * 其他的一些工具，例如 dart 和 dart2js，支持通过命令开启 assert：--enable-asserts。
 * assert 的第二个参数可以为其添加一个字符串消息。
 */
// void main(List<String> args) {
//   assert(urlString.startsWith('https'),'URL ($urlString) should start with "https".');
// }
/**
 * assert 的第一个参数可以是解析为布尔值的任何表达式。如果表达式结果为 true，则断言成功，并继续执行。如果表达式结果为false，则断言失败，并抛出异常（AssertionError）。
 */