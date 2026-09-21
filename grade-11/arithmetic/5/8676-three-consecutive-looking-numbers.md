---
id: "8676"
title: "Une équation avec 1005, 2011 et 1006"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [equation diophantienne, congruences, modulo huit, identite remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 8 (niveau 1, une étoile). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée par calcul."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers strictement positifs tels que

$$1005^{\,x} + 2011^{\,y} = 1006^{\,z} .$$

## Hints

1. Avant de chercher à démontrer quoi que ce soit, cherche une solution. Remarque que $2011 = 1006 + 1005$. Cela te rappelle-t-il une identité remarquable ?
2. Calcule $1006^2 - 1005^2$ en factorisant. Tu tiens ta solution.
3. Pour montrer qu'il n'y en a pas d'autres, travaille modulo $1006$ : que valent $1005$ et $2011$ modulo $1006$ ?
4. Tu vas obtenir que $(-1)^x + (-1)^y$ est un multiple de $1006$. Comme cette quantité vaut $-2$, $0$ ou $2$, elle vaut forcément $0$. Que cela dit-il sur $x$ et $y$ ?
5. Travaille maintenant modulo $8$ : calcule les restes de $1005$, $2011$ et $1006$, puis les puissances de $6$ modulo $8$.
6. Tu devrais trouver que $z$ vaut exactement $2$. Il ne reste alors qu'un calcul.

## Solution

### Une solution saute aux yeux

Remarquons que $2011 = 1006 + 1005$ et que $1 = 1006 - 1005$. Donc, par l'identité remarquable,

$$1006^2 - 1005^2 = (1006 - 1005)(1006 + 1005) = 1 \times 2011 = 2011 .$$

Autrement dit

$$1005^2 + 2011^1 = 1006^2 ,$$

et le triplet $(x, y, z) = (2, 1, 2)$ est bien solution. *(Vérification : $1\,010\,025 + 2011 = 1\,012\,036 = 1006^2$.)*

Montrons maintenant que c'est la seule.

### Étape 1 : modulo 1006, les exposants $x$ et $y$ ont des parités différentes

Modulo $1006$ :

$$1005 \equiv -1 \qquad \text{et} \qquad 2011 = 2 \times 1006 - 1 \equiv -1 .$$

Comme $z \geqslant 1$, le membre de droite $1006^{\,z}$ est $\equiv 0$. L'équation donne donc

$$(-1)^{x} + (-1)^{y} \equiv 0 \pmod{1006} .$$

Or la quantité $(-1)^x + (-1)^y$ vaut $-2$, $0$ ou $2$. Parmi ces trois nombres, seul $0$ est un multiple de $1006$. Donc

$$(-1)^{x} + (-1)^{y} = 0 ,$$

ce qui signifie que **l'un de $x$, $y$ est pair et l'autre impair**.

### Étape 2 : modulo 8, l'exposant $z$ vaut 2

**D'abord, $z \geqslant 2$.** Comme $x \geqslant 1$ et $y \geqslant 1$,

$$1006^{\,z} = 1005^{\,x} + 2011^{\,y} \geqslant 1005 + 2011 = 3016 > 1006 ,$$

donc $z \geqslant 2$.

**Les restes modulo 8.** On a $1005 = 125 \times 8 + 5 \equiv 5$, $2011 = 251 \times 8 + 3 \equiv 3$ et $1006 = 125 \times 8 + 6 \equiv 6$.

- $5^2 = 25 \equiv 1 \pmod 8$, donc $5^{\,x} \equiv 5$ si $x$ est impair, et $\equiv 1$ si $x$ est pair.
- $3^2 = 9 \equiv 1 \pmod 8$, donc $3^{\,y} \equiv 3$ si $y$ est impair, et $\equiv 1$ si $y$ est pair.
- $6^1 \equiv 6$, $6^2 = 36 \equiv 4$, $6^3 = 216 \equiv 0$, et $6^{\,z} \equiv 0$ pour tout $z \geqslant 3$ (car $6^3$ est déjà un multiple de $8$).

**On croise avec l'étape 1.** Deux cas seulement.

- $x$ impair et $y$ pair : le membre de gauche vaut $5 + 1 = 6 \pmod 8$.
- $x$ pair et $y$ impair : le membre de gauche vaut $1 + 3 = 4 \pmod 8$.

Et le membre de droite vaut $4$ (si $z = 2$) ou $0$ (si $z \geqslant 3$). La seule compatibilité possible est

$$\text{membre de gauche} \equiv 4 \pmod 8 \qquad \text{et} \qquad z = 2 .$$

Donc $x$ est **pair**, $y$ est **impair**, et $z = 2$.

### Étape 3 : on finit à la main

L'équation devient

$$1005^{\,x} + 2011^{\,y} = 1006^2 = 1\,012\,036 .$$

Comme $x$ est pair et $x \geqslant 1$, on a $x \geqslant 2$. Mais $1005^4$ dépasse $10^{12}$, bien plus que $1\,012\,036$. Donc $x = 2$, et

$$2011^{\,y} = 1\,012\,036 - 1\,010\,025 = 2011 ,$$

d'où $y = 1$.

### Conclusion

$$\boxed{(x, y, z) = (2, 1, 2) \text{ est l'unique solution.}}$$

## Going further

Cet exercice montre bien comment on mène une résolution complète : chaque congruence retire un degré de liberté.

- Le module $1006$ est choisi parce qu'il rend le membre de droite nul et les deux bases égales à $-1$. Il donne une information de **parité**.
- Le module $8$ est choisi parce que $1006$ est pair : ses puissances deviennent nulles dès l'exposant $3$. Il **borne** $z$.
- Une fois $z$ connu, l'équation devient numérique et se termine en deux lignes.

Remarque enfin que la solution $(2,1,2)$ n'a rien d'accidentel : elle vient de l'identité $b^2 - a^2 = (b-a)(b+a)$ appliquée à deux nombres consécutifs. Le même phénomène donne $n^2 + (2n+1) = (n+1)^2$ pour tout $n$, et les nombres $1005$, $1006$, $2011$ en sont juste un cas particulier déguisé.
