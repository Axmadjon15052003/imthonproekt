
class Api {
  final String title;
  final String creatorId;
  final String body;
  final String name;
  final String id;

  Api({required this.title,required this.creatorId,required this.body,required this.name,required this.id});

  factory Api.fromJson(
      Map<String,dynamic> a 
      ){
    return Api(title: a["title"], creatorId: a["creatorId"], body: a["body"], name: a["name"], id: a["id"]);
  }

  @override
  String toString() {
    return 'Api{title: $title, creatorId: $creatorId, body: $body, name: $name, id: $id}';
  }
}