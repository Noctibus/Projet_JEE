package fr.cytech.projetJava.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserInformationsService {


    @Autowired
    UserInformationsRepository userInformationsRepository;
    

    //CREATE
    public void createUserInformations(UserInformations userInformations) {
        userInformationsRepository.save(userInformations);
    }

    //READ
    public UserInformations getUserInformations(User user) {
        return userInformationsRepository.findByUserUsername(user.getUsername());
    }

    //UPDATE
    public void changeEmailAddress(User user,String newEmailAddress) {
        UserInformations userInformationsToModify=userInformationsRepository.findByUserUsername(user.getUsername());
        userInformationsToModify.setEmailAddress(newEmailAddress);
        userInformationsRepository.save(userInformationsToModify);
    }

    public void changeGender(User user,String newGender) {
        UserInformations userInformationsToModify=userInformationsRepository.findByUserUsername(user.getUsername());
        userInformationsToModify.setGender(newGender);;
        userInformationsRepository.save(userInformationsToModify);
    }

    public void changeAge(User user,int newAge) {
        UserInformations userInformationsToModify=userInformationsRepository.findByUserUsername(user.getUsername());
        userInformationsToModify.setAge(newAge);
        userInformationsRepository.save(userInformationsToModify);
    }

    //DELETED WHEN DELETING USER
}
