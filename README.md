
Installer mariaDB et maven si'il ne le sont pas

Ouvrir un terminal dans le dossier où se trouve le fichier avengers.jar

Décompresser le fichier avengers.jar dans le dossier où il se trouve :
	
	jar xvf avengers.jar

Se déplacer à la racine du projet :

	cd Projet_JEE

Importer le fichier Avengers.sql dans mariaDB se trouvant dans le dossier Projet_JEE

Changer les identifiants mariaDB, si besoin, dans le fichier Projet_JEE/src/main/resources/application.properties. Par défaut :
	- username = root
	- password = cytech

Lancer maven depuis la racine du projet (dans le dossier Projet_JEE) avec la commande :

	mvn clean package spring-boot:repackage

Lancer le projet depuis la racine du projet (dans le dossier Projet_JEE) avec la commande :

	java -jar target/ProjetJEE-0.0.1-SNAPSHOT.jar

- Ouvrir le site dans un explorateur internet :
	- localhost:8080

Remarques :
	- compte administrateur: 
		- nom d'utilisateur = admin
	 	- mot de passe = 123456
	- ajout d'un nouveau film/personnage:
		ajouter l'image du film/personnage à la main dans Projet_JEE/src/main/resources/static (le liens web ne fonctionnant pas, l'image doit être enregistrée dans la bdd pour l'utiliser)
