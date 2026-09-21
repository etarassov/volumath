---
id: "8439"
title: "Trois nombres premiers et un carré"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombre-premier, congruence, difference-de-carres, disjonction-de-cas, equation-en-entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Entraînement de fin de parcours », exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Déterminer tous les quadruplets $(a, b, c, k)$ où $a$, $b$ et $c$ sont des nombres premiers, où $k$ est un entier strictement positif, et où

$$a^2 + b^2 + 16c^2 = 9k^2 + 1.$$

## Hints

1. Les deux membres contiennent des multiples de $3$ bien visibles ($16 = 15+1$, $9k^2$). Regarde l'équation modulo $3$.
2. Modulo $3$, un carré vaut $0$ ou $1$. Tu dois obtenir $a^2 + b^2 + c^2 \equiv 1$. Combien de ces trois carrés valent $0$ ? Combien valent $1$ ?
3. Si $3$ divise $a^2$ et que $3$ est premier, alors $3$ divise $a$. Et si $a$ est lui-même premier, que vaut $a$ ?
4. Tu sais maintenant que **deux exactement** des trois nombres valent $3$. Les lettres $a$ et $b$ jouent le même rôle, mais pas $c$ : il reste donc deux cas de figure.
5. Dans chaque cas, l'équation devient une différence de deux carrés égale à un nombre fixe. Factorise, et liste les découpages possibles en deux facteurs.

## Solution

### Étape 1. Regarder modulo 3

Comme $16 = 5 \times 3 + 1$, on a $16 \equiv 1 \pmod 3$, et $9k^2 \equiv 0 \pmod 3$. L'équation donne donc

$$a^2 + b^2 + c^2 \equiv 1 \pmod 3.$$

Or le carré d'un entier vaut $0$ ou $1$ modulo $3$. Notons $\alpha, \beta, \gamma$ les valeurs respectives de $a^2, b^2, c^2$ modulo $3$, chacune valant $0$ ou $1$. Leur somme, avant réduction, vaut $0$, $1$, $2$ ou $3$ ; modulo $3$, cela donne respectivement $0$, $1$, $2$ et $0$.

Pour que la somme soit congrue à $1$, il faut donc qu'elle vaille exactement $1$ : **une** des trois valeurs est $1$, les **deux** autres sont $0$.

### Étape 2. Deux des trois nombres valent 3

Supposons $a^2 \equiv 0 \pmod 3$. Alors $3$ divise $a \times a$, et comme $3$ est premier, $3$ divise $a$. Mais $a$ est lui-même premier, et ses seuls diviseurs positifs sont $1$ et $a$ : donc $a = 3$.

D'après l'étape 1, exactement deux des trois nombres $a$, $b$, $c$ valent $3$.

Les lettres $a$ et $b$ jouent le même rôle dans l'équation, mais $c$ non, à cause du coefficient $16$. Il y a donc deux cas à traiter, le second se dédoublant ensuite par symétrie.

### Étape 3. Premier cas : $a = b = 3$ et $c \neq 3$

L'équation devient

$$9 + 9 + 16c^2 = 9k^2 + 1, \qquad \text{c'est-à-dire} \qquad 9k^2 - 16c^2 = 17,$$

soit, en reconnaissant une différence de carrés,

$$(3k - 4c)(3k + 4c) = 17.$$

Comme $k \geqslant 1$ et $c \geqslant 2$, le facteur $3k + 4c$ est strictement positif ; le produit valant $17 > 0$, l'autre facteur l'est aussi. De plus $3k + 4c > 3k - 4c$.

Le nombre $17$ étant premier, le seul découpage possible est

$$3k - 4c = 1 \qquad \text{et} \qquad 3k + 4c = 17.$$

En additionnant : $6k = 18$, donc $k = 3$. En soustrayant : $8c = 16$, donc $c = 2$.

Le nombre $2$ est bien premier et différent de $3$. On obtient le quadruplet $(3, 3, 2, 3)$.

**Vérification :** $9 + 9 + 16 \times 4 = 82$ et $9 \times 9 + 1 = 82$.

### Étape 4. Second cas : $a = 3$ et $c = 3$, avec $b \neq 3$

L'équation devient

$$9 + b^2 + 16 \times 9 = 9k^2 + 1, \qquad \text{c'est-à-dire} \qquad 9k^2 - b^2 = 152,$$

soit

$$(3k - b)(3k + b) = 152.$$

Posons $u = 3k - b$ et $v = 3k + b$. Comme ci-dessus, $u$ et $v$ sont des entiers strictement positifs avec $u < v$ et $uv = 152$. De plus

$$u + v = 6k \qquad \text{et} \qquad v - u = 2b,$$

donc $u+v$ et $v-u$ sont **pairs** : les deux facteurs $u$ et $v$ ont la même parité. Comme leur produit $152$ est pair, ils sont tous les deux pairs.

Or $152 = 2^3 \times 19$, et ses découpages en deux facteurs croissants sont

$$1 \times 152, \qquad 2 \times 76, \qquad 4 \times 38, \qquad 8 \times 19.$$

Seuls $2 \times 76$ et $4 \times 38$ ont leurs deux facteurs pairs.

- **$(u, v) = (2, 76)$ :** $6k = 78$ donne $k = 13$, et $2b = 74$ donne $b = 37$, qui est bien premier et différent de $3$.
- **$(u, v) = (4, 38)$ :** $6k = 42$ donne $k = 7$, et $2b = 34$ donne $b = 17$, qui est bien premier et différent de $3$.

On obtient les quadruplets $(3, 37, 3, 13)$ et $(3, 17, 3, 7)$.

**Vérifications :** $9 + 1369 + 144 = 1522 = 9 \times 169 + 1$, et $9 + 289 + 144 = 442 = 9 \times 49 + 1$.

### Étape 5. La symétrie entre $a$ et $b$

Le cas « $b = 3$ et $c = 3$, avec $a \neq 3$ » se déduit du précédent en échangeant $a$ et $b$. Il donne les quadruplets $(37, 3, 3, 13)$ et $(17, 3, 3, 7)$.

### Conclusion

Les solutions sont exactement

$$\boxed{(3,3,2,3), \quad (3,17,3,7), \quad (17,3,3,7), \quad (3,37,3,13), \quad (37,3,3,13)}.$$

## Going further

Cet exercice enchaîne les deux grandes techniques de l'arithmétique des olympiades, dans l'ordre :

1. **une congruence pour réduire le problème** : modulo $3$, on apprend que deux des trois premiers valent $3$, ce qui fait passer d'une équation à quatre inconnues à deux équations à deux inconnues ;
2. **une factorisation pour finir** : chaque équation restante est une différence de carrés, donc un produit égal à un nombre connu, et il ne reste qu'à lister les diviseurs.

Le petit raffinement à ne pas manquer est l'argument de parité de l'étape 4 : sans lui, il faudrait examiner deux découpages de plus, qui ne donnent pas de solutions entières.
