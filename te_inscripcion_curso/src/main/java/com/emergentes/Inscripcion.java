
package com.emergentes;

public class Inscripcion {
    
    private String nombres;
    private String apellidos;
    private String curso;

    public Inscripcion() {
        
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    @Override
    public String toString() {
        return "Inscripcion{" + "nombres=" + nombres + ", apellidos=" + apellidos + ", curso=" + curso + '}';
    }
   
}
