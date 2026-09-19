---
id: "2613"
title: "Pour quelle valeur le système n'a-t-il aucune solution ?"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [systeme, parametre, equation, symetrie]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 1 (AMC 1973, problème 10 ; réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

Soit $n$ un nombre réel. On considère le système d'inconnues $x$, $y$, $z$ :

$$n x + y = 1, \qquad n y + z = 1, \qquad x + n z = 1 .$$

Pour quelle valeur de $n$ ce système n'a-t-il **aucune** solution ?

Justifier que pour toutes les autres valeurs de $n$, le système en a au moins une.

## Hints

1. Ne te lance pas dans une élimination longue. Regarde d'abord la forme du système : les trois équations se déduisent l'une de l'autre en faisant tourner les lettres $x \to y \to z \to x$.
2. Additionne les trois équations membre à membre. Que peux-tu mettre en facteur à gauche ?
3. Tu obtiens une égalité de la forme $(n+1)(x+y+z) = 3$. Que se passe-t-il si $n = -1$ ?
4. Pour les autres valeurs de $n$, la symétrie du système suggère de chercher une solution où $x$, $y$ et $z$ sont tous égaux.

## Solution

**L'idée : additionner les trois équations.**

Le système est **symétrique** : si l'on remplace $x$ par $y$, $y$ par $z$ et $z$ par $x$, les trois équations se permutent entre elles. Cela invite à les additionner.

Additionnons membre à membre :
$$(nx + y) + (ny + z) + (x + nz) = 1 + 1 + 1 .$$

À gauche, regroupons par inconnue :
$$(nx + x) + (y + ny) + (z + nz) = (n+1)x + (n+1)y + (n+1)z = (n+1)(x+y+z).$$

D'où, pour toute solution éventuelle,
$$(n+1)\,(x + y + z) = 3. \qquad (\star)$$

**Le cas $n = -1$ : pas de solution.**

Si $n = -1$, le membre de gauche de $(\star)$ vaut $0 \times (x+y+z) = 0$, et l'égalité devient
$$0 = 3,$$
ce qui est faux. Il ne peut donc exister aucun triplet $(x, y, z)$ vérifiant les trois équations.

**Pour $n = -1$, le système n'a aucune solution.**

**Les autres cas : il y a toujours une solution.**

Supposons maintenant $n \neq -1$, de sorte que $n + 1 \neq 0$. La symétrie du système suggère d'essayer
$$x = y = z = t .$$

Les trois équations deviennent alors toutes les trois la même :
$$n t + t = 1, \qquad \text{c'est-à-dire} \qquad (n+1)\,t = 1 .$$

Comme $n + 1 \neq 0$, on peut poser
$$t = \frac{1}{n+1},$$
et le triplet $\left(\dfrac{1}{n+1},\ \dfrac{1}{n+1},\ \dfrac{1}{n+1}\right)$ vérifie bien les trois équations.

**Pour tout $n \neq -1$, le système admet donc au moins une solution.**

**Conclusion.**

$$\boxed{\text{Le système n'a aucune solution si et seulement si } n = -1.}$$

*Exemple de vérification.* Pour $n = -1$ les équations s'écrivent $-x + y = 1$, $-y + z = 1$ et $x - z = 1$. En additionnant les deux premières on obtient $z - x = 2$, alors que la troisième donne $z - x = -1$. Les deux sont incompatibles.

## Going further

Pour $n \neq -1$ on peut montrer que la solution trouvée est en fait la seule. En soustrayant deux équations bien choisies, on arrive à $x = y = z$ dès que $n^3 \neq -1$, c'est-à-dire dès que $n \neq -1$ chez les réels. Chez les complexes il y aurait deux autres valeurs à examiner, les deux autres racines cubiques de $-1$.
