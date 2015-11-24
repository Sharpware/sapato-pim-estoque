package com.github.sharpware.pim.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import com.github.sharpware.pim.annotation.Transacional;
import com.github.sharpware.pim.dao.IProdutoDao;
import com.github.sharpware.pim.model.Produto;
import java.util.List;
import java.util.Optional;
import javax.inject.Inject;

@Controller
public class ProdutoController {

    private IProdutoDao dao;
    private Result result;
    private Validator validator;
    
    @Inject
    public ProdutoController(IProdutoDao dao, Result result, Validator validator) {
        this.dao = dao;
        this.result = result;
        this.validator = validator;
    }
    
    @Path("produto/formulario")
    public void formulario() { }
    
    @Transacional
    @Post("produtos")
    public void salvar(Produto produto) {
        this.validator.validate(produto);
        this.dao.salvar(produto);
        this.result.redirectTo(this).formulario();
    }
    
    public void pesquisar() {
        List<Produto> produtos = this.dao.buscarTodos();
        this.result.include("produtos", produtos);
    }
    
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
