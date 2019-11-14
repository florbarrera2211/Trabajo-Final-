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
public class Alumno extends Persona{
    
    int id_alumno;
    int matricula;
    Grado grado;
    
    public int getId() {
        return id_alumno;
    }

    public void setId(int id_alumno) {
        this.id_alumno = id_alumno;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public Grado getGrado() {
        return grado;
    }

    public void setGrado(Grado grado) {
        this.grado = grado;
    }
    
    
}
