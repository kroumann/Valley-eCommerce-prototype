package com.piper.valley.models.domain;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.IndexedEmbedded;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "forms")
@Inheritance( strategy = InheritanceType.SINGLE_TABLE )
@DiscriminatorColumn (name = "type", discriminatorType = DiscriminatorType.STRING)
public class Formulaire {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id", nullable = false, updatable = false)
    private Long id;

    @Column(name = "creationDate", nullable = false, updatable = true)
    @Field
    private Date creationDate;

    public Formulaire() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setCreationDate(Date cerationDate) {
        this.creationDate = creationDate;
    }

    public Date getCreationDate() {
        return creationDate;
    }
}
