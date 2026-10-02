---
id: "5402"
title: "Dobble : 57 cartes, 57 symboles"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [dobble, denombrement, comptage-double, paires, cartes]
adapted_from: null
see_also: ["5401", "6015"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Can you « Spot it! », Calvin Jongsma et Thomas J. Clark"
  reference: "SpotItPuzzleEdited.pdf, « Case 8: s = 8 » (les comptages demandés ici sont reconstruits, le texte ne donne que la construction)"
  url: "https://mathcircles.org/activity/can-you-spot-it/"
  original_language: "en"
  local_copy: "sources/originals/namc/SpotItPuzzleEdited.pdf"
---

## Statement

Dans le jeu de **Dobble**, chaque carte porte $8$ symboles, et deux cartes quelconques du jeu ont **exactement un** symbole en commun : quelles que soient les deux cartes retournées, il y a toujours un symbole à trouver, et un seul.

La boîte vendue dans le commerce contient $55$ cartes, mais ce n'est qu'un extrait. Le jeu **complet** que l'on sait fabriquer avec $8$ symboles par carte contient $57$ cartes et utilise $57$ symboles différents. C'est ce jeu complet que l'on étudie ici.

1. Montrer que deux symboles donnés ne peuvent pas figurer ensemble sur deux cartes différentes.
2. En comptant de deux façons les paires de symboles, montrer que toute paire de symboles figure ensemble sur exactement une carte.
3. En déduire que chaque symbole figure sur exactement $8$ cartes.
4. Retrouver alors, par un calcul direct, que le jeu contient bien $57$ cartes.

## Hints

1. Question 1 : que se passerait-il si les symboles $y$ et $z$ figuraient tous les deux sur la carte $C$ **et** sur la carte $D$ ?
2. Question 2 : sur une carte, combien peut-on lire de paires de symboles ? Et sur les $57$ cartes réunies ?
3. Comparez ce nombre au nombre total de paires que l'on peut former avec les $57$ symboles du jeu. Que constatez-vous ?
4. Question 3 : fixez un symbole $x$. Les paires qui contiennent $x$ sont au nombre de $56$. Où se trouve chacune d'elles ?
5. Question 4 : fixez une carte. Combien de symboles a-t-elle ? Combien de cartes portent chacun de ces symboles ? Et toute autre carte du jeu rencontre celle-là.

## Solution

### 1. Deux symboles ne se retrouvent jamais deux fois ensemble

Supposons que deux symboles distincts $y$ et $z$ figurent tous les deux sur une carte $C$ **et** tous les deux sur une autre carte $D$. Alors $C$ et $D$ auraient deux symboles en commun, $y$ et $z$, ce qui contredit la règle du jeu.

Donc une paire de symboles figure sur **au plus une** carte.

### 2. Toute paire de symboles figure sur exactement une carte

Comptons de deux façons les paires de symboles que l'on peut lire sur les cartes du jeu.

**Premier comptage : carte par carte.** Une carte porte $8$ symboles, on y lit donc

$$\binom{8}{2} = \frac{8 \times 7}{2} = 28 \ \text{paires de symboles.}$$

Il y a $57$ cartes, et d'après la question 1 aucune paire n'est lue deux fois. Le nombre de paires que l'on peut lire sur une carte du jeu est donc exactement

$$57 \times 28 = 1596 .$$

**Deuxième comptage : toutes les paires possibles.** Le jeu utilise $57$ symboles, et le nombre de paires de symboles que l'on peut former est

$$\binom{57}{2} = \frac{57 \times 56}{2} = 57 \times 28 = 1596 .$$

Les deux nombres sont **égaux**. Or les paires lues sur les cartes font partie des paires possibles. Deux ensembles finis de même taille, l'un contenu dans l'autre, sont égaux : toute paire de symboles est donc lue sur une carte, et sur une seule d'après la question 1.

### 3. Chaque symbole figure sur exactement huit cartes

Fixons un symbole $x$, et notons $n$ le nombre de cartes qui le portent.

Chaque carte qui porte $x$ porte aussi $7$ autres symboles : on y lit donc $7$ paires contenant $x$. Deux cartes différentes portant $x$ ne donnent jamais la même paire, d'après la question 1. Les cartes portant $x$ fournissent donc $7n$ paires contenant $x$, toutes différentes.

Réciproquement, d'après la question 2, chacune des $56$ paires $\{x, y\}$ (où $y$ parcourt les $56$ autres symboles) figure sur une carte, et cette carte porte forcément $x$. Toutes ces paires sont donc dans notre liste. Ainsi

$$7n = 56, \qquad \text{donc} \qquad n = 8 .$$

Chaque symbole figure sur exactement $8$ cartes — le même nombre que le nombre de symboles par carte. Le jeu est parfaitement symétrique entre cartes et symboles.

### 4. Le compte des cartes

Fixons une carte $C$, qui porte les symboles $s_1, s_2, \ldots, s_8$. Toute autre carte $D$ a exactement un symbole en commun avec $C$ : elle porte donc exactement un des $s_i$. Les autres cartes se répartissent ainsi en huit groupes sans chevauchement, le groupe $i$ étant formé des cartes autres que $C$ qui portent $s_i$.

D'après la question 3, le symbole $s_i$ figure sur $8$ cartes en tout, donc sur $7$ cartes autres que $C$ : chaque groupe compte $7$ cartes. Au total

$$1 + 8 \times 7 = 57 \ \text{cartes.}$$

**Conclusion.** Tout se referme : $57$ cartes, $57$ symboles, $8$ symboles par carte, $8$ cartes par symbole, et chaque paire de symboles sur exactement une carte. Un tel objet porte un nom en mathématiques : c'est un **plan projectif fini**, les cartes jouant le rôle des droites et les symboles celui des points.

## Going further

1. Le jeu Dobble Kids a $6$ symboles par carte. Quels nombres remplacent $57$ et $8$ ? (Réponse : $31$ et $6$.)
2. Refaites le calcul de la question 4 avec $s$ symboles par carte : vous devriez trouver $s^2 - s + 1$ cartes.
3. Ce nombre existe-t-il toujours ? Non : on a démontré qu'aucun jeu ne peut avoir $7$ symboles par carte, ni $11$. Pour $13$ symboles par carte, personne ne sait, même avec un supercalculateur.
