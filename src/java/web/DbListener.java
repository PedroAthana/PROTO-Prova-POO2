/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;
import java.util.Collections;
import model.Disciplina;


public class DbListener implements ServletContextListener {

    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String DB_URL = "jdbc:sqlite:disciplinas.db";
    
    public static String exceptionMessage = null;

  
    Connection con = null;
    Statement stmt = null;
    Exception methodEx = null;
    ResultSet rs = null;
    
    
    
    public static Connection getConection() throws Exception{
        return DriverManager.getConnection(DB_URL);
    }
    
    @Override
    public void contextInitialized(ServletContextEvent sce) { 
        String etapa = "inicializando";
        
        
        try {
            etapa="registrando a classe do drive";
            Class.forName(CLASS_NAME);
            etapa = "conectando com o banco de dados";
            con = getConection();;
            stmt = con.createStatement();
            etapa = "criar tabela";
            stmt.execute(Disciplina.getCreatStatement());
    
        } catch (Exception ex) {
            exceptionMessage = etapa + ": " + ex.getLocalizedMessage();
        }finally{
            try {stmt.close();con.close();}catch (Exception e) { }
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
