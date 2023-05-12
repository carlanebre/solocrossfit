/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hito.dao;

import com.hito.model.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author carlanebre
 */
public class UsuarioDAO {
    	private String endpoint="jdbc:mysql://localhost:3306/hito3t?useSSL=false"; // cadena de conexión
	private String user="root";
	private String pass="";
	
	public Connection conectar() {
		// ambito de variables en java
		Connection connection = null; // declarar las variables antes de cualquier bloque para luego poder retornarlas.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(endpoint, user, pass);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated   catch block
			e.printStackTrace();
		} // Driver
		catch (SQLException e) { // Este tipo de Excepción es donde Java registra que el servido está caido
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
		// la variable connection está declarada dentro del try, por lo que solo puede ser utilizada dentro de este, por ello debemos declararla fuera
		
	} // Cierra el método conectar
        
      
        public void insertarUsuario(Usuario usuario) { // Insertando en base de datos
		Connection connection = conectar();
                PreparedStatement ps;
                try {
                    ps = connection.prepareStatement("INSERT INTO usuarios (user, email, plan, peso, category, eventos, horas) VALUES (?, ?, ?, ?, ?, ?, ?);");
                    ps.setString(1, usuario.getUser());
                    ps.setString(2, usuario.getEmail());
                    ps.setString(3, usuario.getPlan());
                    ps.setInt(4, usuario.getPeso());
                    ps.setString(5, usuario.getCategory());
                    ps.setInt(6, usuario.getEventos());
                    ps.setInt(7, usuario.getHoras());
                    ps.executeUpdate();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                
	}// cierre insert
        
        
       public List<Usuario> obtenerUsuarios() {
        Connection connection = conectar();
        List<Usuario> usuarios = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM usuarios;");

            while (resultSet.next()) {
                Usuario usuario = new Usuario();
                usuario.setUser(resultSet.getString("user"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setPlan(resultSet.getString("plan"));
                usuario.setPeso(resultSet.getInt("peso"));
                usuario.setCategory(resultSet.getString("category"));
                usuario.setEventos(resultSet.getInt("eventos"));
                usuario.setHoras(resultSet.getInt("horas"));

                usuarios.add(usuario);
            }

            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuarios;
    } // cierre select

        
        // mas métodos del crud

    private Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
        
}// CIERRA UsuarioDAO
