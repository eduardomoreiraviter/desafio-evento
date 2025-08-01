package com.viter.desafiodemo.entities;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "tb_atividade")
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private String descicao;
    private Double preco;

    @ManyToOne
    @JoinColumn(name = "categoria_id")
    private Categoria categoria;

    /*
    @OneToOne(mappedBy = "atividade", cascade = CascadeType.ALL)
    private Bloco bloco;
    */

    @OneToMany(mappedBy = "atividade")
    private List<Bloco> blocos = new ArrayList<>();

    @ManyToMany(mappedBy = "atividades")
    private Set<Participante> participante = new HashSet<>();

    public Atividade() {
    }

    public Atividade(Integer id, String name, String descicao, Double preco) {
        this.id = id;
        this.name = name;
        this.descicao = descicao;
        this.preco = preco;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescicao() {
        return descicao;
    }

    public void setDescicao(String descicao) {
        this.descicao = descicao;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }
}
