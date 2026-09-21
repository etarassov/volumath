---
id: "7058"
title: "Un triangle dont l'aire est un nombre premier"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [formule de heron, nombres premiers, parite, diviseurs]
adapted_from: null
see_also: ["2213"]
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, « Expressions algébriques », factorisation d'expressions polynomiales, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Existe-t-il un triangle du plan dont les longueurs des trois côtés sont des nombres **entiers**
et dont l'aire est un nombre **premier** ?

On pourra utiliser la **formule de Héron** : un triangle de côtés $a$, $b$, $c$ a pour aire
$$S = \sqrt{s(s-a)(s-b)(s-c)}, \qquad \text{où } s = \frac{a+b+c}{2}
\text{ est le demi-périmètre.}$$

## Hints

1. Suppose qu'un tel triangle existe, avec $S = q$ premier, et écris ce que dit la formule de
   Héron.
2. Commence par la parité : que se passe-t-il si $a + b + c$ est impair ? Regarde
   $16S^2 = (a+b+c)(-a+b+c)(a-b+c)(a+b-c)$.
3. Une fois $a+b+c$ pair, pose $u = s - a$, $v = s - b$, $w = s - c$. Ce sont des entiers
   strictement positifs, et $q^2 = s\,u\,v\,w$.
4. Quelle relation simple relie $s$ à $u$, $v$ et $w$ ? Calcule $u + v + w$.
5. Un produit de quatre entiers strictement positifs vaut $q^2$ : quelles sont les valeurs
   possibles de chacun ?

## Solution

**La réponse est non : un tel triangle n'existe pas.**

Raisonnons par l'absurde. Supposons que le triangle de côtés entiers $a$, $b$, $c$ ait pour
aire un nombre premier $q$.

**Étape 1 : le périmètre est pair.**

Écrivons la formule de Héron en chassant les demis. Avec $s = \dfrac{a+b+c}{2}$ on a
$2s = a+b+c$, $2(s-a) = -a+b+c$, et de même pour les deux autres. En multipliant les quatre :
$$16 S^2 = (a+b+c)(-a+b+c)(a-b+c)(a+b-c) .$$

Notons $n = a+b+c$. Les quatre facteurs valent $n$, $n - 2a$, $n - 2b$, $n - 2c$ : ils ont
donc **tous la même parité que $n$**.

Si $n$ était impair, les quatre facteurs seraient impairs et leur produit aussi. Or ce produit
vaut $16S^2 = 16q^2$, qui est pair. Contradiction.

Donc $n = a + b + c$ est **pair**, et $s$ est un entier.

**Étape 2 : quatre entiers dont le produit est $q^2$.**

Posons
$$u = s - a, \qquad v = s - b, \qquad w = s - c .$$

Ce sont des entiers (car $s$ est entier), et ils sont **strictement positifs** : l'inégalité
triangulaire $b + c > a$ s'écrit exactement $2(s-a) > 0$.

La formule de Héron devient
$$q^2 = S^2 = s\,u\,v\,w .$$

Et il y a une relation supplémentaire, qui est le cœur du problème :
$$u + v + w = 3s - (a+b+c) = 3s - 2s = s .$$

Donc **$s = u + v + w$**.

**Étape 3 : passer en revue les possibilités.**

Les quatre entiers $s$, $u$, $v$, $w$ sont strictement positifs et leur produit vaut $q^2$,
avec $q$ premier. Chacun est donc un diviseur de $q^2$, c'est-à-dire $1$, $q$ ou $q^2$.

Examinons les valeurs possibles de $s$.

- **$s = q^2$.** Alors $uvw = 1$, donc $u = v = w = 1$, donc $s = u+v+w = 3$. Il faudrait
  $q^2 = 3$, ce qui est impossible ($3$ n'est pas un carré).
- **$s = q$.** Alors $uvw = q$, donc l'un des trois vaut $q$ et les deux autres valent $1$.
  D'où $s = u + v + w = q + 2$, alors que $s = q$. Impossible.
- **$s = 1$.** Alors $u + v + w = 1$ avec trois entiers $\geq 1$ : impossible, leur somme vaut
  au moins $3$.

Aucun cas ne survit.

**Conclusion.** Il n'existe **aucun** triangle à côtés entiers dont l'aire soit un nombre
premier. $\blacksquare$

## Going further

Le même raisonnement montre un peu plus. Si l'aire $S$ est un entier, alors $s\,u\,v\,w = S^2$
avec $s = u+v+w$. Cette contrainte est très rigide, et elle explique pourquoi les triangles à
côtés entiers et aire entière (on les appelle **triangles héroniens**) sont rares.

Les premiers sont le triangle $(3,4,5)$ d'aire $6$, le triangle $(5,5,6)$ d'aire $12$, le
triangle $(5,5,8)$ d'aire $12$ également, et le triangle $(5,12,13)$ d'aire $30$. Remarque que
toutes ces aires sont des multiples de $6$. Ce n'est pas un hasard : on peut montrer que l'aire
d'un triangle héronien est **toujours** divisible par $6$, ce qui redonne au passage le
résultat de l'exercice, puisqu'un multiple de $6$ n'est jamais premier.
