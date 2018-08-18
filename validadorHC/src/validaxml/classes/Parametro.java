/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validaxml.classes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import validaxml.dao.Conexao;

/**
 *
 * @author Marcelo Júnior
 */
public class Parametro {
    private String nome;
    private boolean obrigatorio;
    private boolean conteudo;
    private int idParametro;

    public int getIdParametro() {
        return idParametro;
    }

    public void setIdParametro(int idParametro) {
        this.idParametro = idParametro;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public boolean isConteudo() {
        return conteudo;
    }

    public void setConteudo(boolean conteudo) {
        this.conteudo = conteudo;
    }

    public boolean isObrigatorio() {
        return obrigatorio;
    }

    public void setObrigatorio(boolean obrigatorio) {
        this.obrigatorio = obrigatorio;
    }
    
    public void validaParametro(String tag){
        if(isObrigatorio()){
            if(tag.contains(getNome())){
                if(isConteudo()){
                    if(paramentroTemConteudo(tag)){
                        String valorParametro = tag.substring(tag.indexOf(getNome())+getNome().length()+2);
                        String aux = valorParametro.substring(0, valorParametro.indexOf("\"")+1);
                        aux = tag.substring(tag.indexOf(getNome()), tag.indexOf("\"")+1) + aux;
                        System.out.println(" - Parâmetro: "+aux);
                    }else{
                        System.out.println(" - Parâmetro: "+getNome()+" não está apresentando conteúdo!");
                    }
                    
                }
                else{
                    if(paramentroTemConteudo(tag)){
                        System.out.println(" - Parâmetro: "+getNome()+" não deveria apresentar conteúdo!");
                    }else{
                        System.out.println(" - Parâmetro: "+getNome());
                    }
                }
            }
            else{
                System.out.println(" - Parâmetro: "+getNome()+" não encontrado!");
            }
        }
        else{
            if(tag.contains(getNome())){
                if(isConteudo()){
                    if(paramentroTemConteudo(tag)){
                        String valorParametro = tag.substring(tag.indexOf(getNome())+getNome().length()+2);
                        String aux = valorParametro.substring(0, valorParametro.indexOf("\"")+1);
                        aux = tag.substring(tag.indexOf(getNome()), tag.indexOf("\"")+1) + aux;
                        System.out.println(" - Parâmetro: "+aux);
                    }else{
                        System.out.println(" - Parâmetro: "+getNome()+" não está apresentando conteúdo!");
                    }
                    
                }
                else{
                    if(paramentroTemConteudo(tag)){
                        System.out.println(" - Parâmetro: "+getNome()+" não deveria apresentar conteúdo!");
                    }else{
                        System.out.println(" - Parâmetro: "+getNome());
                    }
                }
            }
        }
    }
    public static ArrayList<Parametro> retornaParametros(int idTAG){
        ArrayList<Parametro> parametros=new ArrayList<>();
     
        String sql = "SELECT p.* FROM tag_parametro tp, parametro p WHERE tp.idTag="+ idTAG +" AND tp.idParametro=p.idParametro;";
        System.out.println(sql);
        //tag.setParametros(parametros);
        try{
        ResultSet rs = Conexao.executar(sql);
            while(rs.next()){
                Parametro parametro = new Parametro();
                parametro.setNome(rs.getString("nome"));
                parametro.setConteudo(rs.getBoolean("conteudo"));
                parametro.setObrigatorio(rs.getBoolean("obrigatorio"));
                
                parametro.setIdParametro(rs.getInt("idParametro"));
                System.out.println(parametro.getNome());
                parametros.add(parametro);
            }
            rs.close();
         } catch (SQLException ex) {
            Logger.getLogger(Tag.class.getName()).log(Level.SEVERE, null, ex);
        }
        return parametros;
    }
    private boolean paramentroTemConteudo(String tag){
        if(tag.contains(getNome()+"="))
            return true;
        return false;
    }
}
