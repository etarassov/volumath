---
id: "1015"
title: "Le jeu qui a l'air avantageux"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 45
tags: [esperance, variable-aleatoire, strategie, theorie-des-jeux, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Intro to Game Theory"
  reference: "Handout-4902-5178.pdf, problèmes 8, 14 et 15 (jeu à somme nulle n° 4 ; éléments de solution dans Handout-4903-5178.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4902-5178.pdf"
---

## Statement

Alice et Bob jouent au jeu suivant, répété de nombreuses fois.

À chaque partie, chacun choisit **en secret** un jeton, rouge ou bleu. On dévoile ensuite les deux jetons en même temps, et Bob verse à Alice la somme indiquée dans le tableau (une somme négative signifie que c'est Alice qui paie Bob) :

| | Bob joue rouge | Bob joue bleu |
|---|---|---|
| **Alice joue rouge** | $+3$ € | $-2$ € |
| **Alice joue bleu** | $-1$ € | $0$ € |

Alice trouve le jeu intéressant : c'est le seul gros gain, $+3$ €, qui saute aux yeux.

1. Montrer que si Alice s'en tient toujours au même jeton, Bob peut s'arranger pour qu'elle **perde** à chaque partie. Quelle somme Alice peut-elle au mieux se garantir, en jouant toujours le même jeton ?
2. Alice décide de tirer son jeton au sort : elle joue rouge avec la probabilité $p$ et bleu avec la probabilité $1-p$, indépendamment de tout le reste. Exprimer son gain moyen par partie lorsque Bob joue rouge, puis lorsque Bob joue bleu.
3. Trouver la valeur de $p$ pour laquelle ces deux gains moyens sont égaux. Combien vaut alors le gain moyen d'Alice ? Cette valeur dépend-elle de ce que fait Bob ?
4. Faire le même travail pour Bob : trouver la probabilité $q$ avec laquelle il doit jouer rouge pour que sa perte moyenne ne dépende pas d'Alice.
5. Conclure : ce jeu est-il équitable ?

## Hints

1. Pour la question 1, mettez-vous à la place de Bob : si Alice joue toujours rouge, que fait Bob ? et si elle joue toujours bleu ?
2. Pour la question 2, si Bob joue rouge, le gain d'Alice vaut $+3$ avec la probabilité $p$ et $-1$ avec la probabilité $1-p$. Calculez l'espérance.
3. Vous obtenez deux expressions affines en $p$. Les égaler donne une équation du premier degré.
4. Pour la question 4, recommencez le raisonnement en échangeant les rôles : cette fois, c'est le gain d'Alice vu ligne par ligne qui doit être le même.
5. Comparez le résultat de la question 3 avec ce qu'Alice obtenait au mieux à la question 1.

## Solution

### Question 1 : jouer toujours pareil ne marche pas

Bob observe Alice sur plusieurs parties. Si elle joue toujours le même jeton, il finit par le savoir.

- Si Alice joue toujours **rouge**, Bob joue bleu : Alice perd $2$ € à chaque partie.
- Si Alice joue toujours **bleu**, Bob joue rouge : Alice perd $1$ € à chaque partie.

Dans les deux cas Alice perd. Le moins mauvais choix fixe est « toujours bleu », qui lui garantit de ne pas perdre plus de $1$ € par partie.

*(Du côté de Bob : s'il joue toujours bleu, Alice répondra bleu et le gain sera $0$. Bob peut donc, lui, se garantir de ne rien perdre. On voit déjà que la vérité se situe entre $-1$ € et $0$ € pour Alice.)*

### Question 2 : Alice tire son jeton au sort

Alice joue rouge avec la probabilité $p$, bleu avec la probabilité $1 - p$, où $0 \leqslant p \leqslant 1$. Notons $G$ son gain sur une partie.

**Si Bob joue rouge**, la première colonne du tableau s'applique : $G$ vaut $+3$ avec la probabilité $p$, et $-1$ avec la probabilité $1-p$. D'où
$$E_{\text{rouge}}(p) = 3p + (-1)(1-p) = 4p - 1.$$

**Si Bob joue bleu**, la seconde colonne s'applique : $G$ vaut $-2$ avec la probabilité $p$, et $0$ avec la probabilité $1-p$. D'où
$$E_{\text{bleu}}(p) = -2p + 0 \times (1-p) = -2p.$$

### Question 3 : le bon réglage pour Alice

La fonction $p \mapsto 4p - 1$ est croissante, la fonction $p \mapsto -2p$ est décroissante. Alice est prise entre deux feux : plus elle joue rouge, mieux elle s'en sort si Bob joue rouge, et plus mal si Bob joue bleu. Bob choisira évidemment la colonne qui lui est favorable, c'est-à-dire celle qui donne à Alice le plus petit des deux nombres.

Alice a donc intérêt à égaliser les deux :
$$4p - 1 = -2p \iff 6p = 1 \iff p = \frac16.$$

La valeur commune est alors
$$E = -2 \times \frac16 = -\frac13.$$

Avec $p = \frac16$, le gain moyen d'Alice vaut $-\frac13$ € **quoi que fasse Bob** : les deux colonnes donnent le même résultat. Bob a beau deviner, il ne peut plus rien y changer. Et si Bob mélange les deux colonnes, c'est encore $-\frac13$, puisque c'est une moyenne de deux nombres tous deux égaux à $-\frac13$.

Alice perd donc, en moyenne, $\frac13$ € par partie. C'est mieux que le $1$ € qu'elle perdait avec un jeton fixe.

### Question 4 : le bon réglage pour Bob

Bob joue rouge avec la probabilité $q$, bleu avec la probabilité $1-q$. Calculons le gain moyen d'Alice ligne par ligne.

**Si Alice joue rouge** (première ligne) :
$$3q + (-2)(1-q) = 5q - 2.$$
**Si Alice joue bleu** (seconde ligne) :
$$(-1)q + 0 \times (1-q) = -q.$$

Bob veut que ces deux nombres soient égaux, pour qu'Alice ne puisse tirer parti d'aucune ligne :
$$5q - 2 = -q \iff 6q = 2 \iff q = \frac13,$$
et la valeur commune est $-\frac13$.

Les deux réglages se répondent : Alice ne peut pas espérer mieux que $-\frac13$, Bob ne peut pas espérer mieux que $+\frac13$. Ce nombre $-\frac13$ est la **valeur du jeu**.

### Question 5 : conclusion

Le jeu n'est pas équitable : il favorise Bob. Si les deux joueurs jouent au mieux, Alice perd en moyenne $\frac13$ € par partie, soit environ $33$ centimes.

Le $+3$ € du tableau, bien visible, est un leurre : Alice ne peut aller le chercher qu'en jouant rouge, ce que Bob punit d'un $-2$ €. Pour tenir Bob en respect, elle doit jouer rouge **une fois sur six seulement** — juste assez pour qu'il ne puisse pas se permettre de jouer bleu systématiquement.

## Going further

1. Vérifier qu'avec $p = \frac16$ et $q = \frac13$, aucun des deux joueurs n'a intérêt à modifier seul sa probabilité. (On dit que l'on a un **équilibre de Nash**.)
2. Que devient la valeur du jeu si l'on remplace le $+3$ € par $+9$ € ? Alice gagne-t-elle enfin ?
3. Écrire le tableau de pierre-feuille-ciseaux et trouver les probabilités optimales. Quelle est la valeur de ce jeu ?
4. Un tableau où un joueur a une ligne meilleure que l'autre quel que soit le choix de l'adversaire se traite sans probabilités. Construire un tel exemple et expliquer pourquoi le raisonnement ci-dessus ne s'applique plus.
