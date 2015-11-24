package com.github.sharpware.pim.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import com.github.sharpware.pim.annotation.Transacional;
import com.github.sharpware.pim.dao.IProdutoDao;
import com.github.sharpware.pim.model.Produto;
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
        this.dao.salvar(produto);
        this.result.redirectTo(this).formulario();
    }
}
