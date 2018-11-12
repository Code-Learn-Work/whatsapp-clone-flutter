class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name,this.message,this.time,this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
    name: "Mayank Khanna",
    message: "Hey! how are you ?",
    time: "15:30",
    avatarUrl:"https://images.pexels.com/photos/842567/pexels-photo-842567.jpeg?cs=srgb&dl=adult-beard-blur-842567.jpg&fm=jpg",
  ),
  new ChatModel(
    name: "Sumant Khanna",
    message: "Hey! Flutter is amazing !",
    time: "14:30",
    avatarUrl:  "https://images.pexels.com/photos/842567/pexels-photo-842567.jpeg?cs=srgb&dl=adult-beard-blur-842567.jpg&fm=jpg",
  ),
  new ChatModel(
    name: "Harry",
    message: "Hey! Are you busy ?",
    time: "13:30",
    avatarUrl:  "https://images.pexels.com/photos/842567/pexels-photo-842567.jpeg?cs=srgb&dl=adult-beard-blur-842567.jpg&fm=jpg",
  ),
  new ChatModel(
    name: "Patrick",
    message: "Hey!",
    time: "12:30",
    avatarUrl:  "https://images.pexels.com/photos/842567/pexels-photo-842567.jpeg?cs=srgb&dl=adult-beard-blur-842567.jpg&fm=jpg",
  ),
];