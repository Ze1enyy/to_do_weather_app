import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void _registerServices() {
  // sl
  //   ..registerLazySingleton<AuthenticationService>(
  //     () => FirebaseAuthentication(sl.get()),
  //   )
  //   ..registerLazySingleton<AudioPlayerService>(
  //     () => GatewayAudioPlayerService(sl.get()),
  //   )
  //   ..registerLazySingleton<AudioRecordingService>(
  //     () => GatewayAudioRecordingService(sl.get()),
  //   )
  //   ..registerLazySingleton<ConnectionService>(
  //     () => LocalConnectionService(sl.get()),
  //   )
  //   ..registerLazySingleton<RemoteAgoraService>(
  //     () => RemoteAgoraService(sl.get()),
  //   )
  //   ..registerLazySingleton<StripeService>(
  //     () => RemoteStripeService(sl.get()),
  //   )
  //   ..registerLazySingleton<PinService>(
  //     () => FirebaseUserPinService(sl.get()),
  //   )
  //   ..registerLazySingleton<BookingService>(
  //     () => FirebaseBookingsService(sl.get()),
  //   )
  //   ..registerLazySingleton<DoctorService>(
  //     () => FirebaseDoctorsService(sl.get()),
  //   )
  //   ..registerLazySingleton<ChatService>(
  //     () => FirebaseChatService(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<CardsService>(
  //     () => FirebaseCardsService(sl.get()),
  //   )
  //   ..registerLazySingleton<PermissionService>(
  //     () => LocalPermissionService(sl.get()),
  //   )
  //   ..registerLazySingleton<UserNotificationsService>(
  //     () => FirebaseUserNotificationsService(sl.get()),
  //   )
  //   ..registerLazySingleton<ThemeNotificationService>(
  //     () => LocalThemeNotificationPreferences(sl.get()),
  //   );
}

void _registerGateways() {
  // sl
  //   ..registerLazySingleton<FirebaseAuthGateway>(
  //     () => FirebaseAuthGateway(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<AudioPlayerGateway>(
  //     AudioPlayerGateway.new,
  //   )
  //   ..registerLazySingleton<AudioRecordingGateway>(
  //     AudioRecordingGateway.new,
  //   )
  //   ..registerLazySingleton<ConnectionGateway>(
  //     ConnectionGateway.new,
  //   )
  //   ..registerLazySingleton<HiveSettingsGateway>(
  //     HiveSettingsGateway.new,
  //   )
  //   ..registerLazySingleton<FirebaseBookingGateway>(
  //     () => FirebaseBookingGateway(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<StripeGateway>(
  //     () => StripeGateway(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<PreferencesRepository>(
  //     PreferencesRepository.new,
  //   )
  //   ..registerLazySingleton<FirebaseChatGateway>(
  //     () => FirebaseChatGateway(sl.get(), sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<FirebaseNotificationGateway>(
  //     () => FirebaseNotificationGateway(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<FirebaseDoctorsGateway>(
  //     () => FirebaseDoctorsGateway(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<FirebaseCardsGateway>(
  //     () => FirebaseCardsGateway(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<CachedMessagesGateway>(
  //     () => CachedMessagesGateway(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<HiveChatGateway>(
  //     HiveChatGateway.new,
  //   )
  //   ..registerLazySingleton<PermissionRepository>(
  //     PermissionRepository.new,
  //   )
  //   ..registerLazySingleton<AgoraChatGateway>(
  //     AgoraChatGateway.new,
  //   );
}

void _registerFactories() {
  // sl
  //   ..registerLazySingleton<Factory<Doctor, DoctorDto>>(
  //     DoctorFromDtoFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<UserNotification, UserNotificationDto>>(
  //     UserNotificationFromDtoFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<DoctorDto, Map<String, dynamic>>>(
  //     DoctorDtoFromJsonFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<UserNotificationDto, Map<String, dynamic>>>(
  //     UserNotificationDtoFromJsonFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<user_entity.User, UserDto>>(
  //     UserFromDtoFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<UserDto, Map<String, dynamic>>>(
  //     UserDtoFromJsonFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<Payment, PaymentDto>>(
  //     PaymentFromDtoFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<PaymentDto, Map<String, dynamic>>>(
  //     PaymentDtoFromJsonFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<BookingDto, Map<String, dynamic>>>(
  //     BookingDtoFromJsonFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<Booking, BookingDto>>(
  //     BookingFromDtoFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<BankCardDto, Map<String, dynamic>>>(
  //     CardDtoFromJsonFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<BankCard, BankCardDto>>(
  //     CardFromDtoFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<Message, MessageDto>>(
  //     MessageFromDtoFactory.new,
  //   )
  //   ..registerLazySingleton<Factory<MessageDto, Map<String, dynamic>>>(
  //     MessageDtoFromJsonFactory.new,
  //   );
}

void _registerUseCases() {
  // sl
  //   ..registerLazySingleton<SignUpUseCase>(
  //     () => FirestoreSignUpUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetAudioStreamCompleteUseCase>(
  //     () => ServiceGetAudioStreamCompleteUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetRecordingStateUseCase>(
  //     () => ServiceGetRecordingStateUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<StartPlayingAudioUseCase>(
  //     () => ServiceStartPlayingAudioUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<StopPlayingAudioUseCase>(
  //     () => ServiceStopPlayingAudioUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<StartRecordingAudioUseCase>(
  //     () => ServiceStartRecordingAudioUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<StopRecordingAudioUseCase>(
  //     () => ServiceStopRecordingAudioUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<CheckOnlineStatusUseCase>(
  //     () => LocalCheckOnlineStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SendAudioMessageUseCase>(
  //     () => ServiceSendAudioMessageUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<VerifyOtpUseCase>(
  //     () => FirestoreVerifyOtpUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<CreateIntentUseCase>(
  //     () => StripeCreateIntentUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SignOutUseCase>(
  //     () => FirestoreSignOutUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<UpdateUserDateUseCase>(
  //     () => FirestoreUpdateUserDateUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SetProfilePhotoUseCase>(
  //     () => FirestoreSetProfilePhotoUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetUserNotificationsUseCase>(
  //     () => FirestoreGetUserNotificationsUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<UpdateUserNotificationStatusUseCase>(
  //     () => FirestoreUpdateUserNotificationStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<RemoveNotificationsUseCase>(
  //     () => FirestoreRemoveNotificationsUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetUserPinUseCase>(
  //     () => FirestoreGetUserPinUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<UpdateUserFirstNameUseCase>(
  //     () => FirestoreUpdateUserFirstNameUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<UpdateUserLastNameUseCase>(
  //     () => FirestoreUpdateUserLastNameUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetDoctorsUseCase>(
  //     () => FirestoreGetDoctorsUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<MarkAsFavouriteUseCase>(
  //     () => FirestoreMarkAsFavouriteUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<RemoveFromFavouritesUseCase>(
  //     () => FirestoreRemoveFromFavouritesUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetChatPermissionUseCase>(
  //     () => LocalGetPermissionUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<RequestChatPermissionUseCase>(
  //     () => LocalRequestPermissionUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<RequestNotificationPermissionUseCase>(
  //     () => LocalRequestNotificationUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetNotificationPermissionUseCase>(
  //     () => LocalGetNotificationUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetBookingsUseCase>(
  //     () => FirestoreGetBookingsUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SetUserPinUseCase>(
  //     () => FirestoreSetUserPinUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetNotificationStatusUseCase>(
  //     () => LocalGetNotificationStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SetNotificationStatusUseCase>(
  //     () => LocalSetNotificationStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SetThemeStatusUseCase>(
  //     () => LocalSetThemeStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetThemeStatusUseCase>(
  //     () => LocalGetThemeStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<CreateBookingUseCase>(
  //     () => FirestoreCreateBookingUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<RemoveBookingUseCase>(
  //     () => FirestoreRemoveBookingUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<UpdateBookingTimeUseCase>(
  //     () => FirestoreUpdateBookingTimeUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<UpdateBookingStatusUseCase>(
  //     () => FirestoreUpdateBookingStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetCardsUseCase>(
  //     () => FirestoreGetCardsUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<CreateCardUseCase>(
  //     () => FirestoreCreateCardUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<RemoveCardUseCase>(
  //     () => FirestoreRemoveCardUseCase(sl.get()),
  //   )
  //   //agora
  //   ..registerLazySingleton<InitializeServiceUseCase>(
  //     () => RemoteInitializeServiceUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<LeaveCallUseCase>(
  //     () => RemoteLeaveCallUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<DisposeServiceUseCase>(
  //     () => RemoteDisposeServiceUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SwitchCameraUseCase>(
  //     () => RemoteSwitchCameraUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<ChangeSpeakerModeUseCase>(
  //     () => RemoteChangeSpeakerModeUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<MuteMicrophoneUseCase>(
  //     () => RemoteMuteMicrophoneUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetLocalVideoViewUseCase>(
  //     () => RemoteGetLocalVideoViewUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetRemoteVideoViewUseCase>(
  //     () => RemoteGetRemoteVideoViewUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<MuteVideoUseCase>(
  //     () => RemoteMuteVideoUseCase(sl.get()),
  //   )
  //   //chat
  //   ..registerLazySingleton<GetMessagesUseCase>(
  //     () => FirestoreGetMessagesUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SendMessageUseCase>(
  //     () => FirestoreSendMessageUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<UpdateMessageStatusUseCase>(
  //     () => FirestoreUpdateMessageStatusUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<SendImageMessageUseCase>(
  //     () => FirestoreSendImageMessageUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetConversationsUseCase>(
  //     () => FirestoreGetConversationsUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<CreateConversationUseCase>(
  //     () => FirestoreCreateConversationUseCase(sl.get()),
  //   )
  //   ..registerLazySingleton<GetCurrentUserUseCase>(
  //     () => FirestoreGetCurrentUserUseCase(sl.get()),
  //   );
}

void _registerBlocs() {
  // sl
  //   ..registerLazySingleton<AuthBloc>(
  //     () => AuthBloc(
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //     ),
  //   )
  //   ..registerFactory<ChatBloc>(
  //     () => ChatBloc(sl.get(), sl.get(), sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<AudioPlayerBloc>(
  //     () => AudioPlayerBloc(sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<AudioRecorderBloc>(
  //     () => AudioRecorderBloc(sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<CardsBloc>(
  //     () => CardsBloc(sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<PinBloc>(
  //     () => PinBloc(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<PaymentBloc>(
  //     () => PaymentBloc(sl.get()),
  //   )
  //   ..registerLazySingleton<InternetConnectionBloc>(
  //     () => InternetConnectionBloc(sl.get()),
  //   )
  //   ..registerLazySingleton<UserNotificationBloc>(
  //     () => UserNotificationBloc(sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<PermissionBloc>(
  //     () => PermissionBloc(sl.get(), sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<FilterBloc>(
  //     () => FilterBloc(
  //       sl.get(),
  //     ),
  //   )
  //   ..registerLazySingleton<ConversationBloc>(
  //     () => ConversationBloc(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<MediaChatBloc>(
  //     () => MediaChatBloc(
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //       sl.get(),
  //     ),
  //   )
  //   ..registerLazySingleton<BookingBloc>(
  //     () => BookingBloc(sl.get(), sl.get(), sl.get(), sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<NotificationBloc>(
  //     () => NotificationBloc(sl.get(), sl.get()),
  //   )
  //   ..registerLazySingleton<ThemeBloc>(() => ThemeBloc(sl.get(), sl.get()))
  //   ..registerLazySingleton<DoctorBloc>(
  //     () => DoctorBloc(sl.get(), sl.get(), sl.get()),
  //   );
}

Future<void> init() async {
  _registerGateways();
  _registerServices();
  _registerFactories();
  _registerUseCases();
  _registerBlocs();
}
