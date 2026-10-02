---
id: "11018"
title: "Des polynômes à racine entière avec 2020 cartes"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie-gagnante, appariement, polynomes, racines]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Seniors, exercice 13 ; corrigé 2021-02_Corrige-envoi-3.pdf (qui écrit une fois « les entiers de 1 à 2010 » pour 1 à 2020)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Alice et Bob jouent avec un paquet de $2020$ cartes. Sur chaque carte est écrit un des entiers de $1$ à
$2020$, et chaque entier apparaît sur exactement une carte.

À chaque tour, Alice retire du paquet une carte de son choix, qui porte un numéro $a$. Bob voit cette
carte, puis retire à son tour une carte de son choix, qui porte un numéro $b$. Bob écrit alors au tableau
**l'un** des deux polynômes
$$x^2 - ax + b \qquad \text{ou} \qquad x^2 - bx + a ,$$
celui qu'il préfère. Le jeu continue ainsi jusqu'à ce que le paquet soit vide.

À la fin, Bob gagne si **chacun** des polynômes écrits au tableau possède au moins une racine entière.
Sinon, c'est Alice qui gagne.

Montrer que Bob a une stratégie qui le fait gagner à coup sûr.

## Hints

1. Cherche une valeur simple de $x$ qui pourrait être une racine. Que faut-il pour que $x = 1$ soit une
   racine de $x^2 - bx + a$ ?
2. Le nombre $1$ est racine de $x^2 - bx + a$ quand $b = a + 1$. Bob a donc intérêt à répondre à un
   nombre par son voisin.
3. Groupe les nombres de $1$ à $2020$ par paires de voisins, fixées une fois pour toutes avant le début de
   la partie.

## Solution

**Une racine facile.** Pour deux entiers $u$ et $v$, le nombre $1$ est racine de $x^2 - vx + u$ quand
$1 - v + u = 0$, c'est-à-dire quand $v = u + 1$. Dans ce cas, d'ailleurs,
$$x^2 - (u + 1)x + u = (x - 1)(x - u) .$$

**La stratégie de Bob.** Avant la partie, Bob range les nombres de $1$ à $2020$ en $1010$ paires de
voisins :
$$\{1, 2\}, \quad \{3, 4\}, \quad \{5, 6\}, \quad \ldots, \quad \{2019, 2020\} .$$
Chaque fois qu'Alice retire une carte, Bob retire **l'autre carte de la même paire**. Il note $u$ le plus
petit des deux numéros et $v = u + 1$ le plus grand, et il écrit le polynôme $x^2 - vx + u$, qui est l'un
des deux polynômes autorisés (le second si Alice a pris $u$, le premier si elle a pris $v$, puisque
l'un des deux nombres joue le rôle de $a$ et l'autre celui de $b$).

**Bob peut toujours jouer ainsi.** Il faut vérifier que la carte voulue est encore dans le paquet. Au début,
toutes les paires sont complètes. À chaque tour, Alice entame une paire et Bob la termine aussitôt, donc
après chaque tour, les cartes restantes forment toujours des paires complètes. Quand Alice prend une carte,
sa partenaire est donc encore là.

**Bob gagne.** Chaque polynôme écrit est de la forme $x^2 - (u + 1)x + u = (x - 1)(x - u)$, qui a les
racines entières $1$ et $u$.

**Conclusion.** Avec cette stratégie, Bob gagne quelle que soit la façon de jouer d'Alice.
