---
id: "3221"
title: "Un polynôme de degré six à racines entières"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [polynome, racines, somme-et-produit, developpement, puissances-de-deux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Number theory review"
  reference: "Handout-4813-5008.pdf, exercice 10, d'après AMC 12A 2021, problème 12 (réponse dans Handout-4815-5008.pdf, où le signe de B est erroné)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4813-5008.pdf"
---

## Statement

Toutes les racines du polynôme

$$P(z) = z^6 - 10 z^5 + A z^4 + B z^3 + C z^2 + D z + 16$$

sont des entiers strictement positifs, éventuellement répétés.

Déterminer la valeur de $B$.

## Hints

1. Si $r_1, \ldots, r_6$ sont les six racines (répétitions comprises), alors $P(z) = (z-r_1)(z-r_2)\cdots(z-r_6)$. Développe et regarde le coefficient de $z^5$, puis le terme constant.
2. Tu obtiens la somme des racines et leur produit. Combien valent-ils ?
3. Le produit vaut $16 = 2^4$. Que peut-on dire de chaque racine, sachant qu'elle est un entier positif qui divise $16$ ?
4. Chaque racine est donc une puissance de $2$. Les six exposants sont positifs ou nuls et leur somme vaut $4$. Dresse la liste des possibilités et garde celle dont la somme des racines fait $10$.
5. Une fois les racines connues, il ne reste qu'à développer et à relever le coefficient de $z^3$.

## Solution

**Ce que disent les coefficients extrêmes.**

Notons $r_1, \ldots, r_6$ les racines, comptées avec leur multiplicité. Comme $P$ est unitaire de degré $6$,

$$P(z) = (z - r_1)(z - r_2)\cdots(z - r_6) .$$

En développant :

- le coefficient de $z^5$ vaut $-(r_1 + \cdots + r_6)$, et l'énoncé donne $-10$, donc
  $$r_1 + r_2 + \cdots + r_6 = 10 ;$$
- le terme constant vaut $(-1)^6 \, r_1 r_2 \cdots r_6 = r_1 r_2 \cdots r_6$, et l'énoncé donne $16$, donc
  $$r_1 r_2 \cdots r_6 = 16 .$$

**Chaque racine est une puissance de $2$.**

Chaque $r_i$ est un entier strictement positif qui divise le produit $16 = 2^4$. Ses seuls diviseurs positifs sont $1, 2, 4, 8, 16$ : chaque racine s'écrit donc $r_i = 2^{e_i}$ avec $e_i \ge 0$ entier.

Le produit des racines donne

$$2^{e_1 + e_2 + \cdots + e_6} = 2^4, \qquad \text{donc} \qquad e_1 + \cdots + e_6 = 4 .$$

**On énumère.**

Il n'y a que cinq façons de répartir un total de $4$ sur six exposants (à l'ordre près), et on calcule à chaque fois la somme des racines :

| exposants non nuls | racines | somme |
|---|---|---|
| $4$ | $16,1,1,1,1,1$ | $21$ |
| $3+1$ | $8,2,1,1,1,1$ | $14$ |
| $2+2$ | $4,4,1,1,1,1$ | $12$ |
| $2+1+1$ | $4,2,2,1,1,1$ | $11$ |
| $1+1+1+1$ | $2,2,2,2,1,1$ | $\mathbf{10}$ |

Une seule répartition donne la somme $10$. Les racines sont donc

$$1,\ 1,\ 2,\ 2,\ 2,\ 2,$$

et

$$P(z) = (z-1)^2 (z-2)^4 .$$

**On développe pour trouver $B$.**

$$(z-1)^2 = z^2 - 2z + 1 .$$

$$(z-2)^4 = z^4 - 8z^3 + 24z^2 - 32z + 16 .$$

Le coefficient de $z^3$ dans le produit s'obtient en combinant les termes dont les degrés font $3$ :

$$z^2 \times (-32 z) = -32 z^3, \qquad (-2z) \times 24 z^2 = -48 z^3, \qquad 1 \times (-8 z^3) = -8 z^3 .$$

En additionnant :

$$B = -32 - 48 - 8 = -88 .$$

**Vérification partielle.** Le développement complet donne

$$P(z) = z^6 - 10z^5 + 41 z^4 - 88 z^3 + 104 z^2 - 64 z + 16 .$$

On retrouve bien $-10$ pour $z^5$ et $16$ pour le terme constant, ce qui confirme le calcul. On obtient au passage $A = 41$, $C = 104$ et $D = -64$.

**Conclusion.** $B = -88$.

## Going further

1. Vérifier que $P(1) = 0$ et $P(2) = 0$ en utilisant la forme développée.
2. Même problème si le coefficient de $z^5$ était $-11$ au lieu de $-10$, le terme constant restant $16$. Y a-t-il encore une solution ?
3. Combien vaut la somme $A + B + C + D$ ? La trouver sans développer, en calculant $P(1)$.
