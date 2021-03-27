class Joke {
  String icon_url;
  String value;
  String url;

  Joke({this.icon_url = '', this.value = '', this.url = ''});

  factory Joke.fromJson(Map json) {
    return Joke(
      icon_url: json['icon_url'] ?? '',
      value: json['value'] ?? '',
      url: json['url'] ?? '',
    );
  }
}
