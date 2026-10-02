---
id: "13814"
title: "Cinq facteurs distincts dont le produit vaut 45"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [diviseurs, produit, entiers relatifs, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_lycee-bis.pdf, questionnaire lycéens, exercice 8 ; réponse dans 2018-06_coupe_printemps_2018_elim_lycee_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_lycee-bis.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_lycee-bis.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ et $e$ cinq entiers relatifs, deux à deux distincts, tels que

$$(6 - a)(6 - b)(6 - c)(6 - d)(6 - e) = 45.$$

Combien vaut $a + b + c + d + e$ ?

## Hints

1. Pose $u = 6 - a$, $v = 6 - b$, et ainsi de suite. Ce sont cinq entiers distincts dont le
   produit vaut $45$. Que peut-on dire de chacun d'eux ?
2. Chacun est un diviseur de $45$, positif ou négatif. Combien de fois au plus une même valeur
   absolue peut-elle apparaître parmi cinq entiers distincts ?
3. Montre qu'aucun facteur ne peut valoir $\pm 9$, $\pm 15$ ou $\pm 45$. Il ne reste alors que
   les valeurs absolues $1$, $3$ et $5$.

## Solution

**On change d'inconnues.** Posons $u_1 = 6 - a$, $u_2 = 6 - b$, $u_3 = 6 - c$, $u_4 = 6 - d$ et
$u_5 = 6 - e$. Comme $a, b, c, d, e$ sont distincts, les $u_i$ sont cinq entiers distincts, et
leur produit vaut $45$. On a

$$a + b + c + d + e = 30 - (u_1 + u_2 + u_3 + u_4 + u_5),$$

il suffit donc de trouver la somme des $u_i$.

**Les valeurs absolues possibles.** Chaque $u_i$ divise $45 = 3^2 \times 5$, donc sa valeur
absolue est l'un des nombres $1, 3, 5, 9, 15, 45$. Le produit des valeurs absolues vaut $45$.
Comme les $u_i$ sont distincts, une même valeur absolue apparaît au plus deux fois (une fois
positive, une fois négative).

**Aucun facteur n'est trop grand.** Supposons qu'un $u_i$ ait une valeur absolue au moins
égale à $9$. Les quatre autres ont alors un produit des valeurs absolues au plus égal à
$45 \div 9 = 5$. Or parmi ces quatre entiers distincts, au plus deux ont pour valeur absolue
$1$ ; les deux autres ont une valeur absolue au moins égale à $3$, et le produit vaut au moins
$3 \times 3 = 9 > 5$. C'est impossible.

**On trouve les facteurs.** Les cinq valeurs absolues sont donc prises parmi $1$, $3$ et $5$,
chacune au plus deux fois. Avec cinq facteurs, deux valeurs apparaissent deux fois et la
troisième une fois. Les produits possibles sont

$$1 \times 1 \times 3 \times 3 \times 5 = 45, \qquad 1 \times 1 \times 5 \times 5 \times 3 = 75, \qquad 3 \times 3 \times 5 \times 5 \times 1 = 225.$$

Seul le premier convient. Les $u_i$ sont donc $1$, $-1$, $3$, $-3$ et un cinquième facteur
égal à $5$ ou à $-5$. Le produit $1 \times (-1) \times 3 \times (-3) = 9$ est positif, donc le
cinquième facteur vaut $5$ pour que le produit total soit $45$.

**Conclusion.** On a $u_1 + u_2 + u_3 + u_4 + u_5 = 1 - 1 + 3 - 3 + 5 = 5$, donc

$$a + b + c + d + e = 30 - 5 = 25.$$

Par exemple, $a = 5$, $b = 7$, $c = 3$, $d = 9$, $e = 1$ conviennent, et leur somme vaut bien
$25$.

**La réponse est $25$.**
