package com.proyecto.springproject.modulos.cine.dto;

import com.proyecto.springproject.modelos.Cine;
import com.proyecto.springproject.modelos.Sala;

import java.sql.Timestamp;
import java.util.List;

public class CineDTO {

    private Integer cineID;
    private String cine;
    private Timestamp fecha_alta;
    private Timestamp fecha_modificacion;
    private Boolean registro_activo;


    public CineDTO(){
        super();
    }

    public CineDTO(Integer cineID, String cine, Timestamp fecha_alta, Timestamp fecha_modificacion, Boolean registro_activo) {
        this.cineID = cineID;
        this.cine = cine;
        this.fecha_alta = fecha_alta;
        this.fecha_modificacion = fecha_modificacion;
        this.registro_activo = registro_activo;

    }
    public Integer getCineID() {return cineID;}

    public void setCineID(Integer cineID) {this.cineID = cineID;}

    public String getCine() {return cine;}

    public void setCine(String cine) {this.cine = cine;}

    public Timestamp getFecha_alta() {return fecha_alta;}

    public void setFecha_alta(Timestamp fecha_alta) {this.fecha_alta = fecha_alta;}

    public Timestamp getFecha_modificacion() {return fecha_modificacion;}

    public void setFecha_modificacion(Timestamp fecha_modificacion) {this.fecha_modificacion = fecha_modificacion;}

    public Boolean getRegistro_activo() {return registro_activo;}

    public void setRegistro_activo(Boolean registro_activo) {this.registro_activo = registro_activo;}

}
