// diffrent job diffrent class
class User {
  //Getting User Data
  String name;
  String email;

  User({required this.name, required this.email});

  void printUser() {
    print('Name: $name, Email: $email');
  }
}

// class for saving user data
class UserStorage {
  void saveToFile(User user) {
    print('Saving ${user.name} to file...');
  }
}

// Practice Single Responsibility Principle (SRP)
class BlogPost {
  String title;
  String content;
  String author;
  DateTime createdAt;

  BlogPost({required this.title, required this.content, required this.author})
      : createdAt = DateTime.now();
}

class Display {
  void formateForDisplay(BlogPost blog) {
    print('📄 ${blog.title} by ${blog.author}');
    print('Published on ${blog.createdAt.toLocal()}');
    print('\n${blog.content}\n');
  }
}

class Saving {
  void savetofile(BlogPost blog) {
    print('Saving ${blog.title} to file...');
    // file saving logic
  }
}

class Notification {
  void sendNotification(BlogPost blog) {
    print("🔔 Notifying followers about: ${blog.title}");
    // notification logic
  }
}

class SocialMediaSharing {
  void shareToSocialMedia(BlogPost blog) {
    print('📤 Sharing "${blog.title}" to Facebook, Twitter...');
    // social media API logic
  }
}
