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
public class Grado {
    
    int id_grado;
    int numero;
    String seccion;
    Turno turno;

    public int getId() {
        return id_grado;
    }

    public void setId(int id_grado) {
        this.id_grado = id_grado;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getSeccion() {
        return seccion;
    }

    public void setSeccion(String seccion) {
        this.seccion = seccion;
    }

    public Turno getTurno() {
        return turno;
    }

    public void setTurno(Turno turno) {
        this.turno = turno;
    }

    @Override
    public String toString() {
        try{
        return (numero + seccion + " " + turno.getDescripcion());
        }
        catch(Exception e){
            System.out.println("Vacío");
        }
        return "No hay grado";
    }
    
}
