// default package
// Generated Dec 29, 2017 12:52:29 PM by Hibernate Tools 4.3.1.Final
package com.springmvc.OnlineMarketplace.Bean;
import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Product generated by hbm2java
 */
@Entity
@Table(name = "Product", schema = "dbo", catalog = "ProjectDepot")
public class Product implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int productId;
	private ProductSubCategory productSubCategory;
	private String manufacture;
	private String series;
	private String model;
	private String useType;
	private String application;
	private String mountingLocation;
	private String accessories;
	private Date modelYear;
	private String image;

	public Product() {
	}

	public Product(int productId) {
		this.productId = productId;
	}

	public Product(int productId, ProductSubCategory productSubCategory, String manufacture, String series,
			String model, String useType, String application, String mountingLocation, String accessories,
			Date modelYear, String image) {
		this.productId = productId;
		this.productSubCategory = productSubCategory;
		this.manufacture = manufacture;
		this.series = series;
		this.model = model;
		this.useType = useType;
		this.application = application;
		this.mountingLocation = mountingLocation;
		this.accessories = accessories;
		this.modelYear = modelYear;
		this.image = image;
	
	}

	@Id

	@Column(name = "productId", unique = true, nullable = false)
	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "prodSubCategoryId")
	public ProductSubCategory getProductSubCategory() {
		return this.productSubCategory;
	}

	public void setProductSubCategory(ProductSubCategory productSubCategory) {
		this.productSubCategory = productSubCategory;
	}

	@Column(name = "manufacture", length = 50)
	public String getManufacture() {
		return this.manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}

	@Column(name = "series", length = 20)
	public String getSeries() {
		return this.series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	@Column(name = "model", length = 30)
	public String getModel() {
		return this.model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	@Column(name = "useType", length = 20)
	public String getUseType() {
		return this.useType;
	}

	public void setUseType(String useType) {
		this.useType = useType;
	}

	@Column(name = "application", length = 20)
	public String getApplication() {
		return this.application;
	}

	public void setApplication(String application) {
		this.application = application;
	}

	@Column(name = "mountingLocation", length = 10)
	public String getMountingLocation() {
		return this.mountingLocation;
	}

	public void setMountingLocation(String mountingLocation) {
		this.mountingLocation = mountingLocation;
	}

	@Column(name = "accessories", length = 20)
	public String getAccessories() {
		return this.accessories;
	}

	public void setAccessories(String accessories) {
		this.accessories = accessories;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "modelYear", length = 10)
	public Date getModelYear() {
		return this.modelYear;
	}

	public void setModelYear(Date modelYear) {
		this.modelYear = modelYear;
	}

	@Column(name = "image", length = 1024)
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}



}
