package com.github.sharpware.pim.model;


import java.util.Calendar;

import javax.persistence.*;

@Entity
@Table(name="estoque")
public class Estoque {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @OneToOne
    @JoinColumn(name="produto_id")
    private Produto produto;
    
    @Column(name="quantidade_produto")
    private int quantidade;

    @Temporal(TemporalType.DATE)
    @Column(name="data_entrada")
    private Calendar dataEntrada;

    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }

    public Produto getProduto() {
        return produto;
    }
    public Estoque setProduto(Produto produto) {
        this.produto = produto;
        return this;
    }
    
    public int getQuantidade() {
        return quantidade;
    }
    public Estoque setQuantidade(int quantidade) {
        this.quantidade = quantidade;
        return this;
    }
    
    public Calendar getDataEntrada() {
        return dataEntrada;
    }
    public Estoque setDataEntrada(Calendar dataEntrada) {
        this.dataEntrada = dataEntrada;
        return this;
    }
}
