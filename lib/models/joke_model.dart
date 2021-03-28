class Joke {
  String value;
  String url;

  Joke({this.value = '', this.url = ''});

  factory Joke.fromJson(Map json) {
    return Joke(
      value: json['value'] ?? '',
      url: json['url'] ?? '',
    );
  }
}
