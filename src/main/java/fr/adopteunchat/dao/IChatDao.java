package fr.adopteunchat.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.adopteunchat.model.Chat;

public interface IChatDao extends JpaRepository<Chat, Integer>{
	
}
