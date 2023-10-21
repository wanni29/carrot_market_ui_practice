class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUrl;

  ChatMessage(
      {required this.sender,
      required this.profileImage,
      required this.location,
      required this.sendDate,
      required this.message,
      this.imageUrl});
}

// 더미 데이터
List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: "당근이, ",
    profileImage:
        "https://file.mk.co.kr/meet/neds/2022/01/image_readtop_2022_54835_16425432614918752.jpg",
    location: "대부동",
    sendDate: "1일 전",
    message: "developer님, 근처엥 다양한 물품들이 아주 많이있습니다.",
  ),
  ChatMessage(
    sender: "Flutter, ",
    profileImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6zzsrsUDgoNKHIgMTmqxdWC8znh_S3pB-vEIJtj7XdDS5R3rhXZwkiyKB872D5MNVdck&usqp=CAU",
    location: "중동",
    sendDate: "2일 전",
    message: "안녕하세요. 지금 다 예약 상태 인가요?",
    imageUrl:
        "https://www.gbtp.or.kr/cmm/fms/getImage.do;jsessionid=0F474396F2EFF256F88E63D455406109?atchFileId=FILE_000000000005455",
  )
];
