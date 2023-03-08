import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable{
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  SaleInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = country;
    data['saleability'] = saleability;
    data['isEbook'] = isEbook;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      country,
      saleability,
      isEbook,
    ];
  }
}
