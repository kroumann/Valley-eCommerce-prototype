package com.piper.valley.models.domain;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "store")
@Inheritance( strategy = InheritanceType.SINGLE_TABLE )
@DiscriminatorColumn(name = "storeType")
public abstract class Store {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false, updatable = false)
	protected Long id;

	@Column(name = "name", nullable = false, unique = true)
	protected String name;

	@Column(name = "accepted", nullable = false)
	protected boolean accepted;

	@ManyToOne(optional = false)
	protected StoreOwner storeOwner;

	@OneToMany(cascade = CascadeType.PERSIST, mappedBy = "store", orphanRemoval = true)
	protected List<StoreProduct> storeProducts;

	public List<StoreProduct> getStoreProducts() {
		return storeProducts;
	}

	public boolean addStoreProduct(StoreProduct storeProduct) {
		if(storeProducts == null)
			storeProducts = new ArrayList<>();
		return storeProducts.add(storeProduct);
	}

	public boolean setStoreProducts(List<StoreProduct> storeProducts) {
		this.storeProducts = storeProducts;
		return true;
	}

	public StoreOwner getStoreOwner() {
		return storeOwner;
	}

	public void setStoreOwner(StoreOwner storeOwner) {
		this.storeOwner = storeOwner;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isAccepted() {
		return accepted;
	}

	public void setAccepted(boolean accepted) {
		this.accepted = accepted;
	}
}
