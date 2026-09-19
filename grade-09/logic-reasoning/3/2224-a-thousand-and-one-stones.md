---
id: "2224"
title: "Mille et un cailloux"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, divisibilite, raisonnement, jeu]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Invariants II"
  reference: "Handout-623-735.pdf, exercice 10 (réponses dans Handout-624-735.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-623-735.pdf"
---

## Statement

Sur une table se trouve un seul tas de $1001$ cailloux.

On a le droit de répéter autant de fois qu'on veut l'opération suivante : choisir un tas contenant plus d'un caillou, **jeter un caillou** de ce tas, puis **partager** le reste de ce tas en deux tas plus petits, non vides (pas forcément égaux).

Peut-on arriver à une situation où tous les tas posés sur la table contiennent exactement $3$ cailloux ?

## Hints

1. Fais l'expérience en petit : pars de $10$ cailloux et essaie d'arriver à des tas de $3$. Note à chaque étape le nombre de tas et le nombre de cailloux.
2. Une opération fait varier deux nombres à la fois : le nombre de tas et le nombre de cailloux. Comment varie chacun des deux ?
3. Cherche une quantité construite à partir de ces deux nombres et qui, elle, ne change jamais.
4. Une fois cette quantité trouvée, calcule sa valeur au départ, puis sa valeur dans la situation d'arrivée souhaitée. Compare.

## Solution

**Ce que fait une opération.**

Regardons ce qui change quand on effectue l'opération une fois.

- *Le nombre de cailloux.* On en jette exactement un, et le partage n'en fait ni apparaître ni disparaître. Le nombre de cailloux **diminue de $1$**.
- *Le nombre de tas.* Le tas choisi disparaît et deux nouveaux tas apparaissent à sa place. Le nombre de tas **augmente de $1$**.

**L'invariant.**

Notons $c$ le nombre de cailloux présents sur la table et $t$ le nombre de tas. À chaque opération, $c$ perd $1$ et $t$ gagne $1$. Leur **somme** ne bouge donc pas :

$$S = c + t \quad \text{ne change jamais.}$$

**Sa valeur au départ.**

Au départ il y a un seul tas de $1001$ cailloux, donc $c = 1001$ et $t = 1$ :

$$S = 1001 + 1 = 1002 .$$

Quoi qu'on fasse, et aussi longtemps qu'on joue, on aura toujours $c + t = 1002$.

**Ce que vaudrait $S$ à l'arrivée.**

Supposons qu'on soit arrivé à une situation où tous les tas contiennent exactement $3$ cailloux. Notons $h$ le nombre de tas à ce moment-là. Alors

$$t = h \qquad \text{et} \qquad c = 3h,$$

donc

$$S = c + t = 3h + h = 4h .$$

**La contradiction.**

Il faudrait donc $4h = 1002$, c'est-à-dire

$$h = \frac{1002}{4} = \text{250,5}.$$

Ce n'est pas un nombre entier, alors qu'un nombre de tas est forcément un entier. C'est impossible.

Autrement dit : à l'arrivée, $S$ serait un multiple de $4$. Or $S$ vaut $1002$, et $1002 = 4 \times 250 + 2$ n'est pas un multiple de $4$.

**Conclusion.** Non, on ne peut jamais arriver à une situation où tous les tas contiennent exactement $3$ cailloux.

**Ce qu'il faut retenir.** Chacune des deux quantités $c$ et $t$ change à chaque coup, et il serait très difficile de les suivre séparément. Mais leur somme, elle, est figée : c'est la seule chose à regarder. Trouver la bonne combinaison qui ne bouge pas est tout l'art de la méthode des invariants.

## Going further

1. En partant de $1001$ cailloux, peut-on arriver à des tas contenant tous exactement $2$ cailloux ? et tous exactement $4$ cailloux ?
2. Pour quels nombres de cailloux de départ peut-on arriver à des tas de $3$ ?
3. En partant de $1001$ cailloux, quel est le nombre maximal d'opérations que l'on peut effectuer ?
