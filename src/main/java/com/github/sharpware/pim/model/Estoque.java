package com.github.sharpware.pim.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="estoque")
public class Estoque {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @OneToMany
    @JoinColumn(name="produto_id")
    private List<Produto> produtos;

    @Column(name="quantidade")
    private int quantidade;

    @Temporal(TemporalType.DATE)
    @Column(name="data_entrada")
    private Calendar dataEntrada;

    public Estoque() {
        this.produtos = new ArrayList<>();
    }
    
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }

    public List<Produto> getProdutos() {
        return produtos;
    }
    public Estoque addProduto(Produto produto) {
        produtos.add(produto);
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
