import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;

class User {
  int id = 0;
  String name = "";
  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

class Password {
  String value = "";
  bool isValid() {
    if (value.length > 8)
      return true;
    else
      return false;
  }

  @override
  String toString() {
    return 'Password(value: $value)';
  }
}

// Long form constructor
class UserV1 {
  // Long form constructor
  UserV1(int id, String name) {
    this.id = id;
    this.name = name;
  }
  int id = 0;
  String name = "";
}

// Short form constructor
class UserV2 {
  UserV2(this.id, this.name);
  int id;
  String name;
}

// named constructor
class UserV3 {
  int id = 0;
  String name = "";
  UserV3.anonymous() {
    id = 1;
    name = "Preet_Nandasana";
  }
  @override
  String toString() {
    return 'UserV3(id: $id, name: $name)';
  }
}

//  Forwarding constructors
class UserV4 {
  int id;
  String name;

  UserV4(this.id, this.name);

  UserV4.namedCon() : this(4, "Nandasana");

  @override
  String toString() {
    return 'UserV4(id: $id, name: $name)';
  }
}

//  Adding named parameters
class UserV5 {
  int id;
  String name;

  UserV5({this.id = 0, this.name = "Nandasana"});

  UserV5.namedCon() : this();

  @override
  String toString() {
    return 'UserV5(id: $id, name: $name)';
  }
}

// private members
class UserV6 {
  int _id;
  String _name;

  UserV6({int id = 0, String name = "Nandasana"})
      : _id = id,
        _name = name;

  @override
  String toString() {
    return 'UserV6(id: $_id, name: $_name)';
  }
}

//  Checking for errors
class UserV7 {
  int _id;
  String _name;

  UserV7({int id = 0, String name = 'anonymous'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;

  @override
  String toString() {
    return 'UserV7(id: $_id, name: $_name)';
  }
}

void main() {
  /*
    // class and object
    final user = User();
    user.id = 1;
    user.name = "Preet";
    print("user id : ${user.id}\nuser name : ${user.name}");
    // user = User(); // We can't reassign a new object to final object
    // For creating a constant object there need to be a constant constructor and all the variables need to be final.

    // If you try to print user like below before override the toString method then you get "Instance of 'User'".
    print(user);

    // Serialized user object
    print(user.toJson());

  */

  /*

    // Cascade notation

    // When you created your User object above, you set its
    // parameters like so:
    // final user = User();
    // user.name = 'Ray';
    // user.id = 42;
    // However, Dart offers a cascade operator (..) that allows you
    // to chain together multiple assignments on the same object
    // without having to repeat the object name. The following
    // code is equivalent:

    final user = User()
      ..name = 'Ray'
      ..id = 42;

    print(user);

  */

  /*
    // Mini-exercises

    // 1. Create a class called Password and give it a string
    // property called value.
    // 2. Override the toString method of Password so that it
    // prints value.
    // 3. Add a method to Password called isValid that returns
    // true only if the length of value is greater than 8.

    var password = Password();
    password.value = "123";
    print(password.isValid());
  */

  /*
    // Constructors

    // Constructors are methods that create, or construct, instances
    // of a class. That is to say, constructors build new objects.
    // Constructors have the same name as the class, and the
    // implicitreturn type of the constructor method is also the
    // same type as the class itself.

    // Default constructor

    // As it stands, your User class doesn’t have an explicit
    // constructor. In cases like this, Dart provides a default
    // constructor that takes no parameters and just returns an
    // instance of the class. For example, defining a class like this:

    // class Address { var
    //   value = '';
    // }

    // Is equivalent to writing it like this:

    // class Address {
    //   Address();
    //   var value = '';
    // }
  */

  /*

    // Custom constructors

    // Long-form constructor
    var user1 = UserV1(1, "Preet"); // Two arguments are compulsory
    print(user1.id);
    print(user1.name);

    // Short-form constructor
    var user2 = UserV2(2, "Preet Nandasana");
    print(user2.id);
    print(user2.name);

    //Named constructors

    // Dart also has a second type of generative constructor called a
    // named constructor, which you create by adding an identifier
    // on to the class name. It takes the following pattern:
    // ClassName.identifierName()

    final anonymousUser = UserV3.anonymous();
    print(anonymousUser);

    //Forwarding constructors

    final user4 = UserV4.namedCon();
    print(user4);

    // Adding named parameters for User
    final user5 = UserV5.namedCon();
    // final user5 = UserV5();
    // final user5 = UserV5(id: 9);
    // final user5 = UserV5(name: "Virat");
    // final user5 = UserV5(id: 18, name: "Virat");
    // final user5 = UserV5(name: "Virat", id: 18);
    print(user5);

  */

  /*
    // private members
    var user6 = UserV6();
    user6._id = 10;
    print(user6);
  */

  // Checking for errors
  // An assert statement takes a condition, and if the condition
  // is false, terminates the app. This only happens during
  // debugging, though. The compiler completely ignores assert
  // statements in release builds.

  var user7 = UserV7(id: -1, name: "");
  print(user7);
}
