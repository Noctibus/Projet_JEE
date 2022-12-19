package fr.cytech.projetJava.rate;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.cytech.projetJava.character.Character;
import fr.cytech.projetJava.user.User;

@Repository
public interface CharacterRatesRepository extends JpaRepository<CharacterRates, Integer> {
    public CharacterRates findByCharacterRateID(int characterRateID);
    public CharacterRates findByCharacterAndUser(Character character, User user);
    public List<CharacterRates> findByCharacter(Character character);
    public List<CharacterRates> findByUserOrderByCharacter(User user);
}