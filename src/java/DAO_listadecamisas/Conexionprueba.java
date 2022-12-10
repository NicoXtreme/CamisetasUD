/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.conexionprueba;

import DAO_listadecamisas.DAOCamisaImpl;
import entidades.Camisa;
import interfaces.DAOCamisa;

/**
 *
 * @author Ojitos
 */
public class Conexionprueba {

    public static void main(String[] args) {
        Camisa cam = new Camisa();
        //--- LISTADO ---
        //Atributos
        cam.setId(16);
        cam.setNombre("Camilo");
        
    try{
            DAOCamisa dao = new DAOCamisaImpl();
            dao.modificar(cam);
            //LISTA MODELO
            for (Camisa c : dao.listar()){
                if (c.getId()<10){
                    System.out.println("0"+c.getId() +" | "+ c.getNombre());
                }else{
                      System.out.println(c.getId() +" | "+ c.getNombre());   
                }
          }
        }catch (Exception e){
            System.out.println(e.getMessage());
        } 
    
     //--- INSERTAR ---
     
        cam.setId(13);
        cam.setNombre("Camilo");
        
    try{
            DAOCamisa dao = new DAOCamisaImpl();
            dao.eliminar(cam);
            //LISTA MODELO
            for (Camisa c : dao.listar()){
                if (c.getId()<10){
                    System.out.println("0"+c.getId() +" | "+ c.getNombre());
                }else{
                      System.out.println(c.getId() +" | "+ c.getNombre());   
                }
          }
        }catch (Exception e){
            System.out.println(e.getMessage());
        } 
     
        
    }
}