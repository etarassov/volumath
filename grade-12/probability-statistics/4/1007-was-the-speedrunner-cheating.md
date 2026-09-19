---
id: "1007"
title: "Le joueur a-t-il triché ?"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 45
tags: [loi binomiale, esperance, prise de decision, independance, seuil]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Did Dream cheat?"
  reference: "Handout-4807-4988.pdf, exercices 10 à 15"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4807-4988.pdf"
---

## Statement

Dans un jeu vidéo, certains objets s'obtiennent au hasard. Les règles publiées par l'éditeur donnent, pour chaque tentative et indépendamment des autres :

- une perle est obtenue avec la probabilité $\text{0,047}$ (soit $\text{4,7}\,\%$) ;
- une baguette est obtenue avec la probabilité $\text{0,5}$.

Un joueur célèbre diffuse ses parties et annonce un record. Les organisateurs, en réexaminant les vidéos, comptent :

- $42$ perles obtenues en $262$ tentatives ;
- $211$ baguettes obtenues en $305$ tentatives.

Ils l'accusent d'avoir modifié le jeu en sa faveur. Le joueur répond qu'il a simplement eu de la chance. Qui a raison ?

**Échauffement.** J'affirme avoir lancé une pièce équilibrée $11$ fois et obtenu seulement $2$ fois « pile ».

1. Si la pièce est vraiment équilibrée, quelle est la probabilité d'obtenir $2$ « pile » ou moins en $11$ lancers ? Trouvez-vous cela suspect ?
2. Même question si j'annonce $2$ « pile » en $100$ lancers.

**Le joueur.**

3. Combien de perles, en moyenne, obtient-on en $262$ tentatives si le jeu n'est pas modifié ? Combien de baguettes en $305$ tentatives ? Comparer aux comptages des organisateurs.
4. En admettant que le jeu n'est pas modifié, calculer la probabilité d'obtenir **au moins** $42$ perles en $262$ tentatives, puis celle d'obtenir **au moins** $211$ baguettes en $305$ tentatives. *(Une calculatrice ou un tableur est nécessaire.)*
5. En déduire la probabilité que les deux choses arrivent ensemble à un joueur honnête. Conclure.

## Hints

1. Chaque situation est une répétition d'épreuves identiques et indépendantes, avec deux issues. Quelle loi ?
2. « $2$ piles ou moins », c'est la réunion de trois événements incompatibles : $0$, $1$ ou $2$ piles.
3. Pour la question 3, l'espérance d'une loi binomiale de paramètres $n$ et $p$ vaut $np$.
4. Pour la question 4, calculer $P(X \geqslant 42)$ directement demanderait $221$ termes. Passer à l'événement contraire : $P(X \geqslant 42) = 1 - P(X \leqslant 41)$, et utiliser la fonction de votre calculatrice qui donne les probabilités cumulées d'une loi binomiale.
5. Attention : les probabilités en jeu sont si petites que beaucoup de calculatrices affichent $0$. Utiliser un outil qui garde les petits nombres, ou raisonner sur les ordres de grandeur.
6. Pour la question 5, les deux séries de tentatives sont indépendantes l'une de l'autre.

## Solution

### Échauffement

**Question 1.** Notons $X$ le nombre de « pile » en $11$ lancers d'une pièce équilibrée. Alors $X$ suit la loi binomiale de paramètres $n = 11$ et $p = \frac12$, et
$$P(X \leqslant 2) = \frac{1}{2^{11}}\left[\binom{11}{0} + \binom{11}{1} + \binom{11}{2}\right] = \frac{1 + 11 + 55}{2048} = \frac{67}{2048} \approx \text{0,0327}.$$

Environ $3\,\%$ : c'est peu, mais pas extraordinaire. Sur une trentaine de personnes essayant l'expérience, une environ y arriverait. On ne peut pas accuser quelqu'un sur cette base.

**Question 2.** Avec $n = 100$ lancers,
$$P(X \leqslant 2) = \frac{\binom{100}{0} + \binom{100}{1} + \binom{100}{2}}{2^{100}} = \frac{1 + 100 + 4950}{2^{100}} = \frac{5051}{2^{100}} \approx 4 \times 10^{-27}.$$

Cette fois, c'est autre chose. Même si tous les humains ayant jamais vécu avaient passé leur vie à lancer des pièces, personne n'aurait jamais vu cela. Conclusion raisonnable : la pièce n'est pas équilibrée, ou bien je mens.

C'est toute la logique du raisonnement qui suit. On suppose l'honnêteté, on calcule la probabilité d'un résultat au moins aussi extrême que celui observé, et si cette probabilité est absurdement petite, on rejette l'hypothèse de départ.

### Le joueur

**Question 3 : ce qu'on attend.**

Soit $Y$ le nombre de perles en $262$ tentatives : $Y$ suit la loi binomiale de paramètres $262$ et $\text{0,047}$, donc
$$E(Y) = 262 \times \text{0,047} = \text{12,314}.$$
Le joueur en a obtenu $42$, soit plus de trois fois la moyenne.

Soit $Z$ le nombre de baguettes en $305$ tentatives : $Z$ suit la loi binomiale de paramètres $305$ et $\text{0,5}$, donc
$$E(Z) = 305 \times \text{0,5} = \text{152,5}.$$
Le joueur en a obtenu $211$, soit environ $58$ de plus que la moyenne.

Les deux écarts vont dans le sens favorable au joueur. Reste à savoir s'ils sont explicables par la chance.

**Question 4 : les probabilités.**

$$P(Y \geqslant 42) = 1 - P(Y \leqslant 41) \approx \text{4,6} \times 10^{-12},$$
$$P(Z \geqslant 211) = 1 - P(Z \leqslant 210) \approx \text{8,8} \times 10^{-12}.$$

Chacune de ces deux probabilités est de l'ordre de **une chance sur cent milliards**.

**Question 5 : les deux à la fois.**

Les deux séries de tentatives sont indépendantes, donc les probabilités se multiplient :
$$P(Y \geqslant 42 \text{ et } Z \geqslant 211) \approx \text{4,6} \times 10^{-12} \times \text{8,8} \times 10^{-12} \approx 4 \times 10^{-23}.$$

**Conclusion.** Si le jeu n'était pas modifié, la probabilité qu'un joueur honnête réalise ces deux séries est d'environ $4 \times 10^{-23}$, soit **une chance sur vingt-cinq mille milliards de milliards**.

Pour se représenter ce nombre : si les huit milliards d'êtres humains rejouaient cette double série une fois par seconde pendant dix ans, cela ferait environ
$$8 \times 10^{9} \times 10 \times 365 \times 24 \times 3600 \approx \text{2,5} \times 10^{18}$$
tentatives, et la probabilité qu'au moins l'un d'eux y parvienne resterait de l'ordre de $10^{-4}$, soit une chance sur dix mille.

On rejette donc l'hypothèse « le jeu n'était pas modifié ». Attention à ce que cela veut dire exactement : le calcul ne **prouve** pas la tricherie, il montre que l'explication par la chance est intenable. Les organisateurs ont raison de ne pas homologuer le record.

*(Une réserve honnête : dans l'affaire réelle qui a inspiré cet exercice, une partie du débat portait justement sur le fait que les organisateurs avaient choisi d'examiner ces séries-là **parce qu'elles paraissaient anormales**. Chercher partout l'anomalie la plus frappante, puis calculer sa probabilité comme si on l'avait choisie à l'avance, gonfle artificiellement l'étrangeté du résultat. Ici, même en tenant compte de cet effet, l'écart reste bien trop grand.)*

## Going further

1. En 2009, dans un casino américain, une joueuse a lancé deux dés $154$ fois de suite sans jamais obtenir une somme de $7$. Calculer la probabilité de cet exploit, et la comparer à celle de la question 5.
2. Reprendre la question 1 de l'échauffement, mais en comptant aussi le cas symétrique « $2$ faces ou moins ». Pourquoi est-ce plus honnête ? La conclusion change-t-elle ?
3. Sur les $262$ tentatives, à partir de combien de perles la probabilité $P(Y \geqslant x)$ descend-elle sous $\text{0,05}$ ? (Réponse : $x = 19$, pour $P \approx \text{0,042}$, alors que $x = 18$ donne encore $P \approx \text{0,071}$.) Le joueur en a obtenu $42$.
