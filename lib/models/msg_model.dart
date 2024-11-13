class MsgModel {
  final String msg, time;
  final bool isMe, isText, isVoice, isMedia;

  MsgModel(
      {required this.msg,
      required this.time,
      required this.isMe,
      required this.isText,
      required this.isVoice,
      required this.isMedia});
}
