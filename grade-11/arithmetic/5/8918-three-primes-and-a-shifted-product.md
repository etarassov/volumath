---
id: "8918"
title: "(p − 5)(q − 21)(r − 26) = pqr"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombres-premiers, divisibilite, parite, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe A"
  reference: "Poly-Valbonne-2026.pdf, chapitre III « Groupe A », entraînement de fin de parcours, exercice 3 (le corrigé imprimé contient deux coquilles de calcul, corrigées ici, mais ses réponses sont justes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Déterminer tous les triplets $(p, q, r)$ de nombres premiers **deux à deux distincts** tels que

$$(p-5)(q-21)(r-26) = pqr.$$

## Hints

1. Un seul nombre premier est pair. Que peut-on en déduire sur les parités de $p$, $q$, $r$, sachant qu'ils sont distincts ?
2. Si $p$ est impair, $p-5$ est pair. Si $q$ est impair, $q-21$ est pair. Dans tous les cas, que peut-on dire de la parité du membre de gauche ?
3. Le membre de droite est donc pair : l'un des trois nombres premiers vaut $2$. Cela fait trois cas à traiter.
4. Dans chaque cas, un facteur devient un nombre connu ($-3$, $-19$ ou $-24$). Servez-vous de ses diviseurs premiers.
5. Le cas $r = 2$ se règle par un simple comptage de facteurs $2$ des deux côtés.

## Solution

Les réponses sont $(p,q,r) = (2, 23, 3)$ et $(p,q,r) = (7, 2, 19)$.

### Étape 1 : l'un des trois vaut 2

Le seul nombre premier pair est $2$. Comme $p$, $q$, $r$ sont deux à deux distincts, **au plus un** d'entre eux vaut $2$ : au moins deux des trois sont impairs. En particulier, $p$ ou $q$ est impair.

- Si $p$ est impair, alors $p - 5$ est pair.
- Si $q$ est impair, alors $q - 21$ est pair.

Dans les deux cas, le membre de gauche est pair. Donc $pqr$ est pair, et comme $p$, $q$, $r$ sont premiers, l'un des trois vaut $2$.

### Étape 2 : le cas $p = 2$

L'équation devient $(2-5)(q-21)(r-26) = 2qr$, c'est-à-dire

$$-3\,(q-21)(r-26) = 2qr.$$

Le nombre $3$ divise le membre de gauche, donc il divise $2qr$, donc (comme $3$ est premier et ne divise pas $2$) il divise $q$ ou $r$. Ces nombres étant premiers, cela signifie $q = 3$ ou $r = 3$.

**Si $q = 3$** : alors $q - 21 = -18$ et l'équation devient

$$-3 \times (-18) \times (r-26) = 2 \times 3 \times r, \qquad \text{soit} \qquad 54\,(r-26) = 6r,$$

c'est-à-dire $9(r-26) = r$, donc $8r = 234$, donc $r = \tfrac{234}{8}$, qui n'est pas un entier. Pas de solution.

**Si $r = 3$** : alors $r - 26 = -23$ et l'équation devient

$$-3\,(q-21) \times (-23) = 2 \times q \times 3, \qquad \text{soit} \qquad 69\,(q-21) = 6q.$$

En divisant par $3$ : $23(q-21) = 2q$, donc $23q - 483 = 2q$, donc $21q = 483$ et $q = 23$. C'est bien un nombre premier, distinct de $2$ et de $3$.

On obtient le triplet $(2, 23, 3)$.

### Étape 3 : le cas $q = 2$

L'équation devient $(p-5)(2-21)(r-26) = 2pr$, c'est-à-dire

$$-19\,(p-5)(r-26) = 2pr.$$

Le nombre premier $19$ divise le membre de gauche, donc $2pr$, donc $p$ ou $r$ : d'où $p = 19$ ou $r = 19$.

**Si $p = 19$** : alors $p - 5 = 14$ et l'équation devient

$$14 \times (-19) \times (r-26) = 2 \times 19 \times r, \qquad \text{soit} \qquad -266\,(r-26) = 38r.$$

En divisant par $38$ : $-7(r-26) = r$, donc $182 = 8r$, donc $r = \tfrac{182}{8}$, qui n'est pas entier. Pas de solution.

**Si $r = 19$** : alors $r - 26 = -7$ et l'équation devient

$$(p-5) \times (-19) \times (-7) = 2 \times p \times 19, \qquad \text{soit} \qquad 133\,(p-5) = 38p.$$

En divisant par $19$ : $7(p-5) = 2p$, donc $7p - 35 = 2p$, donc $5p = 35$ et $p = 7$. C'est un nombre premier, distinct de $2$ et de $19$.

On obtient le triplet $(7, 2, 19)$.

### Étape 4 : le cas $r = 2$ est impossible

Si $r = 2$, alors $p$ et $q$ sont impairs, donc $p-5$ et $q-21$ sont pairs. Et $r - 26 = -24 = -8 \times 3$ est divisible par $8$. Le membre de gauche est donc divisible par

$$2 \times 2 \times 8 = 32.$$

Le membre de droite vaut $pq \times 2$ avec $p$ et $q$ impairs : il est divisible par $2$ mais pas par $4$. Il ne peut donc pas être divisible par $32$, sauf s'il est nul, ce qu'il n'est pas. Contradiction : pas de solution dans ce cas.

### Vérification

Il faut encore s'assurer que les deux triplets trouvés conviennent vraiment.

$$(2-5)(23-21)(3-26) = (-3) \times 2 \times (-23) = 138 = 2 \times 23 \times 3. \qquad \checkmark$$

$$(7-5)(2-21)(19-26) = 2 \times (-19) \times (-7) = 266 = 7 \times 2 \times 19. \qquad \checkmark$$

### Conclusion

$$\boxed{(p,q,r) = (2, 23, 3) \quad \text{ou} \quad (p,q,r) = (7, 2, 19).}$$

## Going further

1. Où l'hypothèse « deux à deux distincts » a-t-elle servi ? Que se passe-t-il si on l'enlève ?
2. Les trois nombres soustraits sont $5$, $21$ et $26$. Essayez de remplacer $26$ par $27$ : le cas $r = 2$ reste-t-il impossible ?
