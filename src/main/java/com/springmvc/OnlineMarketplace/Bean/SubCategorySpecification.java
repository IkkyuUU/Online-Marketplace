package com.springmvc.OnlineMarketplace.Bean;
// Generated Dec 29, 2017 2:44:55 PM by Hibernate Tools 4.3.1.Final

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * SubCategorySpecification generated by hbm2java
 */
@Entity
@Table(name = "SubCategorySpecification", catalog = "OnlineMarketplace")
public class SubCategorySpecification implements java.io.Serializable {

	private SubCategorySpecificationId id;
	private Integer min;
	private Integer max;

	public SubCategorySpecification() {
	}

	public SubCategorySpecification(SubCategorySpecificationId id) {
		this.id = id;
	}

	public SubCategorySpecification(SubCategorySpecificationId id, Integer min, Integer max) {
		this.id = id;
		this.min = min;
		this.max = max;
	}

	@EmbeddedId

	@AttributeOverrides({
			@AttributeOverride(name = "prodSubCategoryId", column = @Column(name = "prodSubCategoryId", nullable = false)),
			@AttributeOverride(name = "specId", column = @Column(name = "specId", nullable = false)) })
	public SubCategorySpecificationId getId() {
		return this.id;
	}

	public void setId(SubCategorySpecificationId id) {
		this.id = id;
	}

	@Column(name = "min")
	public Integer getMin() {
		return this.min;
	}

	public void setMin(Integer min) {
		this.min = min;
	}

	@Column(name = "max")
	public Integer getMax() {
		return this.max;
	}

	public void setMax(Integer max) {
		this.max = max;
	}

}
