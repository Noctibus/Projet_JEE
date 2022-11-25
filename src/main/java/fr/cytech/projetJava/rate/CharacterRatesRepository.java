package fr.cytech.projetJava.rate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRatesRepository extends JpaRepository<CharacterRates, Long> {
    public CharacterRates findByCharacterRateID(int characterRateID);
    public CharacterRates[] findByCharacterID(int characterID);
    public CharacterRates findByCharacterIDAndUserID(int characterID, int userID);
}