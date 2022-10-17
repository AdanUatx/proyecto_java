package com.proyecto.springproject.repositorios;


import com.proyecto.springproject.modelos.Sala;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SalaRepositorio extends JpaRepository<Sala,Integer> {
    @Query("select e from Sala as e where e.registro_activo = true")
    List<Sala> findAll();



}
