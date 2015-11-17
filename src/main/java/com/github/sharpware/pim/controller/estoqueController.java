package com.github.sharpware.pim.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;

@Controller
public class estoqueController {
    
    @Post
    public void inicio(){
        System.out.println("Teste Estoque VRaptor 4.0... OK");
    }
    
}
