import 'package:equatable/equatable.dart';

class Epub extends Equatable{
  bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      isAvailable,
    ];
  }
}
