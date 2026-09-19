---
id: "0205"
title: "Trente marches en descendant, soixante-dix en montant"
grade: 8
theme: algebra
difficulty: 4
duration_min: 25
tags: [equation, escalier, vitesse, modelisation, fractions]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 25, задача 2 (p. 61-62)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Pierre descend en courant un escalier mécanique du métro, qui descend lui aussi, et il compte $30$ marches.

Puis il remonte en courant ce même escalier, toujours en marche vers le bas, en posant les pieds au même rythme que lorsqu'il descendait. Cette fois il compte $70$ marches.

Combien de marches compterait Pierre s'il descendait cet escalier à l'arrêt ?

## Hints

1. Le nombre cherché est le vrai nombre de marches de l'escalier. Appelle-le $N$.
2. Pendant que Pierre fait un pas, l'escalier bouge un peu, lui aussi. Appelle $x$ le nombre de marches dont l'escalier avance pendant que Pierre fait un seul pas.
3. À la descente, l'escalier travaille pour Pierre : pendant ses $30$ pas, il a escamoté $30x$ marches que Pierre n'a pas eu à descendre.
4. À la montée, l'escalier travaille contre lui : pendant ses $70$ pas, il lui a repris $70x$ marches.
5. Écris $N$ de deux façons, puis résous l'équation obtenue. Attention, $x$ n'est pas un nombre entier.

## Solution

**L'idée.** On compte la longueur de l'escalier (son nombre de marches) de deux façons : une fois avec la descente, une fois avec la montée.

**Étape 1. Choisir l'inconnue.**

Soit $N$ le nombre de marches de l'escalier à l'arrêt. Soit $x$ le nombre de marches dont l'escalier avance pendant que Pierre fait **un seul pas**. Comme Pierre court au même rythme dans les deux sens, ce nombre $x$ est le même à la descente et à la montée.

**Étape 2. La descente.**

Pierre fait $30$ pas, donc il descend lui-même $30$ marches. Pendant ce temps, l'escalier a fait descendre $30x$ marches de plus : ces marches sont arrivées en bas toutes seules, Pierre n'a pas eu à marcher dessus. À eux deux ils ont parcouru tout l'escalier :

$$N = 30 + 30x.$$

**Étape 3. La montée.**

Pierre fait $70$ pas vers le haut, mais l'escalier le tire vers le bas. Pendant ces $70$ pas, l'escalier lui reprend $70x$ marches. Ce qu'il gagne vraiment, c'est la différence, et cette différence est la longueur de l'escalier :

$$N = 70 - 70x.$$

**Étape 4. Résoudre.**

Les deux expressions désignent le même escalier :

$$30 + 30x = 70 - 70x.$$

On regroupe les $x$ à gauche :

$$30x + 70x = 70 - 30,$$
$$100x = 40,$$
$$x = \frac{40}{100} = \frac{2}{5}.$$

Pendant un pas de Pierre, l'escalier avance donc de $\frac{2}{5}$ de marche. On en déduit

$$N = 30 + 30 \times \frac{2}{5} = 30 + 12 = 42.$$

**Vérification.** Avec la montée : $70 - 70 \times \frac{2}{5} = 70 - 28 = 42$. C'est bien le même nombre.

**Une remarque utile.** On trouve $x = \frac{2}{5}$, donc $x$ est plus petit que $1$ : à chaque pas, Pierre gagne plus de marches que l'escalier ne lui en reprend. C'est bien pour cela qu'il arrive à remonter. Si $x$ avait été plus grand que $1$, il n'aurait jamais atteint le haut.

**Conclusion.**

Sur cet escalier à l'arrêt, Pierre compterait $42$ marches.

## Going further

1. La réponse devait forcément être comprise entre $30$ et $70$. Pourquoi ?
2. Pierre pose les pieds au rythme de $2$ marches par seconde. Combien de temps dure sa descente ? Sa montée ? Et combien de temps met un voyageur qui reste immobile sur cet escalier ?
3. Sur un autre escalier mécanique, qui compte $60$ marches à l'arrêt, Pierre en compte $40$ en descendant. Combien en comptera-t-il en montant ?
