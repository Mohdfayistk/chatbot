import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../repository/api/api.dart';
import '../repository/modelclass/chatbot.dart';

part 'chatbot_event.dart';
part 'chatbot_state.dart';

class ChatbotBloc extends Bloc<ChatbotEvent, ChatbotState> {
  late Chatbot animeModel;
  AnimeApi animeApi=AnimeApi();
  ChatbotBloc() : super(ChatbotInitial()){
    on<ChatbotEvent>((event, emit)async {
      emit(ChatbotLoading());
      try{

        animeModel = await animeApi.getAnime(event.text);
        emit(ChatbotLoaded());
      } catch(e){
        print(e);
        emit(ChatbotError());}
    });
  }
}
