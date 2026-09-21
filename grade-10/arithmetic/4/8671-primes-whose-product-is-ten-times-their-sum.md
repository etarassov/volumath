---
id: "8671"
title: "Des nombres premiers dont le produit vaut 10 fois la somme"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres premiers, produit et somme, factorisation, etude de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 2 (niveau 1, deux étoiles). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée par recherche exhaustive."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $k$ un entier strictement positif. On considère $k$ nombres premiers, pas nécessairement distincts, dont le **produit vaut $10$ fois la somme**.

Déterminer toutes les valeurs possibles de $k$.

## Hints

1. Le produit est un multiple de $10$. Que cela impose-t-il sur la liste des nombres premiers choisis ?
2. Il y a donc forcément un $2$ et un $5$ dans la liste. Mets-les de côté et note $q_1, \ldots, q_m$ les autres, avec $m = k - 2$.
3. Réécris l'égalité en ne faisant plus intervenir que les $q_i$. Le facteur $10$ devrait disparaître des deux côtés.
4. Tu dois arriver à $q_1 \cdots q_m = 7 + q_1 + \cdots + q_m$. Teste $m = 0$, $m = 1$, $m = 2$.
5. Pour $m = 2$ : l'égalité $q_1q_2 - q_1 - q_2 = 7$ se factorise si tu ajoutes $1$ des deux côtés.
6. Pour $m \geqslant 3$ : montre qu'un produit de $m$ nombres premiers est toujours beaucoup plus grand que leur somme plus $7$.

## Solution

### On isole le facteur 10

Notons $p_1, \ldots, p_k$ les nombres premiers choisis, $P$ leur produit et $S$ leur somme, de sorte que $P = 10 S$.

Le produit $P$ est un multiple de $10 = 2 \times 5$. Comme les $p_i$ sont premiers, cela oblige $2$ et $5$ à figurer dans la liste.

Retirons-en une copie de $2$ et une copie de $5$, et notons $q_1, \ldots, q_m$ les $m = k - 2$ premiers restants. Alors

$$P = 2 \times 5 \times q_1 \cdots q_m = 10 \, q_1 \cdots q_m, \qquad S = 2 + 5 + q_1 + \cdots + q_m = 7 + \sum q_i .$$

L'égalité $P = 10S$ devient, après division par $10$ :

$$(\star) \qquad q_1 q_2 \cdots q_m = 7 + q_1 + q_2 + \cdots + q_m .$$

### Les petites valeurs de $m$

**$m = 0$.** Le produit vide vaut $1$ et la somme vide vaut $0$ : $(\star)$ donnerait $1 = 7$. Faux.

**$m = 1$.** $(\star)$ s'écrit $q_1 = 7 + q_1$, donc $0 = 7$. Faux.

**$m = 2$.** $(\star)$ s'écrit $q_1 q_2 - q_1 - q_2 = 7$. Ajoutons $1$ des deux côtés pour faire apparaître un produit :

$$q_1 q_2 - q_1 - q_2 + 1 = 8, \qquad \text{c'est-à-dire} \qquad (q_1 - 1)(q_2 - 1) = 8 .$$

Les factorisations de $8$ en deux entiers positifs sont $1 \times 8$, $2 \times 4$, $4 \times 2$, $8 \times 1$. Elles donnent, pour $(q_1, q_2)$ :

$$(2, 9), \quad (3, 5), \quad (5, 3), \quad (9, 2) .$$

Or $9$ n'est pas premier. Il ne reste donc que $\{q_1, q_2\} = \{3, 5\}$, et alors $m = 2$, donc $k = 4$.

*Vérification.* Les quatre premiers sont $2, 3, 5, 5$. Leur produit vaut $2 \times 3 \times 5 \times 5 = 150$ et leur somme $2+3+5+5 = 15$. Et $150 = 10 \times 15$. 

### Les valeurs $m \geqslant 3$

Supposons $m \geqslant 3$ et rangeons les premiers par ordre croissant : $q_1 \leqslant q_2 \leqslant \cdots \leqslant q_m$. Posons $Q = q_1 q_2 \cdots q_m$.

**D'abord, $m \leqslant 3$.** Comme chaque $q_i \geqslant 2$, le produit des $m-1$ premiers facteurs vaut au moins $2^{\,m-1}$, donc

$$Q \geqslant 2^{\,m-1} \, q_m .$$

Et comme chaque $q_i \leqslant q_m$, la somme vérifie $q_1 + \cdots + q_m \leqslant m\, q_m$. L'égalité $(\star)$ donnerait donc

$$2^{\,m-1} q_m \leqslant Q = 7 + \sum q_i \leqslant 7 + m \, q_m, \qquad \text{d'où} \qquad q_m \left(2^{\,m-1} - m\right) \leqslant 7 .$$

- Pour $m = 4$ : $2^{3} - 4 = 4$, donc $4 q_m \leqslant 7$, donc $q_m \leqslant 1$. Impossible.
- Pour $m \geqslant 5$ : $2^{\,m-1} - m \geqslant 2^{4} - 5 = 11$, donc $11 q_m \leqslant 7$. Impossible aussi.

Il ne reste donc que $m = 3$.

**Ensuite, $m = 3$ ne marche pas non plus.** L'égalité $(\star)$ s'écrit $q_1q_2q_3 = 7 + q_1+q_2+q_3$. Trois cas selon les plus petits facteurs.

- *Si $q_1 \geqslant 3$.* Alors $q_1q_2q_3 \geqslant 3 \times 3 \times q_3 = 9 q_3$, tandis que $7 + q_1+q_2+q_3 \leqslant 7 + 3q_3$. Or $9q_3 > 7 + 3q_3$ dès que $6 q_3 > 7$, ce qui est vrai. Le produit est strictement trop grand.
- *Si $q_1 = 2$ et $q_2 \geqslant 3$.* Alors $q_1q_2q_3 = 2q_2q_3 \geqslant 6 q_3$, tandis que $7 + 2 + q_2 + q_3 \leqslant 9 + 2q_3$. Or $6q_3 > 9 + 2q_3$ dès que $4q_3 > 9$, vrai puisque $q_3 \geqslant 3$. Encore trop grand.
- *Si $q_1 = q_2 = 2$.* Alors $(\star)$ s'écrit $4 q_3 = 7 + 2 + 2 + q_3 = 11 + q_3$, donc $3 q_3 = 11$. Or $11$ n'est pas un multiple de $3$. Impossible.

Aucun cas ne fournit de solution : il n'y a rien avec $m \geqslant 3$.

### Conclusion

$$\boxed{k = 4 \text{ est la seule valeur possible, réalisée par les premiers } 2, 3, 5, 5 .}$$

## Going further

Deux idées se combinent ici et méritent d'être retenues.

**Faire disparaître une contrainte de divisibilité.** Le facteur $10$ n'était pas un obstacle mais une information : il forçait $2$ et $5$ dans la liste, et une fois ceux-ci sortis, il s'est simplifié tout seul.

**Comparer un produit et une somme.** Un produit de nombres tous $\geqslant 2$ grandit exponentiellement, la somme seulement linéairement. Dès qu'on a trois facteurs ou plus, le produit écrase la somme, et il suffit de le quantifier pour clore l'étude.

Pour continuer : quels sont les $k$ nombres premiers dont le produit vaut $6$ fois la somme ?
