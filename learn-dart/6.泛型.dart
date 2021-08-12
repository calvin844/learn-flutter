// 6. 泛型
/**
 * 泛型就是解决类接口方法的复用性，以及对不特定数据类型的支持
 * 在类型安全上通常需要泛型支持，它的好处不仅仅是保证代码的正常运行：
 *    正确指定泛型类型可以提高代码质量
 *    使用泛型可以减少重复的代码
 * 如果想让 List 仅仅支持字符串类型，可以将其声明为 List<String> （读作“字符串类型的List”）。那么，当一个非字符串被赋值给了这个 List 时，
 * 开发工具就能够检测到这样的做法可能存在错误。
 */
// void main(List<String> args) {
//   List<String> names = [];
//   names.addAll(['Seth', 'Kathy', 'Lars']);
//   names.add(42);//报错
// }
/**
 * 另外一个使用泛型的原因是减少重复的代码。泛型可以在多种类型之间定义同一个实现，同时还可以继续使用检查模式和静态分析工具提供的代码分析功能
 * 例如，假设你创建了一个用于缓存对象的接口
 */
// abstract class ObjectCache {
//   Object getByKey(String key);
//   void setByKey(String key, Object value);
// }
/**
 * 后来发现需要一个相同功能的字符串类型接口，因此又创建了另一个接口：
 */
// abstract class StringCache {
//   String getByKey(String key);
//   void setByKey(String key, String value);
// }
/**
 * 后来，又需要一个相同功能的数字类型接口
 * 泛型可以省去创建所有这些接口的麻烦，通过创建一个带有泛型参数的接口
 */
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

/**
 * 在上面的代码中，T是一个备用类型。这是一个类型占位符，在开发者调用该接口的时候会指定具体类型。
 * 
 * 使用集合字面量
 * List，Set 和 Map 字面量也是可以参数化的。参数化字面量和之前的字面量定义类似，对于 List 或者 Set 只需要在声明语句前加 <type> 前缀，
 * 对于 Map 只需要在声明语句前加 <keyType,valueType> 前缀，下面是参数化字面量的例子：
 */
// var names = <String>['Seth', 'Kathy', 'Lars'];
// var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
// var pages = <String, String>{
//   'index.html': 'Homepage',
//   'robots.txt': 'Hints for web robots',
//   'humans.txt': 'We are people,not machines'
// };
/**
 * 使用泛型类型的构造函数
 * 在调用构造函数的时候，在类名后面使用尖括号（<...>）来指定泛型类型
 */
// var nameSet = Set<String>.from(names);
/**
 * 下面代码创建了一个 Key 为 Integer，value 为 View 的 map 对象：
 */
// var views = Map<int, View>();
/**
 * 运行时中的泛型集合
 * Dart 中泛型类型是固化的，也就是说它们在运行时是携带者类型信息的。
 */
void main(List<String> args) {
  var names = ['z', 'w', 'h'];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>); //true
}

// 提示：相反，Java 中的泛型会被擦除，也就是说在运行时泛型类型参数的信息是不存在的，在 Java 中，可以测试对象是否为 List 类型，当无法测试它是否为 List<String>
/**
 * 使用泛型函数
 * 最初，Dart 的泛型只能用于类。新语法泛型方法，允许在方法和函数上使用类型参数
 */
T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}
/**
 * 这里的 first(<T>) 泛型可以在如下地方使用参数T：
 *    函数的返回值类型（T）
 *    参数的类型（List<T>）
 *    局部变量的类型（T tmp）
 */
