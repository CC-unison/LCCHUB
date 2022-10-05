import 'package:cloud_firestore/cloud_firestore.dart';

class AdminModel {
  final int id_admin;
  final String nombre;
  final String correo;
  final String password;
  final DateTime fecha_Creacion; 

  AdminModel({
    required this.id_admin,
    required this.nombre,
    required this.correo,
    required this.password,
    required this.fecha_Creacion,
  });

  //alumno from map
  factory AdminModel.fromMap(dynamic map) => AdminModel(
    id_admin: map['id_admin'] as int,
    nombre: map['nombre'] as String,
    correo: map['correo'] as String,
    password: map['password'] as String,
    fecha_Creacion: map['fecha_Creacion'] as DateTime,
  );

    //alumno to map
Map<String, dynamic> toMap() => {
    'id_admin': id_admin,
    'nombre': nombre,
    'correo': correo,
    'password': password,
    'fecha_Creacion': fecha_Creacion,
    };
}