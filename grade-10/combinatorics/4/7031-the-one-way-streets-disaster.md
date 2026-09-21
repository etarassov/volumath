---
id: "7031"
title: "Le réseau routier catastrophique"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [graphe oriente, denombrement, factorielle]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011"
  reference: "stage_junior_2011.pdf, test initial, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Dans un pays, six villes sont reliées deux à deux par des routes : il y a donc une route entre
chaque paire de villes, et jamais plus d'une. Les routes ne se croisent pas (elles passent au
besoin l'une au-dessus de l'autre par un pont).

Chaque route est en **sens unique**. Des fonctionnaires distraits les ont orientées de telle
sorte que, une fois sorti d'une ville, on ne peut jamais y revenir. Un tel réseau sera appelé
**catastrophique**.

1. Montrer que dans tout réseau catastrophique, il existe une ville dont on ne peut pas
   sortir.
2. Montrer que dans tout réseau catastrophique, il existe une ville d'où l'on peut atteindre
   directement toutes les autres.
3. Combien de sens de circulation faut-il changer, au minimum, pour qu'on puisse aller de
   n'importe quelle ville à n'importe quelle autre, éventuellement en plusieurs étapes ?
4. Montrer qu'il existe exactement $720$ réseaux catastrophiques.

## Hints

1. Pour la question 1, suppose le contraire et pars en voyage. Combien de villes différentes
   peux-tu visiter ?
2. Pour la question 2, que se passe-t-il si l'on inverse **toutes** les routes d'un coup ? Le
   réseau reste-t-il catastrophique ?
3. Pour la question 3, sers-toi des deux villes fournies par les questions 1 et 2.
4. Pour la question 4, retire la ville de la question 1 et recommence. Tu vas fabriquer une
   numérotation des villes.

## Solution

**1. Il existe une ville dont on ne peut pas sortir.**

Raisonnons par l'absurde : supposons que de chaque ville parte au moins une route.

Un voyageur qui respecte les sens uniques peut alors toujours continuer son chemin : il n'est
jamais bloqué. Faisons-le rouler sept étapes. Il aura visité huit villes (en comptant celle de
départ), or il n'y en a que six : il est donc passé **deux fois par la même ville**.

Cela veut dire qu'il est sorti de cette ville et qu'il y est revenu, ce qui contredit la
définition d'un réseau catastrophique.

Il existe donc une ville dont aucune route ne sort. Toutes ses cinq routes y entrent.

**2. Il existe une ville d'où l'on atteint directement toutes les autres.**

*L'astuce : retourner tout le réseau.* Inversons le sens de **toutes** les routes. Le réseau
obtenu est encore catastrophique. En effet, s'il existait dans le réseau inversé un circuit
partant d'une ville et y revenant, le même trajet parcouru à l'envers serait un circuit du
réseau de départ, ce qui est interdit.

Appliquons la question 1 au réseau inversé : il s'y trouve une ville, appelons-la $A$, dont
aucune route ne sort. Cela signifie que dans le réseau inversé, les cinq routes de $A$ y
entrent, donc que dans le réseau **de départ**, les cinq routes de $A$ en **sortent**.

De $A$, on atteint donc directement chacune des cinq autres villes.

**3. Une seule route suffit.**

D'après la question 1, il existe une ville $F$ dont on ne peut pas sortir. D'après la question
2, il existe une ville $A$ d'où l'on atteint directement toutes les autres. Ce sont deux
villes différentes : de $A$ on sort, de $F$ on ne sort pas.

*Une route suffit.* Inversons la seule route entre $A$ et $F$ : elle allait de $A$ vers $F$,
elle ira désormais de $F$ vers $A$.

Prenons deux villes quelconques $X$ et $Y$. Toutes les routes de $F$ y entraient, donc il
existe une route de $X$ vers $F$ (sauf si $X = F$). Et toutes les routes de $A$ en sortaient,
donc il existe une route de $A$ vers $Y$ (sauf si $Y = A$). Le trajet
$$X \longrightarrow F \longrightarrow A \longrightarrow Y$$
convient. Les cas où $X = F$ ou $Y = A$ se traitent en raccourcissant ce trajet.

*Aucune ne suffit pas.* Sans changement, on ne peut pas sortir de $F$ : on ne peut donc pas
aller de $F$ à une autre ville.

**Il faut donc changer exactement une route.**

**4. Il y a exactement $720$ réseaux catastrophiques.**

*De chaque réseau catastrophique on tire une numérotation.* Partons d'un réseau
catastrophique. D'après la question 1, il existe une ville dont on ne peut pas sortir :
donnons-lui le **numéro 1** et retirons-la, avec ses routes.

Il reste cinq villes, reliées deux à deux, et ce réseau plus petit est encore catastrophique
(supprimer des routes ne crée pas de circuit). On y trouve donc à nouveau une ville dont on ne
peut pas sortir : elle reçoit le **numéro 2**, et on la retire.

On continue ainsi jusqu'à avoir numéroté les six villes de $1$ à $6$.

*Ce que la numérotation dit du réseau.* Par construction, quand on compare deux villes, la
route les reliant va toujours de celle qui porte **le plus grand numéro** vers celle qui porte
le plus petit. Autrement dit : **le réseau est entièrement déterminé par la numérotation.**

*Et réciproquement.* Partons d'une numérotation quelconque des six villes de $1$ à $6$, et
orientons chaque route du plus grand numéro vers le plus petit. Un trajet fait alors toujours
décroître le numéro, donc il ne peut jamais revenir à son point de départ : le réseau obtenu
est catastrophique.

*Le compte.* Il y a donc exactement autant de réseaux catastrophiques que de façons de
numéroter six villes de $1$ à $6$. Pour le numéro $1$ on a $6$ choix, puis $5$ pour le numéro
$2$, puis $4$, et ainsi de suite :
$$6 \times 5 \times 4 \times 3 \times 2 \times 1 = 6! = \boxed{720} .$$

## Going further

Un réseau catastrophique s'appelle en réalité un **tournoi transitif**. La question 4 montre
qu'il revient exactement à ranger les villes dans un ordre, et c'est pour cela qu'on en trouve
$n!$ avec $n$ villes.

Avec $n$ villes, les questions 1 à 3 donnent les mêmes réponses, mot pour mot : une seule
route à inverser suffit toujours.
