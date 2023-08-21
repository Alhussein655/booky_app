// To parse this JSON data, do
//
//     final bookModel = bookModelFromMap(jsonString);

import 'dart:convert';

import 'package:booky/features/home/domain/entities/book_entity.dart';

BookModel bookModelFromMap(String str) => BookModel.fromMap(json.decode(str));

String bookModelToMap(BookModel data) => json.encode(data.toMap());

class BookModel extends BookEntity{
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  })     : super(
      title: volumeInfo?.title ?? '',
      authorName: volumeInfo?.authors?.first ?? '',
      price: 0,
      rating: null,
      bookId: id!,
      image: volumeInfo?.imageLinks?.thumbnail ?? '');

  factory BookModel.fromMap(Map<String, dynamic> json) => BookModel(
    kind: json["kind"],
    id: json["id"],
    etag: json["etag"],
    selfLink: json["selfLink"],
    volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromMap(json["volumeInfo"]),
    saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromMap(json["saleInfo"]),
    accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromMap(json["accessInfo"]),
    searchInfo: json["searchInfo"] == null ? null : SearchInfo.fromMap(json["searchInfo"]),
  );

  Map<String, dynamic> toMap() => {
    "kind": kind,
    "id": id,
    "etag": etag,
    "selfLink": selfLink,
    "volumeInfo": volumeInfo?.toMap(),
    "saleInfo": saleInfo?.toMap(),
    "accessInfo": accessInfo?.toMap(),
    "searchInfo": searchInfo?.toMap(),
  };
}

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromMap(Map<String, dynamic> json) => AccessInfo(
    country: json["country"],
    viewability: json["viewability"],
    embeddable: json["embeddable"],
    publicDomain: json["publicDomain"],
    textToSpeechPermission: json["textToSpeechPermission"],
    epub: json["epub"] == null ? null : Epub.fromMap(json["epub"]),
    pdf: json["pdf"] == null ? null : Pdf.fromMap(json["pdf"]),
    webReaderLink: json["webReaderLink"],
    accessViewStatus: json["accessViewStatus"],
    quoteSharingAllowed: json["quoteSharingAllowed"],
  );

  Map<String, dynamic> toMap() => {
    "country": country,
    "viewability": viewability,
    "embeddable": embeddable,
    "publicDomain": publicDomain,
    "textToSpeechPermission": textToSpeechPermission,
    "epub": epub?.toMap(),
    "pdf": pdf?.toMap(),
    "webReaderLink": webReaderLink,
    "accessViewStatus": accessViewStatus,
    "quoteSharingAllowed": quoteSharingAllowed,
  };
}

class Epub {
  bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  factory Epub.fromMap(Map<String, dynamic> json) => Epub(
    isAvailable: json["isAvailable"],
  );

  Map<String, dynamic> toMap() => {
    "isAvailable": isAvailable,
  };
}

class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory Pdf.fromMap(Map<String, dynamic> json) => Pdf(
    isAvailable: json["isAvailable"],
    acsTokenLink: json["acsTokenLink"],
  );

  Map<String, dynamic> toMap() => {
    "isAvailable": isAvailable,
    "acsTokenLink": acsTokenLink,
  };
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  factory SaleInfo.fromMap(Map<String, dynamic> json) => SaleInfo(
    country: json["country"],
    saleability: json["saleability"],
    isEbook: json["isEbook"],
  );

  Map<String, dynamic> toMap() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
  };
}

class SearchInfo {
  String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  factory SearchInfo.fromMap(Map<String, dynamic> json) => SearchInfo(
    textSnippet: json["textSnippet"],
  );

  Map<String, dynamic> toMap() => {
    "textSnippet": textSnippet,
  };
}

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  DateTime? publishedDate;
  String? description;
  List<IndustryIdentifier>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromMap(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"],
    subtitle: json["subtitle"],
    authors: json["authors"] == null ? [] : List<String>.from(json["authors"]!.map((x) => x)),
    publisher: json["publisher"],
    publishedDate: json["publishedDate"] == null ? null : DateTime.parse(json["publishedDate"]),
    description: json["description"],
    industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"]!.map((x) => IndustryIdentifier.fromMap(x))),
    readingModes: json["readingModes"] == null ? null : ReadingModes.fromMap(json["readingModes"]),
    pageCount: json["pageCount"],
    printType: json["printType"],
    categories: json["categories"] == null ? [] : List<String>.from(json["categories"]!.map((x) => x)),
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromMap(json["panelizationSummary"]),
    imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromMap(json["imageLinks"]),
    language: json["language"],
    previewLink: json["previewLink"],
    infoLink: json["infoLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "subtitle": subtitle,
    "authors": authors == null ? [] : List<dynamic>.from(authors!.map((x) => x)),
    "publisher": publisher,
    "publishedDate": "${publishedDate!.year.toString().padLeft(4, '0')}-${publishedDate!.month.toString().padLeft(2, '0')}-${publishedDate!.day.toString().padLeft(2, '0')}",
    "description": description,
    "industryIdentifiers": industryIdentifiers == null ? [] : List<dynamic>.from(industryIdentifiers!.map((x) => x.toMap())),
    "readingModes": readingModes?.toMap(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x)),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary?.toMap(),
    "imageLinks": imageLinks?.toMap(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
  };
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromMap(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json["smallThumbnail"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toMap() => {
    "smallThumbnail": smallThumbnail,
    "thumbnail": thumbnail,
  };
}

class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromMap(Map<String, dynamic> json) => IndustryIdentifier(
    type: json["type"],
    identifier: json["identifier"],
  );

  Map<String, dynamic> toMap() => {
    "type": type,
    "identifier": identifier,
  };
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromMap(Map<String, dynamic> json) => PanelizationSummary(
    containsEpubBubbles: json["containsEpubBubbles"],
    containsImageBubbles: json["containsImageBubbles"],
  );

  Map<String, dynamic> toMap() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromMap(Map<String, dynamic> json) => ReadingModes(
    text: json["text"],
    image: json["image"],
  );

  Map<String, dynamic> toMap() => {
    "text": text,
    "image": image,
  };
}
