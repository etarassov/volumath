---
id: "7062"
title: "Un système qui tourne en rond"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [systeme-cyclique, monotonie, principe-extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours et exercices de l'après-midi (Pierre Bornsztein), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soient $x$, $y$, $z$ des réels vérifiant
$$x^3 = 2y - 1, \qquad y^3 = 2z - 1, \qquad z^3 = 2x - 1 .$$

Montrer que $x = y = z$.

## Hints

1. Ne cherche pas à résoudre le système. Cherche seulement à comparer $x$, $y$ et $z$.
2. Le système est **cyclique** : $x$ agit sur $y$, $y$ sur $z$, $z$ sur $x$, toujours de la
   même façon. Tu peux donc supposer que $x$ est le plus grand des trois.
3. Soustrais deux équations. Par exemple, $x^3 - y^3 = 2(y - z)$.
4. La fonction $t \mapsto t^3$ est strictement croissante : $x \geq y$ équivaut à
   $x^3 \geq y^3$.
5. Enchaîne les inégalités et regarde où tu arrives.

## Solution

**Utiliser la symétrie cyclique.**

Le système est inchangé si on remplace $(x ; y ; z)$ par $(y ; z ; x)$, puis par
$(z ; x ; y)$. On peut donc supposer, sans perdre de généralité, que **$x$ est le plus grand
des trois** :
$$x \geq y \qquad \text{et} \qquad x \geq z .$$

**Une chaîne d'inégalités.**

Soustrayons les deux premières équations :
$$x^3 - y^3 = (2y - 1) - (2z - 1) = 2(y - z) .$$

Comme $x \geq y$ et que la fonction cube est croissante, $x^3 \geq y^3$, donc
$$2(y - z) \geq 0, \qquad \text{c'est-à-dire} \qquad y \geq z .$$

Soustrayons maintenant les deuxième et troisième équations :
$$y^3 - z^3 = (2z - 1) - (2x - 1) = 2(z - x) .$$

Comme on vient d'obtenir $y \geq z$, on a $y^3 \geq z^3$, donc
$$2(z - x) \geq 0, \qquad \text{c'est-à-dire} \qquad z \geq x .$$

**La conclusion.**

Rassemblons :
$$x \geq y \geq z \geq x .$$

Une chaîne d'inégalités qui revient à son point de départ force toutes les inégalités à être
des égalités. Donc
$$x = y = z . \qquad \blacksquare$$

## Going further

L'exercice ne demandait pas de trouver les valeurs, mais on peut aller au bout. Avec
$x = y = z$, la première équation devient
$$x^3 = 2x - 1, \qquad \text{soit} \qquad x^3 - 2x + 1 = 0 .$$

On voit que $x = 1$ est racine, d'où la factorisation
$$x^3 - 2x + 1 = (x - 1)(x^2 + x - 1) .$$

Le second facteur s'annule pour $x = \dfrac{-1 \pm \sqrt5}{2}$. Il y a donc exactement **trois**
triplets solutions, tous de la forme $(x ; x ; x)$ :
$$x = 1, \qquad x = \frac{-1 + \sqrt5}{2}, \qquad x = \frac{-1 - \sqrt5}{2} .$$

Remarque au passage que $\dfrac{-1+\sqrt5}{2}$ est l'inverse du nombre d'or.

L'argument, lui, vaut pour n'importe quel système cyclique
$$x_2 = f(x_1), \quad x_3 = f(x_2), \quad \ldots, \quad x_1 = f(x_n)$$
où $f$ est une fonction **croissante**. Tous les $x_i$ sont alors égaux. Ici
$f(t) = \dfrac{t^3+1}{2}$, qui est bien croissante.
