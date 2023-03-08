import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  SearchInfo.fromJson(Map<String, dynamic> json) {
    textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['textSnippet'] = textSnippet;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      textSnippet,
    ];
  }
}
