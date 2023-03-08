import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable {
  bool? text;
  bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  ReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['image'] = image;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      text,
      image,
    ];
  }
}
