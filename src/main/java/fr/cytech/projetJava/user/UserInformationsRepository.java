package fr.cytech.projetJava.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserInformationsRepository extends JpaRepository<UserInformations,User>{
    public UserInformations findByUserUsername(String userUsername);
}
