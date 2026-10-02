---
id: "10806"
title: "Un seul coloriage possible des rationnels"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [rationnels, fractions, recurrence, unicite, construction, algorithme-d-euclide]
adapted_from: null
see_also: ["10802"]
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Olympiques, exercice 7 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf (la preuve d'existence, seulement esquissée dans le corrigé, est rédigée ici en entier)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Démontrer qu'il existe **une et une seule** façon de colorier chaque nombre rationnel strictement positif, soit en rouge, soit en bleu, de sorte que :

- pour tout $x$, les nombres $x$ et $x + 1$ sont de couleurs différentes ;
- pour tout $x$, les nombres $x$ et $\dfrac{1}{x}$ sont de la même couleur ;
- le nombre $1$ est rouge.

## Hints

1. Écris chaque rationnel $x > 0$ sous forme de fraction irréductible $\dfrac{a}{b}$, et appelle **taille** de $x$ l'entier $a + b$. Seul le nombre $1$ a la taille $2$.
2. Si $a > b$, alors $\dfrac{a}{b} = \dfrac{a - b}{b} + 1$. Quelle est la taille de $\dfrac{a-b}{b}$ ? Et si $a < b$, que permet la deuxième règle ?
3. Pour l'unicité : montre par récurrence forte sur la taille que la couleur de chaque fraction est imposée par les règles.
4. Pour l'existence : transforme le raisonnement précédent en recette, qui définit la couleur d'une fraction à partir de celle d'une fraction plus petite. Il reste ensuite à vérifier que ce coloriage respecte bien les deux premières règles.

## Solution

Tout rationnel $x > 0$ s'écrit d'une seule façon comme fraction irréductible $x = \dfrac{a}{b}$, avec $a$ et $b$ entiers strictement positifs sans diviseur commun autre que $1$. On appelle **taille** de $x$ l'entier $a + b$.

**Un fait utile.** Si $\dfrac{a}{b}$ est irréductible, alors $\dfrac{a-b}{b}$ (quand $a > b$) et $\dfrac{a+b}{b}$ sont encore irréductibles. En effet, un entier qui divise $b$ et $a - b$ divise aussi leur somme $a$, donc il vaut $1$. Même raisonnement pour $a + b$ et $b$.

Remarquons aussi que si $\dfrac{a}{b} \neq 1$, alors $a \neq b$ (sinon la fraction irréductible serait $\dfrac{1}{1}$), donc la taille est au moins $3$.

### Unicité

Supposons qu'on ait deux coloriages $C$ et $C'$ qui respectent les trois règles. Montrons par récurrence forte sur la taille $s$ que $C$ et $C'$ donnent la même couleur à toute fraction de taille $s$.

- **Taille 2.** La seule fraction est $1$, rouge pour $C$ comme pour $C'$.
- **Hérédité.** Soit $s \geqslant 3$. On suppose que $C$ et $C'$ coïncident sur toutes les fractions de taille plus petite que $s$. Soit $\dfrac{a}{b}$ irréductible de taille $a + b = s$. On a $a \neq b$.
  - *Si $a > b$* : on écrit $\dfrac{a}{b} = \dfrac{a-b}{b} + 1$. La fraction $\dfrac{a-b}{b}$ est irréductible et de taille $a < s$, donc $C$ et $C'$ lui donnent la même couleur. Par la première règle, $\dfrac{a}{b}$ a la couleur opposée, pour $C$ comme pour $C'$ : les deux coloriages coïncident sur $\dfrac{a}{b}$.
  - *Si $a < b$* : par la deuxième règle, $\dfrac{a}{b}$ a la même couleur que $\dfrac{b}{a}$, qui a la même taille $s$ et relève du cas précédent. Donc $C$ et $C'$ coïncident encore.

Par récurrence, $C$ et $C'$ coïncident partout : **il y a au plus un coloriage**.

### Existence

On **construit** un coloriage, taille par taille, en suivant exactement le raisonnement de l'unicité :

- le nombre $1$ (taille $2$) est rouge ;
- si $a > b$, on donne à $\dfrac{a}{b}$ la couleur opposée à celle de $\dfrac{a-b}{b}$ ;
- si $a < b$, on donne à $\dfrac{a}{b}$ la couleur opposée à celle de $\dfrac{b-a}{a}$.

Dans les deux derniers cas, la fraction utilisée est de taille plus petite ($a$, ou $b$, au lieu de $a + b$) : sa couleur a déjà été fixée. Toutes les fractions reçoivent donc une couleur, et une seule.

Vérifions les trois règles.

**Troisième règle.** Le nombre $1$ est rouge par construction.

**Deuxième règle : $x$ et $\dfrac{1}{x}$.** Si $x = 1$, il n'y a rien à vérifier. Sinon $x = \dfrac{a}{b}$ avec, par exemple, $a > b$ (l'autre cas est symétrique). La recette donne à $\dfrac{a}{b}$ la couleur opposée à celle de $\dfrac{a-b}{b}$. Pour $\dfrac{1}{x} = \dfrac{b}{a}$, le numérateur $b$ est plus petit que le dénominateur $a$ : la recette (troisième ligne) lui donne la couleur opposée à celle de $\dfrac{a-b}{b}$. C'est la même couleur.

**Première règle : $x$ et $x + 1$.** Soit $x = \dfrac{a}{b}$ irréductible. Alors $x + 1 = \dfrac{a+b}{b}$, qui est irréductible, avec un numérateur $a + b$ plus grand que le dénominateur $b$. La recette (deuxième ligne) lui donne la couleur opposée à celle de
$$\frac{(a + b) - b}{b} = \frac{a}{b} = x .$$
Donc $x$ et $x + 1$ ont des couleurs différentes.

### Conclusion

Le coloriage construit respecte les trois règles, et c'est le seul possible : **il existe un et un seul coloriage convenable.**

*Exemple.* $\dfrac{2}{3}$ a la couleur opposée de $\dfrac{1}{2}$, qui a la couleur opposée de $\dfrac{1}{1}$. Donc $\dfrac{1}{2}$ est bleu et $\dfrac{2}{3}$ est rouge.

## Going further

1. On effectue l'algorithme d'Euclide sur $a$ et $b$ et on additionne tous les quotients obtenus. Montrer que $\dfrac{a}{b}$ est rouge si cette somme est impaire, et bleue si elle est paire. *Par exemple, pour $\dfrac{2}{3}$ : $2 = 0 \times 3 + 2$, puis $3 = 1 \times 2 + 1$, puis $2 = 2 \times 1 + 0$. La somme des quotients vaut $0 + 1 + 2 = 3$, impaire : rouge.*
2. La version plus simple de l'exercice 10802 demande seulement la couleur de $\dfrac{2012}{2013}$, en admettant que le coloriage existe.
