#!/bin/bash

					#Mode 1 joueur partie loisir réussi



#*************************************************** Objectifs ***************************************************

					#Faire plus de test
					#Faire que si un joueur perd l'autre gagne
					# Mémoriser score joueur 
					# Avoir mode compétition et mode loisir
					# Réalisation chrono
					# Hacking version clé champignon Windows Linux Mac simulation jouer contre IA sinon IA hacker ordinateur  



    							#Initialisation des variables


							compteurDeCoups=0
							compteurDeCoups2=0
							compteurMort=0
							compteurMort2=0
							continuerPartie=1
							debutDuJeu=1
							max=100
							maxNombreMystere2=0
							min=1
							minNombreMystere2=0
							modeDuJeu=0
							niveauDeDifficulte=0
							nombreEntre=0
							nombreEntre2=0
							nombreMoitieIntervalleMystere2=0
							nombreMystere=0
							nombreMystere2=0
							reponseQuestionIA='te'




							#Les fonctions


							function menuPrincipale
							{

								echo -e "\tMENU PRINCIPALE\n" #On affiche menu principale
								echo -e "Mode 1 joueur tapez 1 \n Mode 2 joueurs tapez 2 \n Joueur vs ordinateur taper 3 \n Votre choix : \n" #On affiche Mode 1 joueur tapez 1 \n Mode 2 joueurs tapez 2 \n Joueur vs ordinateur taper 3 \n Votre choix 
								read modeDuJeu #Lire le modeDuJeu

								if (($modeDuJeu==1))
								then
										partieModeDeJeu1=1 #car on y est
										compteurMort=0
										compteurDeCoups=0

								fi
								if (($modeDuJeu==2))
								then
										partieModeDeJeu2=1 #car on y est
										compteurMort=0
										compteurDeCoups=0
										compteurMort2=0
										compteurDeCoups2=0

								fi

								if (($modeDuJeu==3))
								then
										partieModeDeJeu3=1 #car on y est
										compteurMort=0
										compteurDeCoups=0
										compteurMort2=0
										compteurDeCoups2=0
										
								fi






							}


							function niveau
							{
								echo -e "\t*****************NIVEAU DU JEU*****************\n" #On affiche *****************NIVEAU DU JEU*****************
								echo -e "Niveau entre 1 et 100 : taper 1\nNiveau entre 1 et 1000 : taper 2\nNiveau entre 1 et 10000 : taper 3\n" #On affiche Niveau entre 1 et 100 : taper 1\nNiveau entre 1 et 1000 : taper 2\nNiveau entre 1 et 10000 : taper 3\n
								read -p "Votre choix : " niveauDeDifficulte #On lit le niveau de difficulté en affichant en même temps votre choix:
								



							}





							function menu

							{
								
								menuPrincipale
								while(($modeDuJeu !=1 && $modeDuJeu !=2 && $modeDuJeu !=3 ))
								do
									echo -e " \n Mauvaise saisie \n"

									menuPrincipale

								done

								niveau
								
			

								while(($niveauDeDifficulte !=1 && $niveauDeDifficulte !=2 && $niveauDeDifficulte !=3 ))
								do

									echo -e  " \n Mauvaise saisie \n"

									niveau

								done





									read -p "Au bout de combien de tentatives voulez vous mourir joueur 1? " compteurMort

								
							}

							function continuerPartie

							{

								echo -e  " \n Une autre partie? 1 pour oui et 0 pour non \n"
								read continuerPartie

								while(($continuerPartie!=1 && $continuerPartie!=0))
								do

									echo -e  " \n Une autre partie? 1 pour oui et 0 pour non \n"
									read continuerPartie
								done

								#if (($continuerPartie==1))
								#then

									#finDuJeu=0;
								#else
                   			 				#finDuJeu=1; #finDuJeu vaut 1
								#fi





							}






















      						#Programme pricipal


while(($continuerPartie==1))
do
	#eog pour mettre une tonne d'images
	#eog image1.jpeg 
	#sleep 5
	#eog --single-window image2.jpeg
	#eog image2.jpeg 
	#echo -e "nombreEntre2 debut while ligne 187 : $nombreEntre2 "
     	#nombreEntre2=$(expr $maxNombreMystere2 / 2); # On dit à l'IA qu'elle doit rentrer la moitié du maximum
	#echo -e "nombreEntre2 après modification début while ligne 196 : $nombreEntre2 "
	menu
	if(($niveauDeDifficulte==1)) #Si niveauDeDifficulte vaut 1
	then #Alors
		max=100
        	maxNombreMystere2=$max #Le maximum du nombre mystere
		#echo -e "Le maximum possible du nombre mystère est de: $maxNombreMystere2 \n"
      	        minNombreMystere2=$min #Le minimum du nombre mystere
		#echo -e "Le minimum possible du nombre mystère est de: $minNombreMystere2 \n"
        	# echo "IA : Quel est le nombre ? " #On affiche à l'écran Joueur 2 : Quel est le nombre ?
		#echo -e "nombreEntre2 avant modification ligne 203 : $nombreEntre2 "
       		nombrePasEncoreEntre2=$( expr $maxNombreMystere2 / 2 ); # On dit à l'IA qu'elle doit rentrer la moitié du maximum
		#echo -e "nombreEntre2 après modification ligne 206 : $nombreEntre2 "

		#echo -e "$nombreEntre2 \n"
        	debutDuJeu=1 #On affecte la variable debutDuJeu à 1
	elif(($niveauDeDifficulte == 2)) #Sinon si le niveauDeDifficulte==2
	then #alors
		max=1000 #On affecte la variable max à 1000
        	maxNombreMystere2=$max #Le maximum du nombre mystere
		#echo -e "Le maximum possible du nombre mystère est de: $maxNombreMystere2 \n" #On affiche le maximum possible du nombre mystère est de: $maxNombreMystere2 
        	minNombreMystere2=$min #Le minimum du nombreMystere2
		#echo -e "Le minimum possible du nombre mystère est de: $minNombreMystere2 \n"
        	#echo "IA : Quel est le nombre ? " #On affiche à l'écran Joueur 2 : Quel est le nombre ?
       		nombrePasEncoreEntre2=$( expr $maxNombreMystere2 / 2 ); # On dit à l'IA qu'elle doit rentrer la moitié du maximum
		#echo -e nombreEntre2,"\n"
        	debutDuJeu=1 #On affecte la variable 
	elif(($niveauDeDifficulte==3)) #Sinon si le niveauDeDifficulte==3
	then
		max=10000 #On affecte la variable max à 10000
        	maxNombreMystere2=$max #Le maximum du nombre mystere
		#echo -e "Le maximum possible du nombre mystère est de: $maxNombreMystere2 \n" #On affiche le maximum possible du nombre mystère est de: $maxNombreMystere2 
        	minNombreMystere2=$min #Le minimum du nombre mystere
		#echo -e "Le minimum possible du nombre mystère est de: $minNombreMystere2 \n"
        	#echo "IA : Quel est le nombre ? " #On affiche à l'écran Joueur 2 : Quel est le nombre ?
       		nombrePasEncoreEntre2=$( expr $maxNombreMystere2 / 2 ); # On dit à l'IA qu'elle doit rentrer la moitié du maximum
		#echo -e nombreEntre2,"\n"
        	debutDuJeu=1
	else
		niveau
		#echo "Erreur syntaxe"
		#echo -e "\t*****************NIVEAU DU JEU*****************\n"
		#echo -e "Niveau entre 1 et 100 : taper 1\nNiveau entre 1 et 1000 : taper 2\nNiveau entre 1 et 10000 : taper 3\n"
		#read -p "Votre choix : " niveauDeDifficulte
				
	fi #Fin de la condition si le niveauDeDifficulte vaut 1


	if(($niveauDeDifficulte==1)) #Si le niveauDeDifficulte vaut 1
        then #alors
            nombreMystere=$((RANDOM%100+0));   #Génération du nombre aléatoire
            nombreMystere2=$((RANDOM%100+0));   #Génération du nombre aléatoire

	elif(($niveauDeDifficulte==2)) #Sinon si le niveauDeDifficulte vaut 2
	then #alors
		nombreMystere=$((RANDOM%1000+0));   #Génération du nombre aléatoire
           	nombreMystere2=$((RANDOM%1000+0));   #Génération du nombre aléatoire

	elif(($niveauDeDifficulte==3)) #Sinon si le niveauDeDifficulte vaut 3
	then #alors
		nombreMystere=$((RANDOM%10000+0));   #Génération du nombre aléatoire
           	nombreMystere2=$((RANDOM%10000+0));   #Génération du nombre aléatoire	

	else #Sinon
		echo -e "An error has occured \n" #Une grosse erreur c'est produite

	fi #Génération des nombres mystères


	if [ $modeDuJeu -eq 1 ] #Si le modeDuJeu vaut 1
	then #Alors
		
		while [ "$nombreEntre" -ne "$nombreMystere" ] #Tant que le nombre que le joueur entre ne correspond pas au nombre mystère
		do #Faire
			while [ $partieModeDeJeu1 -eq 1 ] #tant qu'on y est on y reste
			do
				compteurDeCoups=$(($compteurDeCoups+1)) #On incrémente le compteurDeCoups
				if [ $partieModeDeJeu1 -eq 1 ] #Si la finDuJeu vaut 0
				then #Alors
					echo -e "Joueur 1 : Selon toi, quel est le nombre mystère ?\n" #On affiche à l'écran Joueur 1 : Quel est le nombre ?\n
					read nombreEntre #On lit le nombreEntre
				fi #Fin de la conditionn si la finDuJeu est égale à 0


				if [ "$nombreMystere" -gt "$nombreEntre" ]  # Si le nombreMystere est plus grand que le nombreEntre
				then #ALors

                    			echo -e  " C'est plus !\n\n " #On affiche C'est plus ! à l'écran

                		elif [ "$nombreMystere" -gt "$nombreEntre" ] # Sinon si le nombreMystere est plus petit que le nombreEntre
				then #Alors

                    			echo -e " C'est moins !\n\n "; #On affiche C'est moins ! à l'écran

               		 
               			else #Sinon
                		
                   			echo -e " Bravo, vous avez trouve le nombre mystere en $compteurDeCoups coups !!!\n\n" #On affiche Bravo, vous avez 		trouve le nombre mystere en  x coups !!!
					
					partieModeDeJeu1=0
					

                		fi #Fin de la condition où le nombreMystere est plus grand que le nombreEntre

				#echo -e "compteurMort: $compteurMort"
				#echo -e "compteurDeCoups: $compteurDeCoups"

               	 		if [ "$compteurMort" -le "$compteurDeCoups" ] #Si le compteurMort est égale au compteurDeCoups
                		then #ALors
                    			echo "\t*****************GAME-OVER*****************\n" #On affiche AU-REVOIR quand l'utilisateur quitte le jeu
					 partieModeDeJeu1=0
                   			 
					


                		fi #Fin de la condition où le compteurMort est égale au compteurDeCoups

			done
			nombreEntre=$nombreMystere
		done #Fin de la boucle car le nombre que le joueur entre correspond au nombre mystère

	
	elif [ $modeDuJeu -eq 2 ] #Le cas mode 2 joueurs
	then #Alors

		
		while [ $partieModeDeJeu2 -eq 1 ] #La partie continue tant qu'un des deux joueurs n'a pas terminé
		do
        		echo -e "Au bout de combien de tentatives voulez vous mourir joueur 2 ? \n" #On affiche votre choix à l'écran
            		read compteurMort2 #On scanne le compteurMort2

            		while (($nombreEntre!=$nombreMystere || $nombreEntre2!=$nombreMystere2 ))	#Tant qu'aucun des deux joueurs n'a trouvé la réponse	
	    		do #Fait
                
               			     	#nombreEntre2=$(expr $maxNombreMystere2 / 2); # On dit à l'IA qu'elle doit rentrer la moitié du maximum
				compteurDeCoups=$(($compteurDeCoups+1)) #On incrémente le compteurDeCoups
                		#compteurDeCoups=$(expr $compteurDeCoups + 1) ; #On incrémente compteurDeCoups

                		if [ $partieModeDeJeu2 -eq 1 ] #Si finDuJeu est différent de 1
                		then #Alors

                			echo -e "Joueur 1 : Selon toi, quel est le nombre mystère ? \n" #On affiche à l'écran Joueur 1 : Quel est le nombre ?
                    			read nombreEntre #On scanne le nombreEntre par le joueur 1

                			if [ "$nombreMystere" -gt "$nombreEntre" ]  #Si le nombreMystere est plus grand que le nombreEntre
					then #Alors
						echo -e "C'est plus !\n\n" # On affiche C'est plus ! à l'écran


                			elif [ "$nombreMystere" -lt "$nombreEntre" ] # Sinon si le nombreMystere est plus petit que le nombreEntre
					then #Alors

               					echo -e "C'est moins !\n\n" #On affiche C'est moins ! à l'écran

					else #Sinon
                		
                    				echo -e "Bravo, vous avez trouve le nombre mystere en $compteurDeCoups coups !!!\n\n" #On affiche Bravo, vous avez trouve le nombre mystere en  x coups !!!
						echo -e "C'est dommage joueur 2, vous avez perdu avec $compteurDeCoups2 tentatives vous ferez mieux la prochaine fois \n"
						echo -e "Joueur 1 à vous de donner la réponse à la question suivante \n"
						partieModeDeJeu2=0
                			fi #Fin du cas où le nombreMystere est plus grand que le nombreEntre

					#echo -e "\n \n CompteurMort : $compteurMort"

 					#echo -e "compteurDeCoups : $compteurDeCoups \n \n "

               	 			if [ "$compteurMort" -le "$compteurDeCoups" ] #Si le compteurMort est égale au compteurDeCoups
                			then #ALors

                    				echo -e "\t*****************GAME-OVER*****************\n" #On affiche AU-REVOIR quand l'utilisateur quitte le jeu
						echo -e "Le joueur 1 a perdu avec $compteurDeCoups tentatives \n"
						echo -e "Le joueur 2 a gagné avec $compteurDeCoups2 tentatives \n"
						echo -e "Joueur 2 à vous de donner la réponse à la question suivante \n"
						partieModeDeJeu2=0
						nombreEntre2=$nombreMystere2
						break;
						
						
						
 
					fi #Fin de la condition où le compteurMort est égale au compteurDeCoups
               			fi #Fin de la condition où finDuJeu est différent de 1

				compteurDeCoups2=$(($compteurDeCoups2+1)) #On incrémente compteurDeCoups2

               			if [ $partieModeDeJeu2 -eq 1 ] #Si finDuJeu est différent de 1
               			then #Alors

                    			echo -e "Joueur 2 : Selon toi, quel est le nombre mystère ? \n" #On affiche à l'écran Joueur 2 : Quel est le nombre ?
                    			read nombreEntre2 #On scanne le nombreEntre par le joueur 2

                			if [ "$nombreMystere2" -gt "$nombreEntre2" ]  #Si le nombreMystere2 est plus grand que le nombreEntre2
					then #Alors
						echo -e "C'est plus !\n\n" # On affiche C'est plus ! à l'écran


                			elif [ "$nombreMystere2" -lt "$nombreEntre2" ] # Sinon si le nombreMystere2 est plus petit que le nombreEntre2
					then #Alors

               					echo -e "C'est moins !\n\n" #On affiche C'est moins ! à l'écran

					else #Sinon
                		
                    				echo -e "Bravo, joueur 2 vous avez trouvés le nombre mystere en $compteurDeCoups coups !!!\n\n" #On affiche Bravo, vous avez trouve le nombre mystere en  x coups !!!
                    				echo -e "C'est dommage joueur 1, vous avez perdu avec $compteurDeCoups2 tenattives vous ferez mieux la prochaine fois \n"
						echo -e "Joueur 2 à vous de donner la réponse à la question suivante \n"
						partieModeDeJeu2=0
                			fi #Fin de la condition où le nombreMystere2 est plus petit que le nombreEntre2

               	 			if [ "$compteurMort2" -le "$compteurDeCoups2" ] #Si le compteurMort est égale au compteurDeCoups
                			then # Alors

                    				echo -e "\t*****************GAME-OVER*****************\n" #On affiche AU-REVOIR quand l'utilisateur quitte le jeu
						echo -e "Le joueur 2 a perdu avec $compteurDeCoups2 tentatives \n"
						echo -e "Le joueur 1 a gagné avec $compteurDeCoups tentatives \n"
						echo -e "Joueur 1 à vous de donner la réponse à la question suivante \n"
						partieModeDeJeu2=0
						nombreEntre=$nombreMystere

					fi #Fin de la condition où le compteurMort est égale au compteurDeCoups
              			fi #Fin de la condition où finDuJeu est différent de 1


			done #Fin de la boucle car un des deux joueurs a trouvé le nombre mystère

		done #finDeLaBoucle portant sur le mode de jeu numéro 2

	elif [ $modeDuJeu -eq 3 ] #Le cas IA vs Joueur. On va reprendre le mode 2 joueurs sauf que l'on va faire que le deuxième joueur soit l'IA 
	then #Alors

		while [ $partieModeDeJeu3 -eq 1 ] #tant qu'on y est on y reste
		do
           	
        		compteurMort2=$compteurMort; #On simule le scanne le compteurMort
			echo -e "Au bout de combien de tentatives voulez vous mourir IA? $compteurMort2 \n  " #On affiche votre choix à l'écran
            		#echo -e "$compteurMort2 \n" #On affiche à l'écran le compteurMort2 qui simule la réponse de l'IA

			#echo -e "nombreEntre2 avant while ligne 420 : $nombreEntre2 \n"


            		while (($nombreEntre!=$nombreMystere || $nombreEntre2!=$nombreMystere2 ))	#Tant qu'aucun des deux joueurs n'a trouvé la réponse	
	    	 	do #Faire


                		compteurDeCoups=$((compteurDeCoups+1)); #On incrémente la variable compteurDeCoups

                		if [ $partieModeDeJeu3 -eq 1 ] #Si On est toujours dans la partie 3
                		then #Aors

                    			echo -e "Joueur 1 : Selon toi, quel est le nombre mystère ? \n " #On affiche à l'écran Joueur 1 : Quel est le nombre ?
                    			read nombreEntre #On lit le nombreEntre

                

                			if [ "$nombreMystere" -gt "$nombreEntre" ]  #Si le nombreMystere est plus grand que le nombreEntre
					then #ALors

                   		 		echo -e "C'est plus !\n\n" #On affiche C'est plus ! à l'écran


               				elif [ "$nombreMystere" -lt "$nombreEntre" ] #Sinon si le nombreMystere est plus petit que le nombreEntre

					then #Alors


                   				echo -e "C'est moins !\n\n" #On affiche C'est moins ! à l'écran


               				else #Sinon
                	 
                    				echo -e "Bravo, Joueur 1 vous avez trouve le nombre mystere en $compteurDeCoups coups !!!\n\n" #On affiche à l'écran Bravo, IA vous avez trouve le nombre mystere en %compteurDeCoups coups !!!
                    				echo -e "Bravo, vous avez trouve le nombre mystere en $compteurDeCoups coups !!!\n\n" #On affiche Bravo, vous avez trouve le nombre mystere en  x coups !!!
						echo -e "C'est dommage joueur 2, vous avez perdu avec $compteurDeCoups2 tenattives vous ferez mieux la prochaine fois"
						echo -e "Joueur 1 à vous de donner la réponse à la question suivante \n"
                    				partieModeDeJeu3=0
               		 		fi #Fin de la condition sur le cas où le nombreEntre est inférieur au nombre mystère


					#echo -e "\n \n CompteurMort : $compteurMort"

 					#echo -e "compteurDeCoups : $compteurDeCoups \n \n "

               	 			if [ "$compteurMort" -le "$compteurDeCoups" ] #Si le compteurMort est égale au compteurDeCoups
               		 		then #alors
                   		 		echo -e "\t*****************GAME-OVER*****************\n" #On affiche AU-REVOIR quand l'utilisateur quitte le jeu
						echo -e "Le joueur 1 a perdu avec $compteurDeCoups tentatives \n"
						echo -e "IA a gagné avec $compteurDeCoups2 tentatives \n"
						echo -e "IA à vous de donner la réponse à la question suivante \n"
						echo -e "Non je préfère que ce soit joueur 1 qui choisisse \n"
						echo -e "Comme tu voudras IA joueur 1 à vous de répondre à cette question \n"
                    				partieModeDeJeu3=0
						nombreEntre2=$nombreMystere2
						break;


               		 		fi #Fin de la condition portant sur le cas où le compteur de mort est égale au compteur de coups
				fi #Fin du si



                #********************************************* La partie de l'IA  ********************************************************************************



               # if(($debutDuJeu==1)) #Si le debutDuJeu vaut 1
		#then 

				compteurDeCoups2=$(($compteurDeCoups2+1)) #On incrémente compteurDeCoups2

               			if [ $partieModeDeJeu3 -eq 1 ] #Si finDuJeu est différent de 1
               			then #Alors

					echo -e "IA: Selon toi, quel est le nombre mystère ? \n"
                        		nombreEntre2=$nombrePasEncoreEntre2;
					echo -e "$nombreEntre2 \n"

					#echo -e " Nombre mystere : $nombreMystere2 \n "
					#echo -e " Nombre entre 2 : $nombreEntre2 \n "

                        		if [ "$nombreMystere2" -gt "$nombreEntre2" ]   #Si le nombreMystere est plus grand que le nombreEntre
                        		then
                            			echo -e "C'est plus !\n\n" #On affiche C'est plus ! à l'écran
                            			# maxNombreMystere2 = maxNombreMystere2; # Le nombre Mystère  maximal à chercher
                            			#echo -e "Le maximum possible du nombre mystere est de: $maxNombreMystere2 \n"
                            			minNombreMystere2=$nombreEntre2; #Le nombre mystère mini à chercher est le nombre que l'on a trouvé +1

					

                            			#echo -e "Le minimum possible du nombre mystere est de: $minNombreMystere2 \n";
						calcul1=$(expr $maxNombreMystere2 + $minNombreMystere2);
						#echo -e "calcul1 : $calcul1 \n";
						nombreMoitieIntervalleMystere2=$(expr $calcul1 / 2);
						#echo -e "resultat2 : $nombreMoitieIntervalleMystere2 \n";
						nombrePasEncoreEntre2=$nombreMoitieIntervalleMystere2; # Le nombre entré par l'IA correspond à la moitié de l'intervalle du nombre mystère mini et du nombre mystère
                            		#nombreMoitieIntervalleMystere2=expr `expr `${maxNombreMystere2} + ${minNombreMystere2}` / 2`  ; # On définit nombreMoitieIntervalleMystere comme étant le nombre à la moitié de l'intervalle de recherche du nombre mystère
                            			#echo -e "IA : On est curieux quel prochain nombre rentrera tu ?" #On affiche à l'écran Joueur 2 : Quel est le nombre ?
                            			nombrePasEncoreEntre2=$nombreMoitieIntervalleMystere2; # Le nombre entré par l'IA correspond à la moitié de l'intervalle du nombre mystère mini et du nombre mystère maxi
                            			#echo -e "$nombrePasEncoreEntre2 \n"

                           		# if(($nombrePasEncoreEntre2==$nombreMystere2))
                           		# then

                              		#  echo "Le prochain nombre que tu rentreras sera la bonne réponse"

                         		 #  fi

                       			elif [ "$nombreMystere2" -lt "$nombreEntre2" ] #Sinon si le nombreMystere est plus petit que le nombreEntre
                       	 		then
                            			echo -e "C'est moins !\n\n" #On affiche C'est moins ! à l'écran
                            			maxNombreMystere2=$nombreEntre2; #Le nombre mystère maxi à chercher est le nombre que l'on a trouvé -1
                            			#echo -e "Le maximum possible du nombre mystere est de: $maxNombreMystere2 \n"
                            			#minNombreMystere2=$minNombreMystere2; #Le nombre minimal à chercher reste le nombre minimal à chercher



                            		
                            			#echo -e "Le minimum possible du nombre mystere est de: $minNombreMystere2 \n";
						calcul1=$(expr $maxNombreMystere2 + $minNombreMystere2);
						#echo -e "calcul1 : $calcul1 \n";
						nombreMoitieIntervalleMystere2=$(expr $calcul1 / 2);
						#echo -e "resultat2 : $nombreMoitieIntervalleMystere2 \n";
						nombrePasEncoreEntre2=$nombreMoitieIntervalleMystere2; # Le nombre entré par l'IA correspond à la moitié de l'intervalle du nombre mystère mini et du nombre mystère
                            			#nombreMoitieIntervalleMystere2=expr `expr `${maxNombreMystere2} + ${minNombreMystere2}` / 2`  ; # On définit nombreMoitieIntervalleMystere comme étant le nombre à la moitié de l'intervalle de recherche du nombre mystère
                            			#echo -e "IA : On est curieux quel prochain nombre rentrera tu ?" #On affiche à l'écran Joueur 2 : Quel est le nombre ?
                            			nombrePasEncoreEntre2=$nombreMoitieIntervalleMystere2; # Le nombre entré par l'IA correspond à la moitié de l'intervalle du nombre mystère mini et du nombre mystère maxi
                            			#echo -e "$nombrePasEncoreEntre2 \n"

                            		#if(($nombrePasEncoreEntre2==$nombreMystere2)) #Si le nombre pas encore entré numéro 2 est égale au deuxième nombre mystère
                            		#then
                                		#echo "Le prochain nombre que tu rentreras sera la bonne réponse"

                          		 #fi

                        

                        		else #Sinon
                        
                            			echo -e "Bravo, vous avez trouve le nombre mystere qui est $nombreMystere2 en $compteurDeCoups2 coups !!!\n\n" #On affiche Bravo, vous avez trouve le nombre mystere en  x coups !!!
						echo -e "Bravo, IA vous avez trouvés le nombre mystere en $compteurDeCoups coups !!!\n\n" #On affiche Bravo, vous avez trouve le nombre mystere en  x coups !!!
                    				echo -e "C'est dommage joueur 1, vous avez perdu avec $compteurDeCoups2 tentatives vous ferez mieux la prochaine fois \n"
						echo -e "IA à vous de donner la réponse à la question suivante \n"
						echo -e "Non je préfère que ce soit joueur 1 qui choisisse \n"
						echo -e "Comme tu voudras IA joueur 1 à vous de répondre à cette question \n"
						partieModeDeJeu3=0
                       	 		fi #Fin des conditions de comparaisons des nombres

                        		if [ "$maxNombreMystere2" -eq "$minNombreMystere2" ] #Si le maximum du nombre mystère est égale au minimum dunombre mystère
                       			then #Alors
                            			echo -e "Bravo, IA vous avez trouve le nombre mystere qui est $nombreMystere2 en $compteurDeCoups2 coups !!!\n\n" #On affiche Bravo, vous avez trouve le nombre mystere en  x coups !!!
                           			partieModeDeJeu3=0
                        		fi #Fin de la condition portant sur le cas où l'IA trouve le nombre mystère

               	 			if [ "$compteurMort2" -le "$compteurDeCoups2" ] #Si le compteurMort est égale au compteurDeCoups
					then #Alors


                            			echo -e "\t*****************GAME-OVER*****************\n" #On affiche GAME OVER
						echo -e "IA a perdu avec $compteurDeCoups2 tentatives \n"
						echo -e "Le joueur 1 a gagné avec $compteurDeCoups tentatives \n"
						echo -e "Joueur 1 à vous de donner la réponse à la question suivante \n"
                            			partieModeDeJeu3=0
						nombreEntre=$nombreMystere #Pour sortir de la boucle


                        		fi #Fin de la condition portant sur le cas où l'IA n'a plus de tentatives restantes et pert la partie

				fi #Fin de la condition portant sur le cas où finDuJeu est différent de 1
			done

		done #finDeLaBoucle portant sur le mode de jeu numéro 2
	#fi




	#continuerPartie
	else #Sinon




		echo -e "An error has occured \n"
		#continuerPartie=1;
		continuerPartie

	fi

	continuerPartie

done #Fin de la boucle continuerPartie

echo -e " \n À la prochaine \n "
