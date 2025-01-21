package com.desafiomodelodominio.desafio.entities;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "tb_activities")
public class Activities {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private String description;

    private Double price;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "activitie")
    private List<Block> blocks = new ArrayList<>();

    @ManyToMany
    @JoinTable(name = "tb_activities_participants",
                joinColumns = @JoinColumn(name = "activities_id"),
                inverseJoinColumns = @JoinColumn(name = "particippants_id"))
    private Set<Participants> participants = new HashSet<>();

    public Activities() {}

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public List<Block> getBlocks() {
        return blocks;
    }

    public Set<Participants> getParticipants() {
        return participants;
    }
}
