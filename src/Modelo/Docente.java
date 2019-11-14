/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.ArrayList;

/**
 *
 * @author maximiliano
 */
public class Docente extends Persona{
    
    int id_docente;
    int legajo;
    Cargo cargo;

    public int getId() {
        return id_docente;
    }

    public void setId(int id_docente) {
        this.id_docente = id_docente;
    }

    public int getLegajo() {
        return legajo;
    }

    public void setLegajo(int legajo) {
        this.legajo = legajo;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }
    

}
