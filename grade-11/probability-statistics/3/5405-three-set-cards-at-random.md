---
id: "5405"
title: "Trois cartes de SET au hasard"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [set, probabilite, denombrement, equiprobabilite, cartes]
adapted_from: null
see_also: ["5404"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Game of SET, Brian Conrey et Brianna Donaldson"
  reference: "Set-Activity-Guide.pdf, question 4"
  url: "https://mathcircles.org/activity/set/"
  original_language: "en"
  local_copy: "sources/originals/namc/Set-Activity-Guide.pdf"
---

## Statement

Le jeu de **SET** contient $81$ cartes. Chaque carte porte un dessin décrit par quatre caractéristiques, qui prennent chacune trois valeurs : le **nombre** de figures ($1$, $2$ ou $3$), la **forme** (losange, ovale, vague), la **couleur** (rouge, verte, violette) et le **remplissage** (vide, hachuré, plein). Le paquet contient une carte par combinaison, soit $3^4 = 81$ cartes.

Trois cartes forment un **SET** lorsque, pour chacune des quatre caractéristiques, ou bien les trois cartes ont la même valeur, ou bien elles ont trois valeurs toutes différentes.

On admet le fait suivant : **deux cartes différentes étant posées, il existe exactement une troisième carte qui forme un SET avec elles.**

On tire au hasard trois cartes du paquet, tous les tirages de trois cartes étant équiprobables.

1. Quelle est la probabilité que ces trois cartes forment un SET ? Trouver la réponse **sans** compter les SET du jeu.
2. Retrouver le résultat en comptant les SET du jeu.

## Hints

1. Question 1 : imaginez que l'on tire les cartes une à une. Les deux premières, quelles qu'elles soient, imposent la troisième.
2. Combien de cartes restent-elles dans le paquet après le tirage des deux premières ?
3. Question 2 : le nombre de tirages possibles est $\binom{81}{3}$. Il reste à compter les tirages favorables, c'est-à-dire les SET.
4. Pour compter les SET : combien y a-t-il de paires de cartes ? Chaque paire est dans un SET et un seul, et chaque SET contient trois paires.

## Solution

### 1. Sans compter les SET

Tirer trois cartes d'un coup ou les tirer une à une revient au même, puisque l'ordre du tirage ne change pas le résultat obtenu.

Tirons donc les cartes une à une. Après les deux premières, le paquet contient encore $79$ cartes. Les deux cartes déjà tirées sont différentes : elles imposent une unique troisième carte qui complète le SET, et cette carte est bien l'une des $79$ restantes (elle est différente des deux premières).

La troisième carte tirée est l'une de ces $79$ cartes, toutes également probables. La probabilité que ce soit **la** bonne est donc

$$p = \frac{1}{79} \approx \text{0,0127} .$$

Remarquons que ce raisonnement ne dépend pas du tout des deux premières cartes : quelles qu'elles soient, la conclusion est la même.

### 2. En comptant les SET

**Le nombre de tirages possibles** est le nombre de façons de choisir $3$ cartes parmi $81$ :

$$\binom{81}{3} = \frac{81 \times 80 \times 79}{6} = 85\,320 .$$

**Le nombre de SET.** Comptons les paires de cartes. Il y en a

$$\binom{81}{2} = \frac{81 \times 80}{2} = 3240 .$$

Chaque paire appartient à exactement un SET. Chaque SET contient exactement $3$ paires, et deux SET différents n'ont jamais de paire commune. Les $3240$ paires se répartissent donc en paquets de trois, un par SET, et le jeu contient

$$\frac{3240}{3} = 1080 \ \text{SET}.$$

**La probabilité** est le quotient du nombre de cas favorables par le nombre de cas possibles :

$$p = \frac{1080}{85\,320} = \frac{1}{79},$$

car $85\,320 = 79 \times 1080$.

**Conclusion.** Trois cartes tirées au hasard forment un SET avec la probabilité $\dfrac{1}{79}$, soit un peu plus d'une chance sur $80$. Les deux méthodes donnent évidemment le même résultat, mais la première explique d'où vient le $79$ : c'est le nombre de cartes encore en jeu quand la troisième est déjà imposée.

## Going further

1. Au début d'une partie, on étale $12$ cartes sur la table. Ces $12$ cartes donnent $\binom{12}{3} = 220$ triplets, et chacun est un SET avec la probabilité $\frac{1}{79}$. Le nombre moyen de SET visibles sur la table vaut donc $\frac{220}{79} \approx \text{2,8}$. Expliquez pourquoi on peut additionner les probabilités des $220$ triplets, alors que ces triplets ne sont pas indépendants.
2. Il arrive qu'aucun SET ne soit visible : on ajoute alors trois cartes. Cherchez, en tâtonnant, une collection de cartes sans aucun SET. Jusqu'où pouvez-vous aller ? (Le record est $20$ cartes, et c'est un résultat difficile.)
