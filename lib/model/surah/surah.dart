// import 'datum.dart';

// class Surah {
// 	int? code;
// 	String? message;
// 	List<Datum>? data;

// 	Surah({this.code, this.message, this.data});

// 	factory Surah.fromJson(Map<String, dynamic> json) => Surah(
// 				code: json['code'] as int?,
// 				message: json['message'] as String?,
// 				data: (json['data'] as List<dynamic>?)
// 						?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
// 						.toList(),
// 			);

// 	Map<String, dynamic> toJson() => {
// 				'code': code,
// 				'message': message,
// 				'data': data?.map((e) => e.toJson()).toList(),
// 			};
// }
