package com.proyecto.springproject.modelos;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "r_cine_sala")
public class CineSala {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id_cine_sala;

    @ManyToOne
    @JoinColumn(name = "id_cine")
    private Cine cine;

    @ManyToOne
    @JoinColumn(name = "id_sala")
    private Sala sala;

    @Column
    private Timestamp fecha_alta;

    @Column
    private Timestamp fecha_modificacion;

    @Column
    private Boolean registro_activo;

    public Integer getId_cine_sala() {
        return id_cine_sala;
    }

    public void setId_cine_sala(Integer id_cine_sala) {
        this.id_cine_sala = id_cine_sala;
    }

    public Cine getCine() {
        return cine;
    }

    public void setCine(Cine cine) {
        this.cine = cine;
    }

    public Sala getSala() {
        return sala;
    }

    public void setSala(Sala sala) {
        this.sala = sala;
    }

    public Timestamp getFecha_alta() {
        return fecha_alta;
    }

    public void setFecha_alta(Timestamp fecha_alta) {
        this.fecha_alta = fecha_alta;
    }

    public Timestamp getFecha_modificacion() {
        return fecha_modificacion;
    }

    public void setFecha_modificacion(Timestamp fecha_modificacion) {
        this.fecha_modificacion = fecha_modificacion;
    }

    public Boolean getRegistro_activo() {
        return registro_activo;
    }

    public void setRegistro_activo(Boolean registro_activo) {
        this.registro_activo = registro_activo;
    }
}
