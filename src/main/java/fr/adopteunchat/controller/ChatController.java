package fr.adopteunchat.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.adopteunchat.dao.IChatDao;
import fr.adopteunchat.dao.IColorDao;
import fr.adopteunchat.dao.IDepartementDao;
import fr.adopteunchat.dao.IPersonneDao;
import fr.adopteunchat.dao.IRaceDao;
import fr.adopteunchat.dao.IRegionDao;
import fr.adopteunchat.model.Chat;
import fr.adopteunchat.model.Color;
import fr.adopteunchat.model.Departement;
import fr.adopteunchat.model.Personne;
import fr.adopteunchat.model.Race;
import fr.adopteunchat.model.Region;

@Controller
@RequestMapping("/chat")
public class ChatController {
	@Autowired
	IChatDao daoChat;
	@Autowired
	IRaceDao daoRace;
	@Autowired
	IColorDao daoColor;
	@Autowired
	IRegionDao daoRegion;
	@Autowired
	IDepartementDao daoDepartement;
	@Autowired
	IPersonneDao daoPersonne;
	
	@GetMapping("inscription")
	public String addChat(Model model) {
		
		model.addAttribute("races", this.daoRace.findAll());
		model.addAttribute("colors", this.daoColor.findAll());
		model.addAttribute("regions", this.daoRegion.findAll());
		model.addAttribute("departements", this.daoDepartement.findAll());
		
		return "chat/inscription-chat";
	}
	
	
	@PostMapping("inscription")
	public String addChat(@RequestParam String nom,
			@RequestParam String sexe,
			@RequestParam String age,
			@RequestParam String trancheage,
			@RequestParam int race,
			@RequestParam int color,
			@RequestParam String taille,
			@RequestParam int region,
			@RequestParam int dpt,
			@RequestParam String photo,
			@RequestParam String description,
			@RequestParam Boolean enfant,
			@RequestParam Boolean chien,
			@RequestParam Boolean chat,
			@RequestParam Boolean specifique,
			HttpSession session) {
		
		Chat monchat = new Chat();
		int id = (int) session.getAttribute("connexionId");
		
		Personne personneConnectee= this.daoPersonne.findByid(id);
		
		Race maRace = this.daoRace.findByid(race);
		Color maCouleur = this.daoColor.findByid(color);
		Region maRegion = this.daoRegion.findByid(region);
		Departement monDpt = this.daoDepartement.findByid(dpt);
		
		monchat.setNom(nom);
		monchat.setSexe(sexe);
		monchat.setTrancheage(trancheage);
		monchat.setRace(maRace);
		monchat.setColor(maCouleur);
		monchat.setTaille(taille);
		monchat.setRegion(maRegion);
		monchat.setDpt(monDpt);
		monchat.setPhoto(photo);
		monchat.setDescription(description);
		monchat.setEnfant(enfant);
		monchat.setChien(chien);
		monchat.setChat(chat);
		monchat.setSpecifique(specifique);
		monchat.setPersonne(personneConnectee);
		

		this.daoChat.save(monchat);
		
		return "redirect:/mon-espace";
	}

}
