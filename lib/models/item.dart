// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  String model;
  int pk;
  Fields fields;

  Item({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  String name;
  int amount;
  String description;
  double price;

  Fields({
    required this.name,
    required this.amount,
    required this.description,
    required this.price,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        amount: json["amount"],
        description: json["description"],
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "amount": amount,
        "description": description,
        "price": price,
      };
}
