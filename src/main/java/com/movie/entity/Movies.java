package com.movie.entity;

public class Movies {
    private int moviesId;
    private String movieName;
    private double moviePrice;
    private String movieAddress;
    private double movieScore;
    private Integer movieTypeId;
    private String movieTime;
    private String moviePname;
    private String movieAbstract;
    private String movieActor;
    private Movietype movietype;

    public int getMoviesId() {
        return moviesId;
    }

    public void setMoviesId(int moviesId) {
        this.moviesId = moviesId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public double getMoviePrice() {
        return moviePrice;
    }

    public void setMoviePrice(double moviePrice) {
        this.moviePrice = moviePrice;
    }

    public String getMovieAddress() {
        return movieAddress;
    }

    public void setMovieAddress(String movieAddress) {
        this.movieAddress = movieAddress;
    }

    public double getMovieScore() {
        return movieScore;
    }

    public void setMovieScore(double movieScore) {
        this.movieScore = movieScore;
    }

    public Integer getMovieTypeId() {
        return movieTypeId;
    }

    public void setMovieTypeId(Integer movieTypeId) {
        this.movieTypeId = movieTypeId;
    }

    public String getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(String movieTime) {
        this.movieTime = movieTime;
    }

    public String getMoviePname() {
        return moviePname;
    }

    public void setMoviePname(String moviePname) {
        this.moviePname = moviePname;
    }

    public String getMovieAbstract() {
        return movieAbstract;
    }

    public void setMovieAbstract(String movieAbstract) {
        this.movieAbstract = movieAbstract;
    }

    public String getMovieActor() {
        return movieActor;
    }

    public void setMovieActor(String movieActor) {
        this.movieActor = movieActor;
    }

    public Movietype getMovietype() {
        return movietype;
    }

    public void setMovietype(Movietype movietype) {
        this.movietype = movietype;
    }

    @Override
    public String toString() {
        return "Movies{" +
                "moviesId=" + moviesId +
                ", movieName='" + movieName + '\'' +
                ", moviePrice=" + moviePrice +
                ", movieAddress='" + movieAddress + '\'' +
                ", movieScore=" + movieScore +
                ", movieTypeId=" + movieTypeId +
                ", movieTime='" + movieTime + '\'' +
                ", moviePname='" + moviePname + '\'' +
                ", movieAbstract='" + movieAbstract + '\'' +
                ", movieActor='" + movieActor + '\'' +
                ", movietype=" + movietype +
                '}';
    }
}