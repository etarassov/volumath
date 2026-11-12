---
id: "17835"
title: "Des chiffres consécutifs dont le produit est un carré"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, carre-parfait, decomposition-en-facteurs-premiers, parite, chiffres]
adapted_from: null
see_also: ["11401"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, jeudi matin, « Le principe des tiroirs » (Margaret Bilu), exercice 7, p.71 ; solution p.73. La solution imprimée fait varier i dans {0, …, 17} au lieu de {0, …, 16}, et oublie le chiffre 0, qui n'a pas de décomposition en facteurs premiers (ce cas est immédiat)."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $n$ un nombre entier qui s'écrit avec $16$ chiffres.

Montrer qu'on peut toujours trouver dans l'écriture de $n$ un ou plusieurs chiffres **consécutifs** dont le produit est un carré parfait.

Par exemple, si $n$ commence par $7\,328$, les chiffres consécutifs $2$ et $8$ conviennent, car $2 \times 8 = 16 = 4^2$. En revanche les chiffres consécutifs $7$, $3$, $2$ ne conviennent pas, car $7 \times 3 \times 2 = 42$ n'est pas un carré.

## Hints

1. Si l'un des chiffres est $0$, $1$, $4$ ou $9$, c'est facile. Supposez que ce n'est pas le cas.
2. Quels nombres premiers peuvent apparaître dans la décomposition d'un chiffre ?
3. Un nombre $2^p \times 3^q \times 5^r \times 7^s$ est un carré parfait exactement quand les quatre exposants $p$, $q$, $r$, $s$ sont pairs.
4. Regardez les produits des $i$ premiers chiffres, pour $i = 0, 1, \ldots, 16$, et la parité de leurs quatre exposants. Combien de possibilités pour ces quatre parités ?

## Solution

Notons $c_1, c_2, \ldots, c_{16}$ les chiffres de $n$, dans l'ordre.

**Un cas facile.** Si l'un des chiffres vaut $0$, ce chiffre seul convient, car $0 = 0^2$. On suppose désormais que tous les chiffres sont entre $1$ et $9$.

**Les facteurs premiers.** Chaque chiffre de $1$ à $9$ n'a que des facteurs premiers parmi $2$, $3$, $5$, $7$. Il en est donc de même pour tout produit de chiffres, qui s'écrit

$$2^p \times 3^q \times 5^r \times 7^s$$

avec des exposants entiers $p, q, r, s \ge 0$. Un tel nombre est un carré parfait exactement quand ses quatre exposants sont pairs. En effet, si les exposants sont pairs, c'est le carré de $2^{p/2} \times 3^{q/2} \times 5^{r/2} \times 7^{s/2}$. Et le carré d'un nombre $2^{p'} 3^{q'} 5^{r'} 7^{s'}$ a pour exposants $2p'$, $2q'$, $2r'$, $2s'$, qui sont pairs : par l'unicité de la décomposition en facteurs premiers, un carré n'a que des exposants pairs.

**Les produits des premiers chiffres.** Posons $x_0 = 1$ et, pour $i = 1, 2, \ldots, 16$,

$$x_i = c_1 \times c_2 \times \cdots \times c_i ,$$

le produit des $i$ premiers chiffres. Écrivons $x_i = 2^{p_i} \times 3^{q_i} \times 5^{r_i} \times 7^{s_i}$, et regardons la parité de chacun des quatre exposants. Chaque exposant est pair ou impair, ce qui fait $2 \times 2 \times 2 \times 2 = 16$ possibilités pour les quatre parités.

**Les tiroirs.** Il y a $17$ nombres $x_0, x_1, \ldots, x_{16}$ et seulement $16$ possibilités. D'après le principe des tiroirs, deux d'entre eux, $x_i$ et $x_j$ avec $i < j$, ont les mêmes quatre parités. Alors les différences $p_j - p_i$, $q_j - q_i$, $r_j - r_i$, $s_j - s_i$ sont toutes paires (et positives ou nulles, car on a multiplié par des chiffres de plus). Or

$$\frac{x_j}{x_i} = c_{i+1} \times c_{i+2} \times \cdots \times c_j = 2^{p_j - p_i} \times 3^{q_j - q_i} \times 5^{r_j - r_i} \times 7^{s_j - s_i} .$$

Ses quatre exposants sont pairs : c'est un carré parfait.

**Conclusion :** les chiffres consécutifs $c_{i+1}, \ldots, c_j$, qui sont au moins un chiffre puisque $i < j$, ont pour produit un carré parfait.

## Going further

Le nombre $16$ ne peut pas être remplacé par $15$. Vérifiez que dans le nombre à $15$ chiffres

$$232\,523\,272\,325\,232$$

aucun groupe de chiffres consécutifs n'a pour produit un carré parfait. On peut s'aider des parités des exposants : en suivant les $x_i$ de ce nombre, on rencontre les $16$ possibilités une fois chacune.
