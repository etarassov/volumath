---
id: "7140"
title: "Un produit qui ne descend jamais sous trente"
grade: 12
theme: algebra
difficulty: 3
duration_min: 35
tags: [inegalites, factorisation, cas d egalite, produit]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Vendredi : test final », avancés, exercice 2 (la solution imprimée écrit une fois $(b^2+3)$ pour $(b^3+2)$)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs tels que $abc = 1$.

Montrer que

$$(a^2 + 1)(b^3 + 2)(c^5 + 4) \geqslant 30 .$$

## Hints

1. Le nombre $30$ se factorise : $30 = 2 \times 3 \times 5$. Et l'hypothèse dit que
   $abc = 1$. Cela suggère de minorer chaque facteur séparément.
2. Cherche à montrer $a^2 + 1 \geqslant 2a$. C'est une identité remarquable déguisée.
3. Pour le deuxième facteur, écris $b^3 + 2 = b^3 + 1 + 1$ et essaie de montrer
   $b^3 + 2 \geqslant 3b$. Factorise $b^3 - 3b + 2$ : le nombre $1$ en est une racine, et même
   une racine double.
4. Pour le troisième, montre $c^5 + 4 \geqslant 5c$ par la même méthode : factorise
   $c^5 - 5c + 4$.

## Solution

L'idée est de minorer chacun des trois facteurs par un multiple de la variable qu'il
contient, puis d'utiliser $abc = 1$.

**Premier facteur : $a^2 + 1 \geqslant 2a$.**

En effet

$$a^2 + 1 - 2a = (a-1)^2 \geqslant 0 .$$

**Deuxième facteur : $b^3 + 2 \geqslant 3b$.**

Factorisons $b^3 - 3b + 2$. Le nombre $1$ en est racine ($1 - 3 + 2 = 0$), et en divisant on
trouve $b^3 - 3b + 2 = (b-1)(b^2 + b - 2)$. Le nombre $1$ est encore racine du second facteur,
d'où

$$b^3 - 3b + 2 = (b-1)^2 (b+2) .$$

*(Vérification : $(b^2 - 2b + 1)(b+2) = b^3 + 2b^2 - 2b^2 - 4b + b + 2 = b^3 - 3b + 2$.)*

Comme $b > 0$, on a $b + 2 > 0$ et $(b-1)^2 \geqslant 0$, donc $b^3 - 3b + 2 \geqslant 0$.

**Troisième facteur : $c^5 + 4 \geqslant 5c$.**

Factorisons $c^5 - 5c + 4$. Le nombre $1$ en est racine ($1 - 5 + 4 = 0$), et la division
donne $c^5 - 5c + 4 = (c-1)(c^4 + c^3 + c^2 + c - 4)$. Le nombre $1$ est encore racine du
second facteur ($1+1+1+1-4 = 0$), d'où

$$c^5 - 5c + 4 = (c-1)^2 \left(c^3 + 2c^2 + 3c + 4\right).$$

Comme $c > 0$, le facteur $c^3 + 2c^2 + 3c + 4$ est strictement positif, et
$(c-1)^2 \geqslant 0$. Donc $c^5 - 5c + 4 \geqslant 0$.

**On multiplie.** Les trois minorations

$$a^2 + 1 \geqslant 2a > 0, \qquad b^3 + 2 \geqslant 3b > 0, \qquad c^5 + 4 \geqslant 5c > 0$$

portent sur des quantités strictement positives : on peut donc les multiplier membre à
membre :

$$(a^2+1)(b^3+2)(c^5+4) \geqslant 2a \times 3b \times 5c = 30\,abc .$$

Comme $abc = 1$, il vient

$$(a^2+1)(b^3+2)(c^5+4) \geqslant 30 .$$

**Cas d'égalité.** Les trois minorations sont des égalités exactement lorsque $a = b = c = 1$,
ce qui est compatible avec $abc = 1$. La borne $30$ est donc atteinte : c'est le minimum.

## Going further

Les trois inégalités utilisées sont toutes des cas particuliers de la même inégalité, dite
**arithmético-géométrique** : la moyenne de $k$ nombres positifs est toujours au moins égale
à la racine $k$-ième de leur produit. Appliquée à $c^5, 1, 1, 1, 1$ elle donne directement

$$\frac{c^5 + 1 + 1 + 1 + 1}{5} \geqslant \sqrt[5]{c^5} = c ,$$

c'est-à-dire $c^5 + 4 \geqslant 5c$, et de même pour les deux autres.

On a préféré ici la voie de la factorisation, qui ne demande aucun théorème extérieur et
donne en prime le cas d'égalité sans effort.

Une question pour continuer : quel est le minimum de $(a^4+3)(b^6+5)(c^2+1)$ sous la même
contrainte $abc = 1$ ?
