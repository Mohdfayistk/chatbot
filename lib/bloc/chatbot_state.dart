part of 'chatbot_bloc.dart';

@immutable
abstract class ChatbotState {}

class ChatbotInitial extends ChatbotState {}
class ChatbotLoading extends  ChatbotState {}
class ChatbotLoaded extends  ChatbotState {}
class ChatbotError extends  ChatbotState{}