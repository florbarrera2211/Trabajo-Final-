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
public class Cargo {
    
    int id_cargo;
    int codigo;
    String descripcion;

    public int getId() {
        return id_cargo;
    }

    public void setId(int id_cargo) {
        this.id_cargo = id_cargo;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return descripcion;
    }
    
    
}
