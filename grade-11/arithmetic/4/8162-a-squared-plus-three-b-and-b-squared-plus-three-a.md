---
id: "8162"
title: "a² + 3b et b² + 3a, deux carrés à la fois"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [carre-parfait, encadrement, symetrie, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 73 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver tous les couples $(a, b)$ d'entiers strictement positifs tels que

$$a^2 + 3b \qquad \text{et} \qquad b^2 + 3a$$

soient **tous les deux** des carrés parfaits.

## Hints

1. Le problème est symétrique en $a$ et $b$ : on peut donc supposer $a \leqslant b$, quitte à échanger les deux à la fin.
2. Encadre $b^2 + 3a$ entre deux carrés consécutifs bien choisis. Commence par $b^2$ lui-même.
3. Si $a \leqslant b$, compare $3a$ et $4b + 4$. Que peux-tu en conclure sur le carré $b^2 + 3a$ ?
4. Tu obtiens une relation simple entre $a$ et $b$. Remplace alors $b$ par son expression dans $a^2 + 3b$.
5. Refais le même encadrement sur cette nouvelle expression : elle est coincée entre deux carrés consécutifs dès que $a$ est assez grand. Il ne reste plus qu'à tester les petites valeurs.

## Solution

Le problème ne change pas si on échange $a$ et $b$. Supposons donc $a \leqslant b$, et rétablissons la symétrie à la fin.

**Étape 1 : encadrer $b^2 + 3a$.**

Comme $a \geqslant 1$, on a $b^2 + 3a > b^2$.

Comme $a \leqslant b$, on a $3a \leqslant 3b < 4b + 4$, donc

$$b^2 + 3a < b^2 + 4b + 4 = (b+2)^2 .$$

Ainsi

$$b^2 \ <\ b^2 + 3a \ <\ (b+2)^2 .$$

Le nombre $b^2+3a$ est un carré parfait strictement compris entre $b^2$ et $(b+2)^2$ : le seul carré possible est $(b+1)^2$. Donc

$$b^2 + 3a = b^2 + 2b + 1, \qquad \text{c'est-à-dire} \qquad 3a = 2b + 1 .$$

En particulier $3a$ est impair, donc $a$ est impair, et

$$b = \frac{3a-1}{2} .$$

**Étape 2 : encadrer $a^2 + 3b$.**

Remplaçons $b$ :

$$a^2 + 3b = a^2 + 3 \times \frac{3a-1}{2} = a^2 + \frac{9a-3}{2} .$$

Comparons avec $(a+2)^2$ et $(a+3)^2$ :

$$a^2 + 3b - (a+2)^2 = \frac{9a-3}{2} - (4a+4) = \frac{9a - 3 - 8a - 8}{2} = \frac{a - 11}{2} ,$$

$$(a+3)^2 - \left(a^2+3b\right) = (6a+9) - \frac{9a-3}{2} = \frac{12a + 18 - 9a + 3}{2} = \frac{3a + 21}{2} \ >\ 0 .$$

La seconde quantité est toujours strictement positive. Quant à la première, elle est strictement positive dès que $a > 11$.

Donc, si $a > 11$, on a

$$(a+2)^2 \ <\ a^2 + 3b \ <\ (a+3)^2 ,$$

et $a^2+3b$, coincé strictement entre deux carrés consécutifs, ne peut pas être un carré. Contradiction.

Il reste donc $a \leqslant 11$, avec $a$ impair : $a \in \{1, 3, 5, 7, 9, 11\}$.

**Étape 3 : les six cas.**

| $a$ | $b = \dfrac{3a-1}{2}$ | $a^2 + 3b$ | carré ? |
|---|---|---|---|
| $1$ | $1$ | $4$ | oui, $2^2$ |
| $3$ | $4$ | $21$ | non |
| $5$ | $7$ | $46$ | non |
| $7$ | $10$ | $79$ | non |
| $9$ | $13$ | $120$ | non |
| $11$ | $16$ | $169$ | oui, $13^2$ |

Il reste $(a,b) = (1,1)$ et $(a,b) = (11,16)$. Vérifions la seconde condition :

- pour $(1,1)$ : $b^2 + 3a = 1 + 3 = 4 = 2^2$, c'est bon ;
- pour $(11,16)$ : $b^2 + 3a = 256 + 33 = 289 = 17^2$, c'est bon.

**Conclusion.** En rétablissant la symétrie :

$$\boxed{\ (a,b) \in \{(1,1),\ (11,16),\ (16,11)\}\ }$$

## Going further

Toute la solution tient dans une seule idée, utilisée deux fois : un carré parfait ne peut pas se cacher strictement entre deux carrés consécutifs. Dès qu'une expression du type « $x^2$ plus quelque chose de petit devant $x$ » doit être un carré, on la coince entre $(x+k)^2$ et $(x+k+1)^2$, et le problème devient fini.

Remarquons aussi que le cas $a = 11$ est exactement le cas limite : on y a $a^2+3b = (a+2)^2$, l'égalité dans le premier encadrement.
