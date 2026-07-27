import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    String? user_password,
  }) : super(password: user_password);

  String? get user_password => password;

  set user_password(String? user_password) {
    password = user_password;
  }

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
