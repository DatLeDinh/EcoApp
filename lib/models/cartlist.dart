import 'dart:convert';

List<Cartlist> cartlistFromJson(String str) =>
    List<Cartlist>.from(json.decode(str).map((x) => Cartlist.fromJson(x)));

String cartlistToJson(List<Cartlist> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cartlist {
  Cartlist({
    this.img,
    this.name,
    this.ref,
    this.price,
    this.size,
  });

  String img;
  String name;
  String ref;
  String price;
  String size;

  factory Cartlist.fromJson(Map<String, dynamic> json) => Cartlist(
        img: json["img"],
        name: json["name"],
        ref: json["ref"],
        price: json["price"],
        size: json["size"],
      );

  Map<String, dynamic> toJson() => {
        "img": img,
        "name": name,
        "ref": ref,
        "price": price,
        "size": size,
      };
}
