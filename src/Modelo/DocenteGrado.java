/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author maximiliano
 */
public class DocenteGrado {
    int id_docentegrado;
    int id_docente;
    int id_grado;
    

    public int getIdDocente() {
        return id_docente;
    }

    public void setIdDocente(int id_docente) {
        this.id_docente = id_docente;
    }

    public int getIdGrado() {
        return id_grado;
    }

    public void setIdGrado(int id_grado) {
        this.id_grado = id_grado;
    }

    public int getId() {
        return id_docentegrado;
    }

    public void setId(int id) {
        this.id_docentegrado = id;
    }

    @Override
    public String toString() {
        return String.valueOf(id_docentegrado);
    }
    
    
    
    
}
