package fr.adopteunchat.model;

import java.util.Optional;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "chat")
public class Chat {

	@Id // OBLIGATOIRE UNE FOIS ET UNE SEULE DANS UNE CLASSE ENTITY
	@GeneratedValue(strategy = GenerationType.IDENTITY) // STRATEGIE D'AUTO-INCREMENT SUR CET ID
	@Column(name = "CHAT_ID") // OPTIONNEL SI LE NOM DU CHAMP = LE NOM DE L'ATTRIBUT
	private int id;
	
	@Column(name="CHAT_NOM", length = 50, nullable=false)
	private String nom;
	
	@Column(name="CHAT_SEXE", nullable=false)
	private String sexe;
	
	@Column(name="CHAT_AGE",nullable=false)
	private int age;
	
	@Column(name="CHAT_TRANCHEAGE", nullable=false)
	private String trancheage;
	
	@ManyToOne
	@JoinColumn(name = "CHAT_RACE")
	private Race race;
	
	@ManyToOne
	@JoinColumn(name = "CHAT_COLOR")
	private Color color;
	
	@Column(name="CHAT_TAILLE", nullable=false)
	private String taille;
	
	@ManyToOne
	@JoinColumn(name = "CHAT_PERS")
	private Personne personne;
	
	@ManyToOne
	@JoinColumn(name = "CHAT_REG")
	private Region region;
	
	@ManyToOne
	@JoinColumn(name = "CHAT_DPT")
	private Departement dpt;
	
	@Column(name="CHAT_PHOTO", length = 100)
	private String photo;
	
	@Column(name="CHAT_DESC", length = 500)
	private String description;
	
	@Column(name="CHAT_ENFANT",nullable=false)
	private boolean enfant;
	
	@Column(name="CHAT_CHIEN",nullable=false)
	private boolean chien;
	
	@Column(name="CHAT_CHAT",nullable=false)
	private boolean chat;
	
	@Column(name="CHAT_SPECIFIQUE",nullable=false)
	private boolean specifique;

	/* GETTERS ET SETTERS */

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTrancheage() {
		return trancheage;
	}

	public void setTrancheage(String trancheage) {
		this.trancheage = trancheage;
	}


	public Personne getPersonne() {
		return personne;
	}

	public void setPersonne(Personne personne) {
		this.personne = personne;
	}

	public String getTaille() {
		return taille;
	}

	public void setTaille(String taille) {
		this.taille = taille;
	}

	

	public Race getRace() {
		return race;
	}

	public void setRace(Race race) {
		this.race = race;
	}

	public Color getColor() {
		return color;
	}

	public void setColor(Color color) {
		this.color = color;
	}

	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	public Departement getDpt() {
		return dpt;
	}

	public void setDpt(Departement dpt) {
		this.dpt = dpt;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isEnfant() {
		return enfant;
	}

	public void setEnfant(boolean enfant) {
		this.enfant = enfant;
	}

	public boolean isChien() {
		return chien;
	}

	public void setChien(boolean chien) {
		this.chien = chien;
	}

	public boolean isChat() {
		return chat;
	}

	public void setChat(boolean chat) {
		this.chat = chat;
	}

	public boolean isSpecifique() {
		return specifique;
	}

	public void setSpecifique(boolean specifique) {
		this.specifique = specifique;
	}

	

	/**
	 * @param id
	 * @param nom
	 * @param sexe
	 * @param age
	 * @param trancheage
	 * @param race
	 * @param color
	 * @param taille
	 * @param region
	 * @param dpt
	 * @param photo
	 * @param description
	 * @param enfant
	 * @param chien
	 * @param chat
	 * @param specifique
	 */
	public Chat(int id, String nom, String sexe, int age, String trancheage, Race race, Color color, String taille,
			Region region, Departement dpt, String photo, String description, boolean enfant, boolean chien,
			boolean chat, boolean specifique) {
		this.id = id;
		this.nom = nom;
		this.sexe = sexe;
		this.age = age;
		this.trancheage = trancheage;
		this.race = race;
		this.color = color;
		this.taille = taille;
		this.region = region;
		this.dpt = dpt;
		this.photo = photo;
		this.description = description;
		this.enfant = enfant;
		this.chien = chien;
		this.chat = chat;
		this.specifique = specifique;
	}
	
	/**
	 * @param nom
	 * @param sexe
	 * @param age
	 * @param trancheage
	 * @param race
	 * @param color
	 * @param taille
	 * @param region
	 * @param dpt
	 * @param photo
	 * @param description
	 * @param enfant
	 * @param chien
	 * @param chat
	 * @param specifique
	 */
	public Chat(String nom, String sexe, int age, String trancheage, Race race, Color color, String taille,
			Region region, Departement dpt, String photo, String description, boolean enfant, boolean chien,
			boolean chat, boolean specifique) {
		this.nom = nom;
		this.sexe = sexe;
		this.age = age;
		this.trancheage = trancheage;
		this.race = race;
		this.color = color;
		this.taille = taille;
		this.region = region;
		this.dpt = dpt;
		this.photo = photo;
		this.description = description;
		this.enfant = enfant;
		this.chien = chien;
		this.chat = chat;
		this.specifique = specifique;
	}

	public Chat(String nom) {
		this.nom = nom;

	}

	public Chat() {
	}

	@Override
	public String toString() {
		return "Chat [id=" + id + ", nom=" + nom + ", sexe=" + sexe + ", age=" + age + ", trancheage=" + trancheage
				+ ", race=" + race + ", color=" + color + ", taille=" + taille + ", region=" + region + ", dpt=" + dpt
				+ ", photo=" + photo + ", description=" + description + ", enfant=" + enfant + ", chien=" + chien
				+ ", chat=" + chat + ", specifique=" + specifique + "]";
	}

//	@Override
//	public String toString() {
//		return nom + "est adopté. Il est" + color + "et a" + age +"ans.";
//	}

}
