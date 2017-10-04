/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.librosocial.accesoDB.mapeo;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author josemiguel
 */
@Entity
@Table(name = "persona")
public class Persona {
    @Id
    @Column(name = "idPersona")
    private Integer id;
    
    @Column(name = "nombre")
    private String nombre;
    
    @Column(name = "aPaterno")
    private String paterno;
    
    @Column(name = "aMaterno")
    private String materno;
    
    @Temporal(TemporalType.DATE)
    @Column(name = "fechaNacimiento")
    private Date fechaNacimiento;
    
    @Column(name = "sexo")
    private String sexo;
    
    @Column(name = "idPais")
    private Integer idPais;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idPais", referencedColumnName = "idPais",insertable = false,updatable = false)
    private Paises paisObj;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPaterno() {
        return paterno;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public String getMaterno() {
        return materno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public Integer getIdPais() {
        return idPais;
    }

    public void setIdPais(Integer idPais) {
        this.idPais = idPais;
    }

    public Paises getPaisObj() {
        return paisObj;
    }

    public void setPaisObj(Paises paisObj) {
        this.paisObj = paisObj;
    }
}
