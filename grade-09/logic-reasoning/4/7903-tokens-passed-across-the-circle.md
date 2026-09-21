---
id: "7903"
title: "Des jetons qui sautent par-dessus le voisin"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [invariant, parite, cercle, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 6 (énoncé p. 21, solution p. 24). La réponse imprimée en tête de la solution, 2008, est une coquille : le texte de la solution conclut bien 1008, qui est la bonne réponse."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

$n$ personnes sont assises en cercle. Au départ, l'une d'elles a $n$ jetons et toutes les autres n'en ont aucun.

À chaque étape, une personne qui possède au moins un jeton peut le donner **au voisin de l'un de ses voisins**.

On aimerait qu'au bout d'un certain nombre d'étapes, chaque personne ait exactement $1$ jeton.

Pour combien de valeurs de $n$ avec $1 \le n \le 2016$ est-ce possible ?

## Hints

1. « Le voisin de l'un de mes voisins » : qui est-ce, exactement ? Fais un dessin avec $7$ personnes et regarde où un jeton peut aller en une étape.
2. Un jeton avance donc de deux places, dans un sens ou dans l'autre. Numérote les personnes de $1$ à $n$ et regarde les numéros que le jeton peut atteindre.
3. Sépare le cas $n$ pair du cas $n$ impair. Dans un des deux cas, colorie une personne sur deux.
4. Dans l'autre cas, montre qu'un jeton parti de la personne $1$ peut rejoindre n'importe qui, en faisant plusieurs fois le tour si nécessaire.

## Solution

**La réponse : c'est possible pour $\boxed{1008}$ valeurs de $n$, à savoir toutes les valeurs impaires.**

**Étape 1 : traduire la règle.**

Numérotons les personnes de $1$ à $n$ dans le sens des aiguilles d'une montre. Les voisins de la personne $k$ sont $k-1$ et $k+1$. Les voisins de $k+1$ sont $k$ et $k+2$ ; les voisins de $k-1$ sont $k-2$ et $k$.

Donner un jeton au voisin d'un de ses voisins, c'est donc le donner à la personne $k+2$ ou à la personne $k-2$ (ou bien à soi-même, ce qui ne change rien et n'a aucun intérêt). Autrement dit :

> **un jeton avance de deux places, dans un sens ou dans l'autre.**

Tous les numéros sont comptés sur le cercle : après $n$ vient $1$.

**Étape 2 : si $n$ est pair, c'est impossible.**

Supposons $n$ pair et colorions en blanc les personnes de numéro impair, en noir celles de numéro pair. Deux personnes distantes de deux places ont des numéros de même parité — c'est ici qu'on se sert de ce que $n$ est pair, car en passant de $n$ à $1$ on saute sur $2$, qui est bien pair.

Donc un jeton ne change jamais de couleur. Tous les jetons partent de la même personne, donc ils restent tous de la couleur de cette personne. Les $n/2$ personnes de l'autre couleur n'auront jamais aucun jeton, alors qu'il en faudrait un chacune.

C'est donc impossible.

**Étape 3 : si $n$ est impair, c'est possible.**

Supposons $n$ impair et disons que la personne $1$ a les $n$ jetons. Partons d'elle et avançons de deux en deux :

$$1, \ 3, \ 5, \ \ldots, \ n .$$

Nous avons atteint toutes les personnes de numéro impair. Le pas suivant nous envoie de $n$ à $2$ (puisque $n + 2$ vaut $2$ une fois le tour bouclé), et nous continuons :

$$2, \ 4, \ 6, \ \ldots, \ n-1 .$$

En $n$ pas de deux places, on a donc visité tout le monde. Un jeton parti de la personne $1$ peut ainsi rejoindre n'importe quelle personne : il suffit de le faire avancer de deux en deux le long de ce parcours.

La personne $1$ garde donc un jeton pour elle et envoie les $n-1$ autres, un par un, chacun vers une personne différente. À la fin, tout le monde a exactement un jeton.

*Exemple avec $n = 5$ :* le parcours est $1, 3, 5, 2, 4$. On envoie un jeton en $3$ (un pas), un en $5$ (deux pas), un en $2$ (trois pas), un en $4$ (quatre pas), et la personne $1$ garde le dernier.

**Étape 4 : on compte.**

C'est donc possible exactement pour les $n$ impairs. Entre $1$ et $2016$, les nombres impairs sont $1, 3, 5, \ldots, 2015$ : il y en a

$$\frac{2015 - 1}{2} + 1 = 1008 .$$

**Conclusion.** Il y a $\boxed{1008}$ valeurs possibles de $n$.
