---
id: "5404"
title: "Combien de SET dans le jeu ?"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [set, denombrement, comptage-double, cartes, triplets]
adapted_from: null
see_also: ["5403", "5405", "5406"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Game of SET, Brian Conrey et Brianna Donaldson"
  reference: "Set-Activity-Guide.pdf, question 5"
  url: "https://mathcircles.org/activity/set/"
  original_language: "en"
  local_copy: "sources/originals/namc/Set-Activity-Guide.pdf"
---

## Statement

Le jeu de **SET** se joue avec $81$ cartes. Chaque carte porte un dessin décrit par quatre caractéristiques, qui prennent chacune trois valeurs :

- le **nombre** de figures : $1$, $2$ ou $3$ ;
- la **forme** : losange, ovale ou vague ;
- la **couleur** : rouge, verte ou violette ;
- le **remplissage** : vide, hachuré ou plein.

Le paquet contient exactement une carte par combinaison, soit $3^4 = 81$ cartes.

Trois cartes forment un **SET** lorsque, pour chacune des quatre caractéristiques, ou bien les trois cartes ont la même valeur, ou bien elles ont trois valeurs toutes différentes.

On admet le fait suivant, qui est la clé du jeu : **deux cartes différentes étant posées, il existe exactement une troisième carte qui forme un SET avec elles.**

1. Combien y a-t-il de SET contenant une carte donnée ?
2. Combien y a-t-il de SET en tout dans le paquet ?
3. Retrouver ce nombre par une autre méthode.

## Hints

1. Question 1 : fixez une carte $A$. Associez à chacune des $80$ autres cartes le SET qu'elle forme avec $A$.
2. Cette association ne donne pas $80$ SET différents : combien de fois chaque SET contenant $A$ est-il obtenu ?
3. Question 2 : comptez de deux façons les couples formés d'un SET et d'une de ses trois cartes.
4. Question 3 : comptez plutôt les paires de cartes. Combien y a-t-il de paires en tout ? Combien de paires y a-t-il dans un SET donné ?

## Solution

### 1. Les SET qui contiennent une carte donnée

Fixons une carte $A$. À chacune des $80$ autres cartes $B$ du paquet, associons le SET formé par $A$, $B$ et la troisième carte imposée par $A$ et $B$. On obtient ainsi un SET contenant $A$, et tout SET contenant $A$ est obtenu de cette façon.

Mais attention : un SET $\{A, B, T\}$ est obtenu **deux fois**, une fois en partant de $B$, une fois en partant de $T$. Le nombre de SET contenant $A$ est donc

$$\frac{80}{2} = 40 .$$

### 2. Le nombre total de SET

Notons $N$ le nombre de SET du paquet, et comptons de deux façons les couples

$$(\text{un SET}, \ \text{une des trois cartes de ce SET}).$$

- **En partant des SET :** chaque SET contient $3$ cartes, ce qui donne $3N$ couples.
- **En partant des cartes :** chaque carte appartient à $40$ SET d'après la question 1, et il y a $81$ cartes, ce qui donne $81 \times 40 = 3240$ couples.

Les deux comptages portent sur les mêmes objets, donc

$$3N = 3240, \qquad \text{d'où} \qquad N = 1080 .$$

### 3. Une deuxième méthode : compter les paires

Comptons cette fois les **paires de cartes**.

- Le paquet contient $\binom{81}{2} = \dfrac{81 \times 80}{2} = 3240$ paires de cartes.
- Chaque paire appartient à exactement un SET, celui que la paire détermine.
- Chaque SET contient $\binom{3}{2} = 3$ paires, et deux SET différents n'ont jamais de paire commune (une paire ne détermine qu'un seul SET).

Les $3240$ paires se répartissent donc en paquets de $3$, un paquet par SET :

$$N = \frac{3240}{3} = 1080 .$$

**Conclusion.** Le jeu de SET contient $1080$ SET différents, et chacune des $81$ cartes appartient à $40$ d'entre eux.

## Going further

1. Combien de SET ne contiennent aucune carte rouge ? (Commencez par montrer qu'un tel SET a ses trois cartes de la même couleur.)
2. Les $12$ cartes posées au début d'une partie forment $\binom{12}{3} = 220$ triplets. Sachant qu'il y a $1080$ SET pour $\binom{81}{3} = 85\,320$ triplets, à combien de SET peut-on s'attendre sur la table ?
