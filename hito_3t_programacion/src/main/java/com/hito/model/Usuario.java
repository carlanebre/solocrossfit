/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hito.model;

/**
 *
 * @author carlanebre
 */
public class Usuario {
    protected int id;
    protected String user;
    protected String email;
    protected String plan;
    protected int peso;
    protected String category;
    protected int eventos;
    protected int horas;

    public Usuario() {}
    
    public Usuario(String user, String email, String plan, int peso, String category, int eventos, int horas) {
        super();
        this.user = user;
        this.email = email;
        this.plan = plan;
        this.peso = peso;
        this.category = category;
        this.eventos = eventos;
        this.horas = horas;
    }

    public Usuario(int id, String user, String email, String plan, int peso, String category, int eventos, int horas) {
        super();
        this.id = id;
        this.user = user;
        this.email = email;
        this.plan = plan;
        this.peso = peso;
        this.category = category;
        this.eventos = eventos;
        this.horas = horas;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPlan() {
        return plan;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }
    
    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }
    
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
     public int getEventos() {
        return eventos;
    }

    public void setEventos(int eventos) {
        this.eventos = eventos;
    }
    
    public int getHoras() {
        return horas;
    }

    public void setHoras(int horas) {
        this.horas = horas;
    }

}

