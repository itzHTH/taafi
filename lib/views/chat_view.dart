import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/models/msg_model.dart';
import 'package:taafi/widgets/custom_icon.dart';
import 'package:voice_message_package/voice_message_package.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  static String id = "ChatView";

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<MsgModel> msgModelList = [
    MsgModel(
        msg: "مرحبا بك",
        time: "9:00 ص",
        isMe: false,
        isText: true,
        isVoice: false,
        isMedia: false),
    MsgModel(
        msg: "أهلاً دكتور",
        time: "9:04 ص",
        isMe: true,
        isText: true,
        isVoice: false,
        isMedia: false),
    MsgModel(
        msg: "دكتور انا حاليا  خارج العراق واريد ان اتصل بك مكالمة فيديو",
        time: "9:05 ص",
        isMe: true,
        isText: true,
        isVoice: false,
        isMedia: false),
    MsgModel(
        msg: "أهلاً وسهلاً بيك ",
        time: "9:08 ص",
        isMe: false,
        isText: true,
        isVoice: false,
        isMedia: false),
    MsgModel(
        msg: "شوكت تريد نبدي المعاينة الالكترونية ؟",
        time: "9:08 ص",
        isMe: false,
        isText: true,
        isVoice: false,
        isMedia: false),
    MsgModel(
        msg: "",
        time: "9:15 ص",
        isMe: true,
        isText: false,
        isVoice: true,
        isMedia: false),
    MsgModel(
        msg: "",
        time: "9:18 ص",
        isMe: false,
        isText: false,
        isVoice: false,
        isMedia: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: chatAppbar(context),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: msgModelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: MsgBubble(
              msgModel: msgModelList[index],
            ),
          );
        },
      ),
      bottomNavigationBar: const ChatBottomNavBar(),
    );
  }
}

class ChatBottomNavBar extends StatelessWidget {
  const ChatBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomIcon(icon: "image", color: Colors.white, size: 28),
              const Spacer(),
              SizedBox(
                width: 240,
                child: TextField(
                  minLines: 1,
                  maxLines: 10,
                  decoration: InputDecoration(
                    enabledBorder: textfieldBorder(),
                    focusedBorder: textfieldBorder(),
                  ),
                ),
              ),
              const Spacer(),
              const CustomIcon(icon: "emoji", color: Colors.white, size: 28),
              const SizedBox(
                width: 8,
              ),
              const CustomIcon(
                  icon: "microphone", color: Colors.white, size: 28),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder textfieldBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}

PreferredSize chatAppbar(BuildContext context) {
  return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 75),
      child: SafeArea(
        child: Container(
          height: 75,
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomIcon(icon: "video", color: Colors.white, size: 34),
                const SizedBox(
                  width: 20,
                ),
                const CustomIcon(icon: "call", color: Colors.white, size: 34),
                const Spacer(
                  flex: 3,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "DocName",
                      child: Text(
                        "د.حامد العلي",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "اخر  ظهور  كان قريباً",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Hero(
                  tag: "DocImg",
                  child: Card(
                      shape: const CircleBorder(),
                      elevation: 5,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          "assets/images/doctor.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const CustomIcon(
                      icon: "arrow-left", color: Colors.white, size: 34),
                ),
              ],
            ),
          ),
        ),
      ));
}

class MsgBubble extends StatelessWidget {
  const MsgBubble({super.key, required this.msgModel});

  final MsgModel msgModel;

  @override
  Widget build(BuildContext context) {
    return msgModel.isText
        ? textMsg()
        : msgModel.isVoice
            ? voiceMsg()
            : mediaMsg();
  }

  Align mediaMsg() {
    return Align(
        alignment: msgModel.isMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(maxHeight: 250, maxWidth: 250),
              child: Image.asset(
                "assets/images/chatImg.png",
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  msgModel.time,
                  style: TextStyle(
                      color: msgModel.isMe ? kSecondaryColor : kPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: msgModel.isMe ? 2 : 0,
                ),
                msgModel.isMe
                    ? const CustomIcon(
                        icon: "check", color: kSecondaryColor, size: 10)
                    : const SizedBox(),
              ],
            ),
          ],
        ));
  }

  Directionality voiceMsg() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Align(
        alignment: msgModel.isMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              VoiceMessageView(
                backgroundColor:
                    msgModel.isMe ? kSecondaryColor : kPrimaryColor,
                circlesTextStyle: const TextStyle(color: Colors.white),
                circlesColor: Colors.transparent,
                counterTextStyle: const TextStyle(color: Colors.white),
                activeSliderColor: Colors.white,
                playIcon: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CustomIcon(icon: "play", color: Colors.white, size: 0),
                ),
                pauseIcon: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child:
                      CustomIcon(icon: "pause", color: Colors.white, size: 0),
                ),
                controller: VoiceController(
                    maxDuration: const Duration(seconds: 10),
                    isFile: false,
                    audioSrc:
                        'https://dl.solahangs.com/Music/1403/02/H/128/Hiphopologist%20-%20Shakkak%20%28128%29.mp3',
                    onComplete: () {
                      /// do something on complete
                    },
                    onPause: () {},
                    onPlaying: () {
                      /// do something on playing
                    },
                    onError: (err) {},
                    noiseCount: 30),
                innerPadding: 12,
                cornerRadius: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    msgModel.time,
                    style: TextStyle(
                        color: msgModel.isMe ? kSecondaryColor : kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: msgModel.isMe ? 2 : 0,
                  ),
                  msgModel.isMe
                      ? const CustomIcon(
                          icon: "check", color: kSecondaryColor, size: 10)
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Align textMsg() {
    return Align(
      alignment: msgModel.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 270),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: msgModel.isMe ? kSecondaryColor : kPrimaryColor,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              msgModel.msg,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                msgModel.isMe
                    ? const CustomIcon(
                        icon: "check", color: Color(0xffDCDCDC), size: 10)
                    : const SizedBox(),
                SizedBox(
                  width: msgModel.isMe ? 2 : 0,
                ),
                Text(
                  msgModel.time,
                  style: const TextStyle(
                      color: Color(0xffDCDCDC),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
