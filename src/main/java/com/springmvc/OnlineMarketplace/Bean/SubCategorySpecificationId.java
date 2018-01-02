// default package
// Generated Dec 29, 2017 12:52:29 PM by Hibernate Tools 4.3.1.Final
package com.springmvc.OnlineMarketplace.Bean;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * SubCategorySpecificationId generated by hbm2java
 */
@Embeddable
public class SubCategorySpecificationId implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int prodSubCategoryId;
	private int specId;

	public SubCategorySpecificationId() {
	}

	public SubCategorySpecificationId(int prodSubCategoryId, int specId) {
		this.prodSubCategoryId = prodSubCategoryId;
		this.specId = specId;
	}

	@Column(name = "prodSubCategoryId", nullable = false)
	public int getProdSubCategoryId() {
		return this.prodSubCategoryId;
	}

	public void setProdSubCategoryId(int prodSubCategoryId) {
		this.prodSubCategoryId = prodSubCategoryId;
	}

	@Column(name = "specId", nullable = false)
	public int getSpecId() {
		return this.specId;
	}

	public void setSpecId(int specId) {
		this.specId = specId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SubCategorySpecificationId))
			return false;
		SubCategorySpecificationId castOther = (SubCategorySpecificationId) other;

		return (this.getProdSubCategoryId() == castOther.getProdSubCategoryId())
				&& (this.getSpecId() == castOther.getSpecId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getProdSubCategoryId();
		result = 37 * result + this.getSpecId();
		return result;
	}

}
