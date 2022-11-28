package fr.cytech.projetJava.login;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {

	public User findByUsername(String name);

	// public boolean existsUser(User user);
}
