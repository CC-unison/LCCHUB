import 'package:cloud_firestore/cloud_firestore.dart';

class SubjectModel {
  final int clave_mat;
  final String asignatura;
  final int creditos;
  final int horas_teoria;
  final int horas_lab;
  final String division_academica;
  final String departamento;
  final String eje;

  SubjectModel({
    required this.clave_mat,
    required this.asignatura,
    required this.creditos,
    required this.horas_teoria,
    required this.horas_lab,
    required this.division_academica,
    required this.departamento,
    required this.eje,
  });

  //alumno from map
  factory SubjectModel.fromMap(dynamic map) => SubjectModel(
    clave_mat: map['clave_mat'] as int,
    asignatura: map['asignatura'] as String,
    creditos: map['creditos'] as int,
    horas_teoria: map['horas_teoria'] as int,
    horas_lab: map['horas_lab'] as int,
    division_academica: map['division_academica'] as String,
    departamento: map['departamento'] as String,
    eje: map['eje'] as String,
  );

    //alumno to map
Map<String, dynamic> toMap() => {
    'clave_mat': clave_mat,
    'asignatura': asignatura,
    'creditos': creditos,
    'horas_teoria': horas_teoria,
    'horas_lab': horas_lab,
    'division_academica': division_academica,
    'departamento': departamento,
    'eje': eje,
    };
}