---
id: "8910"
title: "Des puissances de 2 également espacées"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [puissances-de-deux, suite-arithmetique, maximum, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2026"
  reference: "Poly-Valbonne-2026.pdf, chapitre II « Coupe Animath de printemps 2026 », exercice 11 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Théo a devant lui la liste de nombres suivante :

$$-2^{2026}, \ -2^{2025}, \ \ldots, \ -2^2, \ -2^1, \ -1, \ 1, \ 2^1, \ 2^2, \ \ldots, \ 2^{2025}, \ 2^{2026}.$$

Autrement dit : toutes les puissances de $2$ de $2^0 = 1$ jusqu'à $2^{2026}$, et leurs opposées.

Théo en choisit au moins deux, et les écrit au tableau dans l'ordre croissant. Il remarque alors que **l'écart entre deux nombres voisins au tableau est toujours le même**.

Quel est le nombre maximal de nombres que Théo peut écrire au tableau ?

## Hints

1. Commencez par chercher un exemple avec trois nombres. Mélangez un nombre négatif et des positifs, et cherchez de petits exposants.
2. L'outil central de tout l'exercice est le petit résultat suivant : si $b$, $c$, $d$ sont des entiers positifs ou nuls avec $2^b = 2^c + 2^d$, alors $c = d = b-1$. Démontrez-le. (Commencez par comparer $b$ à $c$, puis $b$ à $d$.)
3. Supposons que Théo écrive trois nombres **positifs** voisins $2^a < 2^e < 2^f$. Écrivez l'égalité des deux écarts, puis regroupez pour faire apparaître une somme de deux puissances de $2$ égale à une puissance de $2$.
4. Vous en déduirez qu'il y a au plus deux nombres positifs, et de même au plus deux négatifs, donc au plus quatre en tout.
5. Reste le cas de quatre nombres : deux négatifs puis deux positifs. Nommez-les $-2^p$, $-2^q$, $2^r$, $2^s$ et appliquez le lemme deux fois.

## Solution

La réponse est $3$.

### Théo peut écrire trois nombres

Il écrit $-2$, puis $1$, puis $4$. Ces trois nombres sont bien dans sa liste ($-2 = -2^1$, $1 = 2^0$, $4 = 2^2$), ils sont dans l'ordre croissant, et les écarts valent

$$1 - (-2) = 3 \qquad \text{et} \qquad 4 - 1 = 3.$$

C'est donc possible avec trois nombres.

### Le lemme

> **Lemme.** Si $b$, $c$, $d$ sont des entiers positifs ou nuls tels que $2^b = 2^c + 2^d$, alors $c = d = b - 1$.

*Démonstration.* Comme $2^d > 0$, on a $2^b > 2^c$, donc $b > c$, donc $c \leq b-1$. De même $d \leq b-1$. Par conséquent

$$2^b = 2^c + 2^d \leq 2^{b-1} + 2^{b-1} = 2 \times 2^{b-1} = 2^b.$$

Toutes les inégalités de cette chaîne sont donc des égalités. En particulier $2^c = 2^{b-1}$ et $2^d = 2^{b-1}$, c'est-à-dire $c = d = b-1$. $\square$

### Théo écrit au plus deux nombres positifs

Supposons qu'il en écrive au moins trois. Alors, parmi les nombres positifs écrits, trois sont voisins au tableau : notons-les $2^a < 2^e < 2^f$ dans cet ordre, avec donc $a < e < f$. Les deux écarts sont égaux :

$$2^f - 2^e = 2^e - 2^a,$$

d'où

$$2^f + 2^a = 2 \times 2^e = 2^{e+1}.$$

Le lemme, appliqué avec $b = e+1$, donne $f = a = e$. C'est impossible puisque $a < e < f$.

Théo écrit donc au plus deux nombres positifs. Le même raisonnement, appliqué aux opposés, montre qu'il écrit au plus deux nombres négatifs. Au total : **au plus quatre nombres**.

### Théo ne peut pas en écrire quatre

Supposons qu'il y arrive. D'après ce qui précède, il y a alors exactement deux nombres négatifs et deux positifs. Dans l'ordre croissant, le tableau est

$$-2^p, \quad -2^q, \quad 2^r, \quad 2^s.$$

Notons que $-2^p < -2^q$ impose $p > q$, et $2^r < 2^s$ impose $r < s$. Les trois écarts sont égaux ; utilisons les deux derniers :

$$2^s - 2^r = 2^r - (-2^q) = 2^r + 2^q,$$

donc

$$2^s = 2^{r+1} + 2^q.$$

Le lemme, appliqué avec $b = s$, donne $r + 1 = q = s - 1$. Les quatre nombres sont donc

$$-2^p, \quad -2^{\,r+1}, \quad 2^r, \quad 2^{\,r+2}.$$

Utilisons maintenant les deux premiers écarts :

$$-2^{\,r+1} - (-2^p) = 2^r - (-2^{\,r+1}),$$

c'est-à-dire

$$2^p - 2^{\,r+1} = 2^r + 2^{\,r+1}, \qquad \text{donc} \qquad 2^p = 2^{\,r+2} + 2^r.$$

Le lemme, appliqué avec $b = p$, donne cette fois $r + 2 = r$, ce qui est absurde.

### Conclusion

$$\boxed{\text{Théo peut écrire au maximum } 3 \text{ nombres.}}$$

*Un piège relevé par les correcteurs.* Beaucoup de candidats ont conjecturé $2$ sans tester de petits cas : l'exemple $-2$, $1$, $4$ se trouve pourtant en quelques essais, et il contredit tout argument prétendant qu'on ne peut pas dépasser deux nombres. Tester avant de conjecturer coûte peu et évite de démontrer du faux.

## Going further

1. Dans l'exemple $-2$, $1$, $4$, l'écart vaut $3$. Existe-t-il d'autres triplets possibles ? Décrivez-les tous.
2. Le lemme dit qu'une somme de deux puissances de $2$ n'est une puissance de $2$ que si les deux sont égales. Que devient cet énoncé pour une somme de **trois** puissances de $2$ ?
