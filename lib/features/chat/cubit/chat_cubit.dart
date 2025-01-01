import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/features/chat/models/chat_model.dart';
import 'package:restaurant/my_app.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  static final ChatCubit _chatCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static ChatCubit get instance => _chatCubit;

  List<ChatModel> chats = [
    ChatModel(
      id: 1,
      message: '',
      image: '',
      date: '00:05 | 24 july 2024',
      isMe: true,
      name: "Osama",
    ),
    ChatModel(
      id: 1,
      message: '',
      image: '',
      date: '00:05 | 24 july 2024',
      isMe: false,
      name: "restaurant name",
    ),
    ChatModel(
      id: 1,
      message: '',
      image: '',
      date: '00:05 | 24 july 2024',
      isMe: true,
      name: "Osama",
    ),
    ChatModel(
      id: 1,
      message: '',
      image: '',
      date: '00:05 | 24 july 2024',
      isMe: false,
      name: "restaurant name",
    ),
    ChatModel(
      id: 1,
      message: '',
      image: '',
      date: '00:05 | 24 july 2024',
      isMe: true,
      name: "Osama",
    ),
    ChatModel(
      id: 1,
      message: '',
      image: '',
      date: '00:05 | 24 july 2024',
      isMe: false,
      name: "restaurant name",
    ),
  ];
}
