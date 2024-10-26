// import 'audio_full.dart';

// class Datum {
// 	int? nomor;
// 	String? nama;
// 	String? namaLatin;
// 	int? jumlahAyat;
// 	String? tempatTurun;
// 	String? arti;
// 	String? deskripsi;
// 	AudioFull? audioFull;

// 	Datum({
// 		this.nomor, 
// 		this.nama, 
// 		this.namaLatin, 
// 		this.jumlahAyat, 
// 		this.tempatTurun, 
// 		this.arti, 
// 		this.deskripsi, 
// 		this.audioFull, 
// 	});

// 	factory Datum.fromJson(Map<String, dynamic> json) => Datum(
// 				nomor: json['nomor'] as int?,
// 				nama: json['nama'] as String?,
// 				namaLatin: json['namaLatin'] as String?,
// 				jumlahAyat: json['jumlahAyat'] as int?,
// 				tempatTurun: json['tempatTurun'] as String?,
// 				arti: json['arti'] as String?,
// 				deskripsi: json['deskripsi'] as String?,
// 				audioFull: json['audioFull'] == null
// 						? null
// 						: AudioFull.fromJson(json['audioFull'] as Map<String, dynamic>),
// 			);

// 	Map<String, dynamic> toJson() => {
// 				'nomor': nomor,
// 				'nama': nama,
// 				'namaLatin': namaLatin,
// 				'jumlahAyat': jumlahAyat,
// 				'tempatTurun': tempatTurun,
// 				'arti': arti,
// 				'deskripsi': deskripsi,
// 				'audioFull': audioFull?.toJson(),
// 			};
// }
