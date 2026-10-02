---
id: "12437"
title: "Les coloriages harmonieux des nombres rationnels"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [rationnels, coloriage, somme, raisonnement-par-l-absurde, de-proche-en-proche]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 26 février 2019"
  reference: "2019-03_Test-26-02.pdf, exercice 2 ; corrigé 2019-03_Test-26-02-Corrige.pdf (« x et y éventuellement égaux » ajouté à l'énoncé, comme le suppose le corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/03/Test-26-02.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-03_Test-26-02.pdf"
---

## Statement

On colorie chaque nombre rationnel, soit en rouge, soit en bleu. On dit que le coloriage est
**harmonieux** si, pour tous rationnels $x$ et $y$ de la même couleur (éventuellement égaux), le
rationnel $x + y$ est encore de cette couleur.

Trouver tous les coloriages harmonieux.

## Hints

1. Commence par chercher des exemples. Il y en a de très simples.
2. Fixe un coloriage harmonieux. Si $x$ est bleu, montre que $2x$, $3x$, $4x$, … sont bleus.
3. Si $x$ est bleu et si $q$ est un entier strictement positif, quelle est la couleur de
   $\dfrac{x}{q}$ ? Raisonne par l'absurde en utilisant l'indice précédent.
4. Déduis-en que tous les rationnels strictement positifs ont la couleur de $1$, et que tous les
   rationnels strictement négatifs ont la couleur de $-1$. Il ne reste plus qu'à regarder $0$.

## Solution

### La réponse

Il y a exactement **six** coloriages harmonieux, de trois sortes (dans chaque sorte, on peut
échanger les deux couleurs) :

- tous les rationnels ont la même couleur ;
- les rationnels positifs ou nuls ont une couleur, et les rationnels strictement négatifs ont
  l'autre ;
- les rationnels strictement positifs ont une couleur, et les rationnels négatifs ou nuls ont
  l'autre.

**Ces coloriages sont harmonieux.** C'est évident pour le premier. Pour le deuxième, la somme de
deux rationnels positifs ou nuls est positive ou nulle, et la somme de deux rationnels strictement
négatifs est strictement négative. Pour le troisième, la somme de deux rationnels strictement
positifs est strictement positive, et la somme de deux rationnels négatifs ou nuls est négative ou
nulle.

Montrons maintenant qu'il n'y en a pas d'autres. On fixe un coloriage harmonieux.

### Étape 1 : les multiples entiers

Soit $x$ un rationnel. Alors $2x = x + x$ a la même couleur que $x$, puis $3x = 2x + x$ aussi, puis
$4x = 3x + x$, et ainsi de suite. De proche en proche, **pour tout entier $n \geqslant 1$, le
rationnel $nx$ a la même couleur que $x$.**

### Étape 2 : les fractions

Soient $x$ un rationnel et $q \geqslant 1$ un entier. Supposons que $\dfrac{x}{q}$ n'ait pas la même
couleur que $x$. D'après l'étape 1 appliquée à $\dfrac{x}{q}$, le rationnel
$q \times \dfrac{x}{q} = x$ a la même couleur que $\dfrac{x}{q}$, ce qui est absurde. Donc
**$\dfrac{x}{q}$ a la même couleur que $x$.**

### Étape 3 : les positifs, puis les négatifs

Soit $r = \dfrac{p}{q}$ un rationnel strictement positif, avec $p$ et $q$ des entiers
strictement positifs. D'après l'étape 2, $\dfrac{1}{q}$ a la couleur de $1$, puis d'après
l'étape 1, $p \times \dfrac{1}{q} = r$ a aussi la couleur de $1$. Ainsi, **tous les rationnels
strictement positifs ont la couleur de $1$.**

De même, $-r = p \times \dfrac{-1}{q}$ a la couleur de $\dfrac{-1}{q}$, qui a la couleur de $-1$.
Ainsi, **tous les rationnels strictement négatifs ont la couleur de $-1$.**

### Étape 4 : le cas de $0$

- Si $1$ et $-1$ ont la même couleur, alors $0 = 1 + (-1)$ a aussi cette couleur, puisque le
  coloriage est harmonieux. Tous les rationnels ont donc la même couleur : c'est un coloriage de
  la première sorte.
- Si $1$ et $-1$ n'ont pas la même couleur, les strictement positifs ont une couleur et les
  strictement négatifs l'autre. Le nombre $0$ a l'une des deux couleurs : selon le cas, on obtient
  un coloriage de la deuxième ou de la troisième sorte.

### Conclusion

Les coloriages harmonieux sont **exactement les six coloriages décrits au début** : un coloriage
d'une seule couleur, ou bien les positifs d'une couleur et les négatifs de l'autre, le nombre $0$
étant d'un côté ou de l'autre.

## Going further

Que deviennent les réponses si l'on remplace les rationnels par les entiers relatifs ? Et si l'on
utilise trois couleurs au lieu de deux ?
