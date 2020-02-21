class ChurchesList {
  final List<Church> churches;

  ChurchesList({this.churches});

  factory ChurchesList.fromJson(List<dynamic> parsedJson) {
    List<Church> churches = new List<Church>();
    churches = parsedJson.map((i) => Church.fromJson(i)).toList();

    return new ChurchesList(churches: churches);
  }
}

class Church {
  String name;
  String imageText;
  String caption;
  String storyText;
  int id;
  bool isFavorite;
  String imageName;

  Church({
    this.name,
    this.imageText,
    this.caption,
    this.storyText,
    this.id,
    this.isFavorite,
    this.imageName,
  });

  factory Church.fromJson(Map<String, dynamic> parsedJson) {
    return Church(
      name: parsedJson['name'],
      imageText: parsedJson['imageText'],
      caption: parsedJson['caption'],
      storyText: parsedJson['storyText'],
      id: parsedJson['id'],
      isFavorite: parsedJson['isFavorite'],
      imageName: parsedJson['imageName'],
    );
  }
}
