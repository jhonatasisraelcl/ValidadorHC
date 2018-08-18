/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validaxml.classes;

import validaxml.dao.Conexao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Marcelo Júnior
 */
public class Tag {
    private String nome;
    private ArrayList<Parametro> parametros;
    private boolean conteudo;
    private boolean vazia;
    private int idTag;

    public int getIdTag() {
        return idTag;
    }

    public void setIdTag(int idTag) {
        this.idTag = idTag;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public ArrayList<Parametro> getParametros() {
        return parametros;
    }

    public void setParametros(ArrayList<Parametro> parametros) {
        this.parametros = parametros;
    }

    public boolean isConteudo() {
        return conteudo;
    }

    public void setConteudo(boolean conteudo) {
        this.conteudo = conteudo;
    }

    public boolean isVazia() {
        return vazia;
    }

    public void setVazia(boolean vazia) {
        this.vazia = vazia;
    }
    
    public String getTagAbertura(){
        return "<"+nome;
    }
    
    public String getTagEncerramento(){
        return "</"+nome+">";
    }
    
    public void addParametro(Parametro parametro){
        if(parametros == null)
            parametros = new ArrayList<>();
        parametros.add(parametro);
    }
    
    public String validaTag(String arquivo){
        String tag = "";
        try{
            System.out.println("\nTAG: "+getNome());
            tag = arquivo.substring(arquivo.indexOf(getTagAbertura()), arquivo.indexOf(">")+1);
            for(Parametro p: getParametros()){
                p.validaParametro(tag);
            }
            System.out.println("Fim da validação para a TAG: "+getNome());
        }
        catch(IndexOutOfBoundsException ex){
            System.out.println("TAG: "+getNome()+" não encontrada no arquivo!");
        }
        return arquivo.substring(tag.length());
    }
    public static void validar(String conteudo){
        if(conteudo.startsWith("<")){
            //System.out.println(conteudo.substring(0, conteudo.indexOf(">")+1));
            criarTag(conteudo.substring(0, conteudo.indexOf(">")+1));
            //System.out.println(conteudo.substring(conteudo.indexOf(">")+1));
            validar(conteudo.substring(conteudo.indexOf(">")+1));
        }
         else if(conteudo.trim().equals("")){
            System.out.println("Leitura concluida");
        }
        else{
            System.out.println("Conteúdo: "+conteudo.substring(0, conteudo.indexOf("<")));
            validar(conteudo.substring(conteudo.indexOf("<")));
        }
        
        
    }
    
    public static Tag criarTag(String nomeTag) {
        String aux = nomeTag;
        Tag tag = new Tag ();
        try {
            if(nomeTag.contains(" ")){
                nomeTag = nomeTag.substring(1, nomeTag.indexOf(" "));  
            }else{
                nomeTag = nomeTag.substring(1, nomeTag.indexOf(">"));  
            }
            String sql = "SELECT * FROM tag WHERE nome= '" + nomeTag+"';";
            ResultSet rs = Conexao.executar(sql);
            while (rs.next()) {
                tag.setNome(rs.getString("nome"));
                tag.setConteudo(rs.getBoolean("conteudo"));
                tag.setVazia(rs.getBoolean("vazia"));
                tag.setIdTag(rs.getInt("idTAG"));          
            }
            rs.close();
            //System.out.println(tag.getNome());
            tag.setParametros(Parametro.retornaParametros(tag.getIdTag()));
            for(Parametro p : tag.parametros){
                p.validaParametro(aux);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Tag.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tag;
    }
    
}
