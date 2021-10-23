class MetaModel {
  final dynamic author;
  final String description;
  final String image;
  final dynamic logo;
  final String publisher;
  final String title;
  final String url;

  MetaModel({
    required this.author,
    required this.description,
    required this.image,
    required this.logo,
    required this.publisher,
    required this.title,
    required this.url,
  });

  factory MetaModel.fromJson(Map<String, dynamic> json) => MetaModel(
        author: json['author'],
        description: json['description'],
        image: json['image'],
        logo: json['logo'],
        publisher: json['publisher'],
        title: json['title'],
        url: json['url'],
      );
}
