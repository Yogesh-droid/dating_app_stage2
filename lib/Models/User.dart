class User{
  String name;
  String age;
  String pic;
  //User({this.name,this.age,this.pic});

  String get getName{
    return name;
  }

  String get getAge{
    return age;
  }

  String get getPic{
    return pic;
  }

  void setName(String name){
    this.name=name;
  }
  void setAge(String age){
    this.age=age;
  }
  void setPic(String pic){
    this.pic=pic;
  }
}