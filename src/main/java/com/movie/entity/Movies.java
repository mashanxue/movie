package com.movie.entity;

public class Movies {
    private Integer moviesid;

    private String moviename;

    private Long movieprice;

    private String movieaddress;

    private Double moviescore;

    private String movietype;

    private String movietime;

    private String moviepname;

    private String movieabstract;

    private String movieactor;

    public Movies(Integer moviesid, String moviename, Long movieprice, String movieaddress, Double moviescore, String movietype, String movietime, String moviepname, String movieabstract, String movieactor) {
        this.moviesid = moviesid;
        this.moviename = moviename;
        this.movieprice = movieprice;
        this.movieaddress = movieaddress;
        this.moviescore = moviescore;
        this.movietype = movietype;
        this.movietime = movietime;
        this.moviepname = moviepname;
        this.movieabstract = movieabstract;
        this.movieactor = movieactor;
    }

    public Movies() {
        super();
    }

    public Integer getMoviesid() {
        return moviesid;
    }

    public void setMoviesid(Integer moviesid) {
        this.moviesid = moviesid;
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename == null ? null : moviename.trim();
    }

    public Long getMovieprice() {
        return movieprice;
    }

    public void setMovieprice(Long movieprice) {
        this.movieprice = movieprice;
    }

    public String getMovieaddress() {
        return movieaddress;
    }

    public void setMovieaddress(String movieaddress) {
        this.movieaddress = movieaddress == null ? null : movieaddress.trim();
    }

    public Double getMoviescore() {
        return moviescore;
    }

    public void setMoviescore(Double moviescore) {
        this.moviescore = moviescore;
    }

    public String getMovietype() {
        return movietype;
    }

    public void setMovietype(String movietype) {
        this.movietype = movietype == null ? null : movietype.trim();
    }

    public String getMovietime() {
        return movietime;
    }

    public void setMovietime(String movietime) {
        this.movietime = movietime == null ? null : movietime.trim();
    }

    public String getMoviepname() {
        return moviepname;
    }

    public void setMoviepname(String moviepname) {
        this.moviepname = moviepname == null ? null : moviepname.trim();
    }

    public String getMovieabstract() {
        return movieabstract;
    }

    public void setMovieabstract(String movieabstract) {
        this.movieabstract = movieabstract == null ? null : movieabstract.trim();
    }

    public String getMovieactor() {
        return movieactor;
    }

    public void setMovieactor(String movieactor) {
        this.movieactor = movieactor == null ? null : movieactor.trim();
    }
}