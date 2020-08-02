#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from random import randint

#https://qastack.fr/unix/410579/change-the-python3-default-version-in-ubuntu

#https://www.youtube.com/watch?v=3lGhtIqT0Tk
#https://datatofish.com/executable-pyinstaller


nomJoueur1=''
nomJoueur2=''
compteurDeCoups=0
compteurDeCoups2=0
compteurMort=0
compteurMort2=0
continuerPartieVar=1
debutDuJeu=1
max=100
maxNombreMystere2=0
min=1
minNombreMystere2=0
modeDuJeu=0
nombreEntre=0
nombreEntre2=0
nombreMoitieIntervalleMystere2=0
nombreMystere=0
nombreMystere2=0
reponseQuestionIA='te'
partieModeDeJeu1=0
partieModeDeJeu2=0
partieModeDeJeu3=0
niveauDeDifficulte=0





def menuPrincipal():
    print("\tMENU PRINCIPAL\n")
    global modeDuJeu
    modeDuJeu = int(input("Mode 1 joueur tapez 1 \n Mode 2 joueurs tapez 2 \n Joueur vs ordinateur taper 3 \n Votre choix : \n"))
    if modeDuJeu==1:
        global partieModeDeJeu1
        partieModeDeJeu1=1 #car on y est
        global compteurMort
        compteurMort=0
        global compteurDeCoups
        compteurDeCoups=0
    if modeDuJeu==2:
        print("Comment vous appellez vous joueur 2?")
        global nomJoueur2
        nomJoueur2=input()
        global partieModeDeJeu2
        partieModeDeJeu2=1
        compteurMort=0
        global compteurMort2
        compteurMort2=0
        global compteurDeCoups2
        compteurDeCoups2=0
    if modeDuJeu==3:
        global partieModeDeJeu3
        partieModeDeJeu3=1
        compteurMort=0
        compteurDeCoups=0
        compteurMort2=0
        compteurDeCoups2=0

def niveau():
    print("\t*****************NIVEAU DU JEU*****************\n")
    print("Niveau entre 1 et 100 : taper 1\nNiveau entre 1 et 1000 : taper 2\nNiveau entre 1 et 10000 : taper 3\n")
    global niveauDeDifficulte
    niveauDeDifficulte=int(input("Votre choix :"))

def menu():
    menuPrincipal()
    while(modeDuJeu != 1 and modeDuJeu != 2 and modeDuJeu !=3):
        print("\n Mauvaise saisie \n")
        menuPrincipal()
    niveau()
    while(niveauDeDifficulte != 1 and niveauDeDifficulte != 2 and niveauDeDifficulte !=3):
        print("\n Mauvaise saisie \n")
        niveau()
    print("Au bout de combien de tentatives voulez vous mourir joueur 1?")
    global compteurMort
    compteurMort=int(input())
    
def continuerPartie():
    print("\n Une autre partie? 1 pour oui et 0 pour non \n")
    global continuerPartieVar
    continuerPartieVar=int(input())
    while(continuerPartieVar!=1 and continuerPartieVar!=0):
        print(" \n Une autre partie? 1 pour oui et 0 pour non \n")
        continuerPartieVar=int(input())

while(continuerPartieVar==1):
    nomJoueur1=input("Comment voulez vous vous appelez?")
    menu()
    if(niveauDeDifficulte==1):
        max=100
        maxNombreMystere2=max
        minNombreMystere2=min
        nombrePasEncoreEntre2=maxNombreMystere2/2
        debutDuJeu=1
    elif(niveauDeDifficulte == 2):
        max=1000
        maxNombreMystere2=max
        minNombreMystere2=min
        nombrePasEncoreEntre2=maxNombreMystere2/2
        debutDuJeu=1
    elif (niveauDeDifficulte==3) :
        max=10000
        maxNombreMystere2=max
        minNombreMystere2=min
        nombrePasEncoreEntre2=maxNombreMystere2/2
        debutDuJeu=1
    else:
	    niveau()
    if(niveauDeDifficulte==1):
        nombreMystere=randint(1,100)
        nombreMystere2=randint(1,100)
    elif(niveauDeDifficulte==2):
            nombreMystere=randint(1,1000)
            nombreMystere2=randint(1,1000)
    elif(niveauDeDifficulte==3):
        nombreMystere=randint(1,10000)
        nombreMystere2=randint(1,10000)   
    else:
        print("An error has occured \n")
    if(modeDuJeu==1):
        while(nombreEntre!=nombreMystere):
            while(partieModeDeJeu1 == 1):
                compteurDeCoups=compteurDeCoups+1
                if(partieModeDeJeu1 == 1):
                   print(nomJoueur1+"Selon toi, quel est le nombre mystère ?\n")
                   nombreEntre=input()
                if(nombreMystere > int(nombreEntre)):
                    print("C'est plus !\n\n")    
                elif(nombreMystere < int(nombreEntre)):
                    print("C'est moins")
                else:
                    print("Bravo, vous avez trouve le nombre mystere en "+compteurDeCoups+" coups !!!\n\n")
                    partieModeDeJeu1=0
                if(int(compteurMort) <= compteurDeCoups):
                    print("\t*****************GAME-OVER*****************\n")
                    partieModeDeJeu1=0
            nombreEntre=nombreMystere
    elif (modeDuJeu==2):
        while(partieModeDeJeu2==1):
            print("Au bout de combien de tentatives voulez vous mourir"+ nomJoueur2 + "? \n")
            compteurMort2=input()
            while(nombreEntre!=nombreMystere or nombreEntre2 != nombreMystere2):
                compteurDeCoups=compteurDeCoups+1
                if(partieModeDeJeu2 == 1):
                    print(nomJoueur1+": Selon toi, quel est le nombre mystère ? \n")
                    nombreEntre=int(input())
                    if(nombreMystere > nombreEntre):
                        print("C'est plus! \n \n")
                    elif(nombreMystere < nombreEntre):
                        print("C'est moins!  \n \n")
                    else:
                        print("Bravo, "+nomJoueur1+ "vous avez trouvés le nombre mystere en"+ compteurDeCoups + " coups !!!\n\n")
                        print("C'est dommage"+ nomJoueur2 +", vous avez perdu avec " + compteurDeCoups2 + "tentatives vous ferez mieux la prochaine fois \n")
                        print(nomJoueur1+"à vous de donner la réponse à la question suivante \n")
                        partieModeDeJeu2=0
                    if(compteurMort <= compteurDeCoups):
                        print("\t*****************GAME-OVER*****************\n")
                        print(nomJoueur1+" a perdu avec "+str(compteurDeCoups)+" tentatives \n")
                        print(nomJoueur2+" a gagné avec "+str(compteurDeCoups2)+" tentatives \n")
                        print(nomJoueur2+" à vous de donner la réponse à la question suivante \n")
                        partieModeDeJeu2=0
                        nombreEntre2=nombreMystere2
                        break
                if(partieModeDeJeu2 == 1):
                    print(nomJoueur2+": Selon toi, quel est le nombre mystère ? \n")
                    nombreEntre2=int(input())
                    if(nombreMystere2 > nombreEntre2):
                        print("C'est plus !\n\n")
                    elif(nombreMystere2 < nombreMystere2):
                        print("C'est moins!  \n \n")
                    else:
                        print("Bravo, "+nomJoueur2+ " vous avez trouvés le nombre mystere en"+ compteurDeCoups2 + " coups !!!\n\n")
                        print("C'est dommage"+ nomJoueur1 +", vous avez perdu avec " + compteurDeCoups + "tentatives vous ferez mieux la prochaine fois \n")
                        print(nomJoueur2+" à vous de donner la réponse à la question suivante \n")
                        partieModeDeJeu2=0
                    if(int(compteurMort) <= compteurDeCoups):
                        print("\t*****************GAME-OVER*****************\n")
                        print(nomJoueur2+" a perdu avec "+compteurDeCoups2+" tentatives \n")
                        print(nomJoueur1+" a gagné avec "+compteurDeCoups+" tentatives \n")
                        print(nomJoueur1+" à vous de donner la réponse à la question suivante \n")
                        partieModeDeJeu2=0
            nombreEntre=nombreMystere
    elif(modeDuJeu==3):
        while(partieModeDeJeu3==1):
            compteurMort2=compteurMort
            print("Au bout de combien de tentatives voulez vous mourir IA? "+str(compteurMort2)+" \n")
            while(nombreEntre!=nombreMystere or nombreEntre2 != nombreMystere2):
                compteurDeCoups=compteurDeCoups+1
                if(partieModeDeJeu3 == 1):
                    print(nomJoueur1+" : Selon toi, quel est le nombre mystère ? \n")
                    nombreEntre=int(input())
                    if(nombreMystere > nombreEntre):
                        print("C'est plus! \n \n")
                    elif(nombreMystere < nombreEntre):
                        print("C'est moins!  \n \n")
                    else:
                        print("Bravo, "+nomJoueur1+ "vous avez trouvés le nombre mystere en"+ str(compteurDeCoups) + " coups !!!\n\n")
                        print("C'est dommage IA, vous avez perdu avec " + str(compteurDeCoups2) + "tentatives vous ferez mieux la prochaine fois \n")
                        print(nomJoueur1+" à vous de donner la réponse à la question suivante \n")
                        partieModeDeJeu3=0
                    if(int(compteurMort) <= compteurDeCoups):
                        print("\t*****************GAME-OVER*****************\n" )
                        print(nomJoueur1+"a perdu avec "+str(compteurDeCoups) + " tentatives \n")
                        print("IA a gagné avec"+str(compteurDeCoups2)+" tentatives \n")
                        print("IA à vous de donner la réponse à la question suivante \n")
                        print("Non je préfère que ce soit "+nomJoueur1+" qui choisisse \n")
                        print("Comme tu voudras IA "+nomJoueur1+" à vous de répondre à cette question \n")
                        partieModeDeJeu3=0
                        nombreEntre2=nombreMystere2
                if(partieModeDeJeu3 == 1):
                    compteurDeCoups2=compteurDeCoups2+1
                    print("IA: Selon toi, quel est le nombre mystère ? \n")    
                    nombreEntre2=int(nombrePasEncoreEntre2)
                    print(nombreEntre2)
                    if(nombreMystere2 > nombreEntre2):
                        print("C'est plus !\n\n")
                        minNombreMystere2=nombreEntre2
                        calcul1=maxNombreMystere2 + minNombreMystere2
                        nombreMoitieIntervalleMystere2= calcul1/2
                        nombrePasEncoreEntre2=nombreMoitieIntervalleMystere2
                    elif(nombreMystere2 < nombreEntre2):
                        print("C'est moins !\n\n")
                        maxNombreMystere2=nombreEntre2
                        calcul1=maxNombreMystere2 + minNombreMystere2
                        nombreMoitieIntervalleMystere2= calcul1/2
                        nombrePasEncoreEntre2=nombreMoitieIntervalleMystere2
                    else:
                        print("Bravo, IA vous avez trouvés le nombre mystère qui est "+ str(nombreMystere2) +" en "+ str(compteurDeCoups2) + "coups !!!\n\n")
                        print("C'est dommage "+nomJoueur1+ ", vous avez perdu avec "+ str(compteurDeCoups2)+" tentatives vous ferez mieux la prochaine fois \n")
                        print("IA à vous de donner la réponse à la question suivante \n")
                        print("Non je préfère que ce soit "+nomJoueur1 +" qui choisisse \n")
                        print("Comme tu voudras IA" + nomJoueur1 +" à vous de répondre à cette question \n")
                        partieModeDeJeu3=0
                    if(compteurMort2 <= compteurDeCoups2):
                        print("\t*****************GAME-OVER*****************\n" )
                        print("IA a perdu avec "+str(compteurDeCoups2) +" tentatives \n")
                        print(nomJoueur1 +" a gagné avec" + str(compteurDeCoups) + " tentatives \n")
                        print(nomJoueur1 + " à vous de donner la réponse à la question suivante \n")
                        partieModeDeJeu3=0
                nombreEntre=nombreMystere              		
    else:
        print("An error has occured \n")
        continuerPartie()
    continuerPartie()

print(" \n À la prochaine \n ")




