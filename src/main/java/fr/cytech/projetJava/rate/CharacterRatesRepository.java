package fr.cytech.projetJava.rate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.character.Character;

@Repository
public interface CharacterRatesRepository extends JpaRepository<CharacterRates, Integer> {
    public CharacterRates findByCharacterRateID(int characterRateID);
    public CharacterRates[] findByCharacter(Character character);
    public CharacterRates findByCharacterAndUser(Character character, User user);
}