// 2. 内置数据类型
// Number(数值)：int（整型），double（浮点）
// String（字符串）
// booleans（布尔值）
// List（集合）
// Set（无序集合）
// Maps(键值对集合)
// Runes（符号）
// main() {
//   var arr = [1, 2, 3, 4]; //类型：List<int>
//   arr.add(5); //最后添加元素5
//   var arr2 = ['a', 2, 3, 4]; //类型：List<Object>
//   print(arr);
//   print(arr[0]); //使用索引值获取值
//   print(arr2.runtimeType.toString()); //返回该变量所属类型

//   var obj = {1, 2, 3, 4, 5};
//   var obj2 = {7, 8, 9, 2};
//   obj.add(6); //添加元素
//   obj.addAll(obj2); //添加集合并去重
//   // Set（无序集合）不能通过索引值获取值
//   print(obj.runtimeType.toString()); //_CompactLinkedHashSet<int>
//   print(obj);
//   print(obj2);

//   List a = ['a', 'b', 'c', 'a', 'a', 'e', 'a']; //声明一个有序集合
//   var s = new Set(); //创建一个set类型的空集合
//   s.addAll(a); //合并集合并利用Set集合去重
//   a = s.toList(); //去重后数组化
//   print(a); //[a, b, c, e]

//   // Maps
//   var gifts = {
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 'golden rings'
//   };
//   // 新建空对象{}时为map，插入有序数据1,2,3后为set
//   print(gifts['first']); //通过key获取值，key不存在则返回空
//   print(gifts.isEmpty); //检测是否为空
//   print(gifts.length); //获取长度
// }
