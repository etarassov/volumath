---
id: "7085"
title: "2n + 1 entiers qui se partagent toujours en deux"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [descente-infinie, parite, puissances-de-deux, invariant, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des avancés"
  reference: "stage_junior_2012.pdf, « Mardi : combinatoire », TD du groupe des avancés, exercice 12"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soit $n \geq 1$ un entier. On dispose de $2n+1$ entiers relatifs

$$a_1, \; a_2, \; \ldots, \; a_{2n+1}$$

qui ont la propriété suivante :

> si on en retire un, n'importe lequel, on peut ranger les $2n$ nombres restants en deux paquets de $n$ nombres chacun, de telle sorte que les deux paquets aient la même somme.

Démontrer que ces $2n+1$ nombres sont tous égaux.

## Hints

1. Commence par le cas $n = 1$, c'est-à-dire trois entiers. Que dit l'hypothèse quand on en retire un ? Conclus.
2. Reviens au cas général et note $S = a_1 + a_2 + \ldots + a_{2n+1}$. Quand on retire $a_i$, les deux paquets ont une somme commune, appelle-la $s_i$. Quelle égalité relie $S$, $a_i$ et $s_i$ ?
3. Cette égalité te dit quelque chose sur la **parité** de chaque $a_i$. Quoi exactement ?
4. Imagine qu'on retranche un même entier $c$ à chacun des $2n+1$ nombres. La propriété de l'énoncé est-elle conservée ? C'est ici que le fait que les deux paquets aient **exactement $n$ nombres chacun** devient essentiel.
5. Retranche $a_1$ à tout le monde. Le premier nombre devient $0$, et d'après l'indication 3, tous les nombres obtenus sont pairs. Divise alors tout par $2$ : la propriété est-elle encore conservée ?
6. Tu peux donc recommencer autant de fois que tu veux. Que cela dit-il sur la divisibilité de $a_i - a_1$ par $2$, par $4$, par $8$, par $2^k$ ? Quel entier est divisible par toutes les puissances de $2$ ?

## Solution

Disons qu'une famille de $2n+1$ entiers **a la propriété $(P)$** lorsqu'elle vérifie l'énoncé : en retirant n'importe lequel de ses membres, les $2n$ restants se rangent en deux paquets de $n$ nombres de même somme.

### Deux lemmes de stabilité

**Lemme A (translation).** Si $(a_1, \ldots, a_{2n+1})$ a la propriété $(P)$ et si $c$ est un entier, alors la famille $(a_1 - c, \ldots, a_{2n+1} - c)$ a aussi la propriété $(P)$.

*Démonstration.* Fixons un indice $j$ et retirons le $j$-ième nombre. Par hypothèse, les $2n$ autres $a_i$ se rangent en deux paquets $G$ et $H$ de $n$ nombres chacun, de même somme. Retranchons $c$ à chaque nombre. La somme du paquet $G$ diminue de $nc$, puisque $G$ contient exactement $n$ nombres, et la somme de $H$ diminue elle aussi de $nc$, pour la même raison. Les deux sommes étaient égales, elles le restent. $\blacksquare$

C'est ici, et seulement ici, que la condition « $n$ nombres dans chaque paquet » sert. Si les paquets pouvaient avoir des tailles différentes, les deux sommes ne diminueraient pas de la même quantité et le lemme tomberait.

**Lemme B (division par deux).** Si $(a_1, \ldots, a_{2n+1})$ a la propriété $(P)$ et si tous les $a_i$ sont pairs, alors $\left(\dfrac{a_1}{2}, \ldots, \dfrac{a_{2n+1}}{2}\right)$ est une famille d'entiers qui a la propriété $(P)$.

*Démonstration.* On garde exactement les mêmes paquets. Toutes les sommes sont divisées par $2$, donc deux sommes égales restent égales. $\blacksquare$

### Première observation : tout le monde a la même parité

**Lemme C.** Si $(a_1, \ldots, a_{2n+1})$ a la propriété $(P)$, alors tous les $a_i$ ont la même parité.

*Démonstration.* Posons $S = a_1 + a_2 + \ldots + a_{2n+1}$. Fixons $i$ et retirons $a_i$. Les $2n$ nombres restants forment deux paquets de même somme ; appelons $s_i$ cette somme commune. La somme des $2n$ nombres restants vaut donc $2s_i$, et elle vaut aussi $S - a_i$. Donc

$$S - a_i = 2 s_i, \qquad \text{c'est-à-dire} \qquad a_i = S - 2 s_i.$$

Ainsi $a_i$ et $S$ diffèrent d'un nombre pair, donc $a_i$ a la même parité que $S$. Comme c'est vrai pour tout $i$, tous les $a_i$ ont la parité de $S$. $\blacksquare$

### La descente

Posons, pour tout $i$,

$$b_i = a_i - a_1.$$

D'après le lemme A, la famille $(b_1, \ldots, b_{2n+1})$ a la propriété $(P)$, et elle vérifie $b_1 = 0$.

**Montrons par récurrence sur $k \geq 1$ que $2^k$ divise $b_i$ pour tout $i$.**

*Initialisation.* D'après le lemme C appliqué à la famille $(a_i)$, tous les $a_i$ ont la même parité, donc chaque différence $b_i = a_i - a_1$ est paire. Donc $2$ divise tous les $b_i$.

*Hérédité.* Supposons que $2^k$ divise $b_i$ pour tout $i$, et posons

$$c_i = \frac{b_i}{2^k},$$

qui sont des entiers. En appliquant $k$ fois le lemme B à la famille $(b_i)$, la famille $(c_i)$ a la propriété $(P)$. Le lemme C appliqué à $(c_i)$ dit que tous les $c_i$ ont la même parité. Or $c_1 = \dfrac{b_1}{2^k} = 0$, qui est pair. Donc tous les $c_i$ sont pairs, c'est-à-dire que $2$ divise $\dfrac{b_i}{2^k}$, autrement dit $2^{k+1}$ divise $b_i$. $\square$

### Conclusion

Chaque $b_i$ est donc divisible par $2^k$, et cela pour **tout** entier $k \geq 1$. Si l'un des $b_i$ était non nul, on aurait $|b_i| \geq 2^k$ pour tout $k$, ce qui est impossible puisque $2^k$ dépasse n'importe quel entier fixé dès que $k$ est assez grand.

Donc $b_i = 0$ pour tout $i$, c'est-à-dire

$$\boxed{a_1 = a_2 = \ldots = a_{2n+1}.}$$

Réciproquement, une famille de $2n+1$ nombres tous égaux a bien la propriété $(P)$ : en retirant l'un d'eux, on range les $2n$ autres en deux paquets de $n$ nombres identiques, de même somme. Les familles cherchées sont donc exactement les familles constantes.

## Going further

**Où est vraiment la difficulté.** Chacun des trois lemmes est facile pris séparément. Ce qui fait le problème, c'est de les combiner dans le bon ordre : le lemme A sert à amener un zéro dans la famille, et ce zéro est ce qui transforme « tous de même parité » en « tous pairs ». Sans lui, le lemme C ne dit rien d'utile, puisqu'une famille de nombres tous impairs le vérifie sans être constante.

**Pourquoi $2n+1$ et pas $2n$.** Le nombre total doit être impair pour que l'énoncé ait un sens : après avoir retiré un nombre, il en reste un nombre pair, donc partageable en deux paquets de même taille. Avec $2n$ nombres au départ, il en resterait $2n-1$, et la question ne se poserait pas.

**Le même résultat pour des rationnels.** Supposons maintenant que $a_1, \ldots, a_{2n+1}$ soient des nombres **rationnels** vérifiant la même propriété. Notons $D$ un dénominateur commun à tous. Alors les $D a_i$ sont des entiers, et ils vérifient encore la propriété : multiplier tous les nombres par $D$ multiplie toutes les sommes par $D$, donc préserve les égalités. Le résultat démontré ci-dessus donne alors $D a_1 = \ldots = D a_{2n+1}$, puis $a_1 = \ldots = a_{2n+1}$.

Le résultat reste d'ailleurs vrai pour des nombres réels quelconques, mais la démonstration change complètement de nature : elle passe par un argument d'algèbre linéaire sur un système de $2n+1$ équations, et la descente ne sert plus à rien.
