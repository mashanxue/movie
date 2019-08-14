package com.movie.entity;

public class Movietype {
    private int movieTypeId;
    private String movieTpyeName;

    public int getMovieTypeId() {
        return movieTypeId;
    }

    public void setMovieTypeId(int movieTypeId) {
        this.movieTypeId = movieTypeId;
    }

    public String getMovieTpyeName() {
        return movieTpyeName;
    }

    public void setMovieTpyeName(String movieTpyeName) {
        this.movieTpyeName = movieTpyeName;
    }

    @Override
    public String toString() {
        return "Movietype{" +
                "movieTypeId=" + movieTypeId +
                ", movieTpyeName='" + movieTpyeName + '\'' +
                '}';
    }
}
