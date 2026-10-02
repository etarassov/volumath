---
id: "7641"
title: "Deux mille treize jetons"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, jetons, divisibilite, jeu]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On commence avec un seul tas de $2013$ jetons.

Une **étape** consiste à faire, dans cet ordre, deux choses :

1. retirer un jeton de l'un des tas ;
2. couper l'un des tas en deux tas (pas forcément égaux, et pas forcément le tas où l'on vient de retirer un jeton).

*Si l'on retire un jeton d'un tas qui n'en contient qu'un, on obtient un tas de $0$ jeton, qui compte quand même comme un tas.*

Peut-on arriver, au bout d'un certain nombre d'étapes, à une situation où **tous les tas contiennent exactement $3$ jetons** ?

## Hints

1. Faites deux ou trois étapes à la main pour voir comment la situation évolue.
2. Deux quantités changent à chaque étape : le nombre total de jetons et le nombre de tas. De combien chacune varie-t-elle ?
3. L'une diminue de $1$, l'autre augmente de $1$. Que dire de leur **somme** ?
4. Si à la fin il y a $n$ tas de $3$ jetons, combien vaut cette somme ?

## Solution

**Réponse : non, c'est impossible.**

**L'invariant.**

À chaque étape :

- on retire un jeton, donc le nombre total de jetons **diminue de $1$** ;
- on coupe un tas en deux, donc le nombre de tas **augmente de $1$**.

Par conséquent, la quantité

$$Q = (\text{nombre de jetons}) + (\text{nombre de tas})$$

ne change **jamais** : ce qu'elle perd d'un côté, elle le gagne de l'autre.

**La valeur de départ.**

Au départ, il y a $2013$ jetons et $1$ tas, donc

$$Q = 2013 + 1 = 2014 .$$

**La valeur d'arrivée.**

Supposons qu'on arrive à une situation où il y a $n$ tas, contenant chacun $3$ jetons. Le nombre de jetons vaut alors $3n$, et

$$Q = 3n + n = 4n .$$

**La contradiction.**

Il faudrait donc $4n = 2014$. Mais $2014 = 4 \times 503 + 2$ : ce n'est pas un multiple de $4$, donc $n = \dfrac{2014}{4}$ ne serait pas un nombre entier.

**Conclusion.** Il est impossible d'arriver à une situation où tous les tas contiennent exactement $3$ jetons.

## Going further

Cherchons ce qu'on peut atteindre. Si l'on veut arriver à $n$ tas contenant chacun $k$ jetons, il faut $kn + n = 2014$, c'est-à-dire

$$n\,(k+1) = 2014 = 2 \times 19 \times 53 .$$

Il faut donc que $n$ soit un diviseur de $2014$. Par exemple, avec $n = 19$ tas, on aurait $k + 1 = 106$, donc des tas de $105$ jetons : $19 \times 105 = 1995$ jetons répartis en $19$ tas, avec $Q = 1995 + 19 = 2014$ ✔.

Cela ne prouve pas encore que cette situation est **atteignable** : l'invariant dit seulement ce qui est impossible. Savoir si une situation compatible avec l'invariant peut vraiment être atteinte demande, elle, de construire une suite d'étapes. À vous d'essayer.
