void main() {
  //////////////////////INUM
  int var1 = 10;
  double var2 = 1.8;
  var var3 = var1;
  var var4 = var2;
  num var5 = var1;
  num var6 = var2;
  // print(var3);
  // print(var4.ceil()); //aproxima
  // print(var6.floor()); //trae parte entera
  // print(var2.abs()); //valor absoluto
  ///////////////////////STRINGS
  String text1 = "The calculate of the age is ${var1}";
  print(text1);
  String text2 = "The sum is equal a ${var5+var6}";
  print(text2);
  String text4 = "My name is "+ "wilmer";
  String text5 = "My name is " "Wilmer";
  print(text5 + "\n" + text4);
  String text6 = "I am $var1 years old";
  print(text6);
  String text7 = '''CREATE TABLE persona (
    nombre varchar,
    edad integer
  );''';
  print(text7);
  String text8 = r"He is $var1 years old";
  print(text8);
  //////////////////////// LIST
  var list1 = ["apple","pear","banana"];
  var list2 = ["apple",234, true];
  List<String> list3 = ["dog", "cat","mouse"];
  print(list1);
  list1.clear();
  var list;
  var list4 = ["coco", ...list2, ...?list];
  print(list1);
  print(list4);
  print(list4.reversed);
  var set1 = {"apple","pear","banana", ...list3};
  print(set1);

  set1.add("coco");
  print(set1);

  var map1 = {'red':'rojo','yellow': 'amarillo','white':'blanco'};
  print(map1);
  map1['green'] = "verde";
  print(map1);

  List<String> ?list10 = null;
  List<String?> lista11 = ["uno","dos", null];
}
