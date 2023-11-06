part of 'chatbot_bloc.dart';

@immutable
abstract class ChatbotEvent {}
class FetchTranslate extends ChatbotEvent {
  final String text;
  FetchTranslate({required this.text});
}