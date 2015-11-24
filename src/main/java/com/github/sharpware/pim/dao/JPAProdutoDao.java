/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.sharpware.pim.dao;

import static java.util.Objects.requireNonNull;

import com.github.sharpware.pim.model.Produto;
import java.util.List;
import java.util.Optional;
import javax.persistence.EntityManager;
import javax.persistence.EntityNotFoundException;


/**
 *
 * @author root
 */
public class JPAProdutoDao implements IProdutoDao{

    private EntityManager manager;

    public JPAProdutoDao(EntityManager manager) {
        this.manager = manager;
    }
    
    @Override
    public void salvar(Produto produto) {
        try {
            this.manager.merge(requireNonNull(produto));
        } catch(Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    @Override
    public Optional<Produto> buscarPorId(Long id) {
        try {
            Produto produto = this.manager.find(Produto.class, id);
            return Optional.ofNullable(produto);
        } catch (EntityNotFoundException ex) {
            return Optional.empty();
        }
    }

    @Override
    public List<Produto> buscarTodos() {
        return this.manager.createQuery("SELECT p FROM Produto p", Produto.class)
                            .getResultList();
    }
    
}
