import 'single_responsibility_principle.dart';

void main() {
  // // Practice Single Responsibility Principle (SRP)===========
  // for printing
  User person = User(name: 'Nasim', email: 'nasim@gmail.com');
  person.printUser();

  UserStorage().saveToFile(person);

  // Practice Single Responsibility Principle (SRP)
  // Setting Data
  BlogPost blogAction = BlogPost(
      title: 'Artificial Intelligence',
      content: 'Machine Learning',
      author: 'AKM Mostafa');

  // Display formate
  Display().formatForDisplay(blogAction);

  // File saving
  Saving().saveToFile(blogAction);

  // Notification sowing
  Notification().sendNotification(blogAction);

  // Social media sharing
  SocialMediaSharing().shareToSocialMedia(blogAction);
}
