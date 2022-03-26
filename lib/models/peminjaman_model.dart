class PeminjamanModel {
  bool? success;
  String? message;
  List<Data>? data;

  PeminjamanModel({required this.success, required this.message, required this.data});

  PeminjamanModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? jumlahBukudipinjam;
  String? tanggalPinjam;
  String? tanggalKembali;
  int? kodeBuku;
  String? namaAnggota;
  String? namaPetugas;

  Data(
      {required this.jumlahBukudipinjam,
      required this.tanggalPinjam,
      required this.tanggalKembali,
      required this.kodeBuku,
      required this.namaAnggota,
      required this.namaPetugas});

  Data.fromJson(Map<String, dynamic> json) {
    jumlahBukudipinjam = json['jumlah_bukudipinjam'];
    tanggalPinjam = json['tanggal_pinjam'];
    tanggalKembali = json['tanggal_kembali'];
    kodeBuku = json['kode_buku'];
    namaAnggota = json['nama_anggota'];
    namaPetugas = json['nama_petugas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumlah_bukudipinjam'] = this.jumlahBukudipinjam;
    data['tanggal_pinjam'] = this.tanggalPinjam;
    data['tanggal_kembali'] = this.tanggalKembali;
    data['kode_buku'] = this.kodeBuku;
    data['nama_anggota'] = this.namaAnggota;
    data['nama_petugas'] = this.namaPetugas;
    return data;
  }
}