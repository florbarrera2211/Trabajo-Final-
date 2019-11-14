/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;
import util.Conexion;
import objetos.DocenteGrado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import static uis.Principal.docenteGrados;
/**
 *
 * @author ariel
 */
public class DocenteGradoDTO extends Transaccion implements Icrud<DocenteGrado, Double>{
    private PreparedStatement ps;
    private ResultSet rs;
    Connection con = Conexion.conectarDB();
    
    public DocenteGradoDTO(Conexion conexion) {
        super(conexion);
    }

    public DocenteGradoDTO() {
    }
    
    @Override
    public boolean crear(DocenteGrado entidad) {
        
        String query;
        query = "INSERT INTO public.docentegrado(" +
                "id_grado, id_docente)" +
                "VALUES (?, ?)";
;
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, entidad.getIdGrado());
            ps.setInt(2, entidad.getIdDocente());
            ps.executeUpdate();
           
            
        } catch (SQLException ex) {
            //JOptionPane.showMessageDialog(null, "Ese código ya existe");
            Logger.getLogger(DocenteGradoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    @Override
    public boolean eliminar(int id_docente) {
        String query = "DELETE FROM docentegrado WHERE id_docente=?;";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id_docente);
            int row = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DocenteGradoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }
    
    public boolean eliminarG(int id_grado, int id_docente) {
        String query = "DELETE FROM docentegrado WHERE id_grado=? and id_docente=?;";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id_grado);
            ps.setInt(2, id_docente);
            int row = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DocenteGradoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }
    
    

    @Override
    public DocenteGrado extraer(int codigo) {
        String query;
        query = "Select * from docentegrado where id_grado=?";
        DocenteGrado grado = new DocenteGrado();
      
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, codigo);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                grado.setId(rs.getInt(1));
                grado.setIdGrado(rs.getInt(2));
                grado.setIdDocente(rs.getInt(3));
            }

        } catch (SQLException ex) {
            Logger.getLogger(DocenteGradoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return grado;
    }
    public ArrayList<String> extraerP(int codigo) {
        String query;
        query = "select g.seccion, g.numero, t.descripcion\n" +
                "from docentes d\n" +
                "inner join docentegrado dg\n" +
                "on d.id_docente = dg.id_docente\n" +
                "inner join grados g\n" +
                "on g.id_grado = dg.id_grado\n" +
                "inner join turnos t\n" +
                "on g.id_turno = t.id_turno\n" +
                "where d.id_docente =?";
        ArrayList<String> extraerP = new ArrayList<>();
      
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, codigo);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                extraerP.add(String.valueOf(rs.getInt(2)));
                extraerP.add(rs.getString(1));
                extraerP.add(rs.getString(3));
            }

        } catch (SQLException ex) {
            Logger.getLogger(DocenteGradoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return extraerP;
    }

    @Override
    public boolean modificar(DocenteGrado entidad) {
        String query = "UPDATE docentegrado SET id_grado=?, id_docente=? WHERE id_docentegrado=?;";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, entidad.getIdGrado());
            ps.setInt(2, entidad.getIdDocente());
            ps.setInt(3, entidad.getId());
            int row = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DocenteGradoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }
   
    @Override
    public ArrayList<DocenteGrado> extraerTodo() {
        String query;
        query = "Select * from docentegrado";
      
        try {
            Statement s = con.createStatement();
            s.execute(query);
            ResultSet rs = s.getResultSet();
            
            while (rs.next()) {
                DocenteGrado grado = new DocenteGrado();
                grado.setId(rs.getInt(1));
                grado.setIdGrado(rs.getInt(2));
                grado.setIdDocente(rs.getInt(3));
                docenteGrados.add(grado);
            }
            //rs.close();
            //con.close();
            

        } catch (SQLException ex) {
            Logger.getLogger(DocenteGradoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return docenteGrados;
    }

}
