package com.example.food.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue; // Import for GeneratedValue
import jakarta.persistence.GenerationType;

@Entity
@Table(name="Fooditems")
public class Fooditems {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, unique = true)
    private Integer ID;
    @Column(nullable = false)
    private String resturantName;

    @Column(nullable = false)
    private String foodItems;
    
	public Integer getId() {
		return ID;
	}
	public void setId(Integer id) {
		this.ID = id;
	}	
	public String getResturantName() {
		return resturantName;
	}

	public void setResturantName(String resturantName) {
		this.resturantName = resturantName;
	}

	public String getFoodItems() {
		return foodItems;
	}

	public void setFoodItems(String foodItems) {
		this.foodItems = foodItems;
	}
    
    
}
