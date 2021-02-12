package fr.adopteunchat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.adopteunchat.dao.IColorDao;
import fr.adopteunchat.dao.IDepartementDao;
import fr.adopteunchat.dao.IRaceDao;
import fr.adopteunchat.dao.IRegionDao;

@Controller
@RequestMapping("/accueil")
public class AccueilController {
@Autowired
IRaceDao daoRace;
@Autowired
IColorDao daoColor;
@Autowired
IRegionDao daoRegion;
@Autowired
IDepartementDao daoDepartement;
	
	@GetMapping
	public String display(Model model) {
		model.addAttribute("races", this.daoRace.findAll());
		model.addAttribute("colors", this.daoColor.findAll());
		model.addAttribute("regions", this.daoRegion.findAll());
		model.addAttribute("departements", this.daoDepartement.findAll());
		return "accueil";
	}
}
