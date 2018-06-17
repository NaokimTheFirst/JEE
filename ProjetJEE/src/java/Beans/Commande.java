package Beans;

import java.util.ArrayList;


public class Commande {
    /* Propriétés du bean */
    private Client client;
    private ArrayList<Article> article = new ArrayList<Article>();
    private String date;
    private Float montant;
    private String statutLivraison;
   
    public Client getClient() {
        return client;
    }

    public void setClient( Client client ) {
        this.client = client;
    }

    public String getDate() {
        return date;
    }

    public void setDate( String date ) {
        this.date = date;
    }

    public Float getMontant() {
        return montant;
    }

    public void setMontant() {
        montant = 0f;
        for(Article a: article){
            montant += a.getMontantTotal();
        }
    }

    public String getStatutLivraison() {
        return statutLivraison;
    }

    public void setStatutLivraison( String statutLivraison ) {
        this.statutLivraison = statutLivraison;
    }

    public ArrayList<Article> getArticle() {
        return article;
    }

    public void addArticle(Article article) {
        this.article.add(article);
    }
}