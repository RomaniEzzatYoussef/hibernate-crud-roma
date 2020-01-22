package org.romani.models;

import java.util.LinkedHashMap;

public class UserInfo {

    private String firstName;
    private String lastName;
    private String country;
    private String favoriteLanguage;
    private String[] operatingSystems;

    private LinkedHashMap<String , String> countryOptions;
    private LinkedHashMap<String, String> favoriteLanguageOptions;
    private LinkedHashMap<String, String> operatingSystemsOptions;

    public UserInfo() {
        // populate country options: used ISO country code
        countryOptions = new LinkedHashMap<>();

        // parameter order: value, display label
        //
        countryOptions.put("EG" , "Egypt");
        countryOptions.put("DE" , "German");
        countryOptions.put("FR" , "France");
        countryOptions.put("BR" , "Brazil");
        countryOptions.put("US" , "United States Of America");

        // populate favorite language options
        favoriteLanguageOptions = new LinkedHashMap<>();

        // parameter order: value, display label
        //
        favoriteLanguageOptions.put("Java", "Java");
        favoriteLanguageOptions.put("C#", "C#");
        favoriteLanguageOptions.put("PHP", "PHP");
        favoriteLanguageOptions.put("Ruby", "Ruby");
        favoriteLanguageOptions.put("Javascript", "Javascript");

        // populate operating systems options
        operatingSystemsOptions = new LinkedHashMap<>();

        // parameter order: value, display label
        //
        operatingSystemsOptions.put("MS Windows" , "MS Windows");
        operatingSystemsOptions.put("Mac OS" , "Mac OS");
        operatingSystemsOptions.put("Linux" , "Linux");
        operatingSystemsOptions.put("Android" , "Android");
        operatingSystemsOptions.put("BlackBerry" , "BlackBerry");

    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getFavoriteLanguage() {
        return favoriteLanguage;
    }

    public void setFavoriteLanguage(String favoriteLanguage) {
        this.favoriteLanguage = favoriteLanguage;
    }

    public LinkedHashMap<String, String> getCountryOptions() {
        return countryOptions;
    }

    public void setCountryOptions(LinkedHashMap<String, String> countryOptions) {
        this.countryOptions = countryOptions;
    }

    public LinkedHashMap<String, String> getFavoriteLanguageOptions() {
        return favoriteLanguageOptions;
    }

    public void setFavoriteLanguageOptions(LinkedHashMap<String, String> favoriteLanguageOptions) {
        this.favoriteLanguageOptions = favoriteLanguageOptions;
    }

    public String[] getOperatingSystems() {
        return operatingSystems;
    }

    public void setOperatingSystems(String[] operatingSystems) {
        this.operatingSystems = operatingSystems;
    }

    public LinkedHashMap<String, String> getOperatingSystemsOptions() {
        return operatingSystemsOptions;
    }

    public void setOperatingSystemsOptions(LinkedHashMap<String, String> operatingSystemsOptions) {
        this.operatingSystemsOptions = operatingSystemsOptions;
    }
}
