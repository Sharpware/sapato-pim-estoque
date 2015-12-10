package com.github.sharpware.pim.controller;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import com.github.sharpware.pim.annotation.Transacional;
import com.github.sharpware.pim.dao.IDao;
import com.github.sharpware.pim.model.Produto;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class ProdutoController {

    private  IDao<Produto> dao;
    private Result result;
    private Validator validator;
    
    @Inject
    public ProdutoController(IDao<Produto> dao, Result result, Validator validator) {
        this.dao = dao;
        this.result = result;
        this.validator = validator;
    }
    
    @Deprecated
    public ProdutoController() {
    	this(null, null, null);
    }
    
    public void formulario() { }
    
    public void pesquisa() { }
    
    @Transacional
    @Post("produtos")
    public void salvar(Produto produto) {
        this.validator.validate(produto);
        this.validator.onErrorUsePageOf(this).formulario();
        
        this.dao.salvar(produto);
        this.result.redirectTo(this).pesquisa();
    }

    @Get
    public void pesquisaTodos() {
    	List<Produto> produtos = this.dao.buscarTodos();
        this.result.include("produtos", produtos);
    }
    
    @Get("produtos/{id}")
    public void editar(Long id) throws Exception {
        try {
            Optional<Produto> produtoOptional = this.dao.buscarPorId(id);
            if (produtoOptional.isPresent()) {
                Produto produto = produtoOptional.get();
                this.result.include(produto);
                this.result.redirectTo(this).formulario();
            }
        } catch (Exception ex) {
            throw new Exception(ex.getMessage() + " " + ex.toString());
        }
    }
}
