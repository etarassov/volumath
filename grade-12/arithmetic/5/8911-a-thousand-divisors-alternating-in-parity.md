---
id: "8911"
title: "Mille diviseurs qui alternent pair, impair"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [diviseurs, parite, minoration, puissances-de-deux, nombre-de-chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2026"
  reference: "Poly-Valbonne-2026.pdf, chapitre II « Coupe Animath de printemps 2026 », exercice 14 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Baptiste a choisi un entier $n > 0$ qui possède exactement $1000$ diviseurs positifs ($1$ et $n$ compris).

Il écrit ces $1000$ diviseurs au tableau dans l'ordre croissant, et il remarque une régularité : **deux diviseurs consécutifs sont toujours de parités différentes.** Autrement dit, la liste alterne : impair, pair, impair, pair, et ainsi de suite.

Montrer que $n$ s'écrit avec au moins $150$ chiffres en base dix.

## Hints

1. Le plus petit diviseur de $n$ est $1$, et le plus grand est $n$. Que dit l'alternance sur la parité du premier et du dernier de la liste ?
2. Combien y a-t-il de diviseurs impairs ? Combien de pairs ?
3. Si $d$ est un diviseur impair de $n$ et si $n$ est pair, montrez que $2d$ est aussi un diviseur de $n$.
4. Notez $d_1 < d_2 < \cdots < d_{500}$ les diviseurs impairs. Montrez que les diviseurs pairs sont exactement $2d_1 < 2d_2 < \cdots < 2d_{500}$ : comptez-les.
5. Écrivez alors la liste complète dans l'ordre. Quel diviseur occupe la première place ? La deuxième ? La troisième ? Vous obtiendrez une inégalité entre $d_{i+1}$ et $d_i$.
6. Pour finir, il faut comparer $2^{500}$ et $10^{150}$. Regroupez les puissances par paquets : $2^{10}$ contre $10^3$.

## Solution

**Le plan.** On va montrer que $n > 2^{500}$, puis que $2^{500} > 10^{150}$.

### Étape 1 : il y a $500$ diviseurs impairs et $500$ diviseurs pairs

Le plus petit diviseur de $n$ est $1$, qui est impair : le premier de la liste est donc impair. Comme la liste alterne, les diviseurs situés aux places $1, 3, 5, \ldots, 999$ sont impairs, et ceux situés aux places $2, 4, 6, \ldots, 1000$ sont pairs. Il y a donc exactement $500$ diviseurs impairs et $500$ diviseurs pairs.

En particulier le dernier de la liste, qui est $n$ lui-même, occupe la place $1000$ : **$n$ est pair**.

### Étape 2 : les diviseurs pairs sont les doubles des diviseurs impairs

Notons $d_1 < d_2 < \cdots < d_{500}$ les diviseurs impairs de $n$. On a $d_1 = 1$.

Écrivons $n = 2^a \times m$ avec $m$ impair. Comme $n$ est pair, $a \geq 1$. Si $d$ est un diviseur impair de $n$, alors $d$ divise $m$ (un diviseur impair ne peut pas utiliser de facteur $2$), donc $2d$ divise $2m$, qui divise $2^a m = n$ puisque $a \geq 1$. Donc **$2d$ est un diviseur de $n$**, et il est pair.

Ainsi $2d_1 < 2d_2 < \cdots < 2d_{500}$ sont $500$ diviseurs pairs de $n$, deux à deux distincts. Or $n$ n'a que $500$ diviseurs pairs en tout. Ce sont donc exactement ceux-là, et dans cet ordre.

### Étape 3 : la liste complète, et l'inégalité qui en sort

Les diviseurs impairs, rangés, occupent les places $1, 3, 5, \ldots$ dans l'ordre $d_1, d_2, \ldots, d_{500}$. Les diviseurs pairs, rangés, occupent les places $2, 4, 6, \ldots$ dans l'ordre $2d_1, 2d_2, \ldots, 2d_{500}$. La liste complète des diviseurs de $n$ dans l'ordre croissant est donc

$$d_1 < 2d_1 < d_2 < 2d_2 < d_3 < 2d_3 < \cdots < d_{500} < 2d_{500} = n.$$

De cette liste on retient deux choses. D'une part $n = 2 d_{500}$. D'autre part, pour chaque indice $i$,

$$d_{i+1} > 2 d_i.$$

### Étape 4 : $n$ est plus grand que $2^{500}$

En appliquant l'inégalité précédente de proche en proche à partir de $d_1 = 1$ :

$$d_2 > 2 d_1 = 2, \qquad d_3 > 2 d_2 > 2^2, \qquad d_4 > 2 d_3 > 2^3, \qquad \ldots$$

et de façon générale $d_i > 2^{\,i-1}$ pour tout $i \geq 2$. Pour $i = 500$ :

$$d_{500} > 2^{499}, \qquad \text{donc} \qquad n = 2 d_{500} > 2^{500}.$$

### Étape 5 : comparer $2^{500}$ et $10^{150}$

On découpe les deux puissances en paquets de même taille :

$$2^{500} = \left(2^{10}\right)^{50} = 1024^{50} \qquad \text{et} \qquad 10^{150} = \left(10^{3}\right)^{50} = 1000^{50}.$$

Comme $1024 > 1000$ et que la fonction qui élève à la puissance $50$ est croissante sur les nombres positifs,

$$2^{500} = 1024^{50} > 1000^{50} = 10^{150}.$$

### Conclusion

On a donc $n > 2^{500} > 10^{150}$. Un entier strictement supérieur à $10^{150}$ vaut au moins $10^{150}+1$, et s'écrit donc avec au moins $151$ chiffres.

$$\boxed{n \text{ s'écrit avec au moins } 150 \text{ chiffres (et même } 151).}$$

*Ce qui ne marche pas.* On pourrait croire qu'il suffit de savoir que $n$ a $500$ diviseurs pairs et $500$ impairs. C'est faux : le nombre $2 \times 3^{24} \times 5^{19}$ a bien $500$ diviseurs pairs et $500$ impairs, et il ne s'écrit pourtant qu'avec $26$ chiffres. L'hypothèse vraiment forte de l'énoncé, c'est l'**alternance** : c'est elle qui force $d_{i+1} > 2d_i$, et c'est de là que vient la croissance explosive.

## Going further

1. Un tel entier $n$ existe-t-il réellement ? Essayez $n = 2 \times 3^{499}$ : comptez ses diviseurs, puis vérifiez que l'alternance a bien lieu.
2. Montrez que $n$ n'est pas divisible par $4$.
3. Remplacez $1000$ par $2k$ diviseurs. Quelle minoration obtenez-vous pour $n$ ?
