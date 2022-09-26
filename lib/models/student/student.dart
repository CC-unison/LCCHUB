import 'package:cloud_firestore/cloud_firestore.dart';

class StudentModel {
  final int expediente;
  final String nombre_programa;
  final String clave_programa;
  final String nombre;
  final String status;
  final int cred_pasante;
  final int cred_aprob_;
  final double prom_kdxs;
  final double prom_periodo;
  final int mat_aprob_;
  final int materias_acreditadas;
  final int materias_inscritas;
  final int materias_segunda_inscr;
  final int materias_tercera_inscr;
  final int materias_reprobadas;
  final int materias_bajas_voluntarias;
  final int cred_inscr;
  final String nivel_y_ciclo_ingles;
  final String correo;
  final int cred_cult;
  final int cred_dep;
  final String practica_profesional_estatus_y_ciclo;
  final String serviciosocialmateriaestatus_ciclo;
  final String estatusproyectoserviciosocial_cicloregistro;
  final String egel_testimonio;
  final String inscrito;

  StudentModel({
    required this.expediente,
    required this.nombre_programa,
    required this.clave_programa,
    required this.nombre,
    required this.status,
    required this.cred_pasante,
    required this.cred_aprob_,
    required this.prom_kdxs,
    required this.prom_periodo,
    required this.mat_aprob_,
    required this.materias_acreditadas,
    required this.materias_inscritas,
    required this.materias_segunda_inscr,
    required this.materias_tercera_inscr,
    required this.materias_reprobadas,
    required this.materias_bajas_voluntarias,
    required this.cred_inscr,
    required this.nivel_y_ciclo_ingles,
    required this.correo,
    required this.cred_cult,
    required this.cred_dep,
    required this.practica_profesional_estatus_y_ciclo,
    required this.serviciosocialmateriaestatus_ciclo,
    required this.estatusproyectoserviciosocial_cicloregistro,
    required this.egel_testimonio,
    required this.inscrito,
  });

  //alumno from map
  factory StudentModel.fromMap(dynamic map) => StudentModel(
    expediente: map['expediente'] as int,
    nombre_programa: map['nombre_programa'] as String,
    clave_programa: map['clave_programa'] as String,
    nombre: map['nombre'] as String,
    status: map['status'] as String,
    cred_pasante: map['cred_pasante'] as int,
    cred_aprob_: map['cred_aprob_'] as int,
    prom_kdxs: map['prom_kdxs'] as double,
    prom_periodo: map['prom_periodo'] as double,
    mat_aprob_: map['mat_aprob_'] as int,
    materias_acreditadas: map['materias_acreditadas'] as int,
    materias_inscritas: map['materias_inscritas'] as int,
    materias_segunda_inscr: map['materias_segunda_inscr'] as int,
    materias_tercera_inscr: map['materias_tercera_inscr'] as int,
    materias_reprobadas: map['materias_reprobadas'] as int,
    materias_bajas_voluntarias: map['materias_bajas_voluntarias'] as int,
    cred_inscr: map['cred_inscr'] as int,
    nivel_y_ciclo_ingles: map['nivel_y_ciclo_ingles'] as String,
    correo: map['correo'] as String,
    cred_cult: map['cred_cult'] as int,
    cred_dep: map['cred_dep'] as int,
    practica_profesional_estatus_y_ciclo:
        map['practica_profesional_estatus_y_ciclo'] as String,
    serviciosocialmateriaestatus_ciclo:
        map['serviciosocialmateriaestatus_ciclo'] as String,
    estatusproyectoserviciosocial_cicloregistro:
        map['estatusproyectoserviciosocial_cicloregistro'] as String,
    egel_testimonio: map['egel_testimonio'] as String,
    inscrito: map['inscrito'] as String,
      );
    //alumno to map
Map<String, dynamic> toMap() => {
    'expediente': expediente,
    'nombre_programa': nombre_programa,
    'clave_programa': clave_programa,
    'nombre': nombre,
    'status': status,
    'cred_pasante': cred_pasante,
    'cred_aprob_': cred_aprob_,
    'prom_kdxs': prom_kdxs,
    'prom_periodo': prom_periodo,
    'mat_aprob_': mat_aprob_,
    'materias_acreditadas': materias_acreditadas,
    'materias_inscritas': materias_inscritas,
    'materias_segunda_inscr': materias_segunda_inscr,
    'materias_tercera_inscr': materias_tercera_inscr,
    'materias_reprobadas': materias_reprobadas,
    'materias_bajas_voluntarias': materias_bajas_voluntarias,
    'cred_inscr': cred_inscr,
    'nivel_y_ciclo_ingles': nivel_y_ciclo_ingles,
    'correo': correo,
    'cred_cult': cred_cult,
    'cred_dep': cred_dep,
    'practica_profesional_estatus_y_ciclo':
        practica_profesional_estatus_y_ciclo,
    'serviciosocialmateriaestatus_ciclo': serviciosocialmateriaestatus_ciclo,
    'estatusproyectoserviciosocial_cicloregistro':
        estatusproyectoserviciosocial_cicloregistro,
    'egel_testimonio': egel_testimonio,
    'inscrito': inscrito,
    };
}