package com.lightapp.model;

public class Product {
	
	private int productID;
	private String productName;
	private String brand;
	private int modelNumber;
	private String category;
	private int sellingPrice;
	private int costPrice;
	
	
	public Product() {
		
	}
	
	
	public Product(int productID, String productName, String brand, int modelNumber, String category, int sellingPrice, int costPrice) {
		
		this.productID=productID;
		this.productName=productName;
		this.brand=brand;
		this.modelNumber=modelNumber;
		this.category=category;
		this.sellingPrice=sellingPrice;
		this.costPrice=costPrice;
		
	}
	
	// getter method of productID
	public int getProductID() {
        return productID;
    }
	
	// setter method of productID
    public void setProductID(int productID) {
        this.productID = productID;
    }
	
    // getter method of product name
    public String getProductName() {
    	return productName;
    }
    
    // setter method of product name
    public void setProductName(String productName) {
    	this.productName=productName;
    }
    
    // getter method of brand 
    public String getBrand() {
    	return brand;
    }
    
    // setter method of brand
    public void setBrand(String brand) {
    	this.brand = brand;
    }
    
    // getter method of model number
    public int getModelNumber() {
    	return modelNumber;
    }
    
    // setter method of model number
    public void setModelNumber(int modelNumber) {
    	this.modelNumber= modelNumber;
    }
    
    // getter method of category
    public String getCategory() {
    	return category;
    }
    
    // setter method of category 
    public void setCategory(String category) {
    	this.category=category;
    }
    
    // getter method of selling price
    public int getSellingPrice() {
    	return sellingPrice;
    }
    
    // setter method of selling price 
    public void setSellingPrice(int sellingPrice) {
    	this.sellingPrice=sellingPrice;
    }
    
    // getter method of cost price 
    public int getCostPrice() {
    	return costPrice;
    }
    
    // setter method of cost price
    public void setCostPrice(int costPrice) {
    	this.costPrice=costPrice;
    }
    
    
    
	
	
}
