---
id: "1608"
title: "Les diviseurs de 2004²⁰⁰⁴ qui ont exactement 2004 diviseurs"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [diviseurs, decomposition-en-facteurs-premiers, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 1"
  reference: "Handout-2014-1714.pdf, problème 5 (AIME II 2004, problème 8)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2014-1714.pdf"
---

## Statement

Combien le nombre $2004^{2004}$ a-t-il de diviseurs positifs qui possèdent eux-mêmes
exactement $2004$ diviseurs positifs ?

## Hints

1. Décompose $2004$ en produit de facteurs premiers. Tu obtiendras trois facteurs premiers seulement.
2. Rappelle la formule qui donne le nombre de diviseurs de $n = p_1^{\alpha_1} p_2^{\alpha_2} p_3^{\alpha_3}$. Pourquoi est-elle vraie ?
3. Un diviseur de $2004^{2004}$ s'écrit $2^{a}\,3^{b}\,167^{c}$ avec des bornes sur $a$, $b$ et $c$. Traduis « ce diviseur a exactement $2004$ diviseurs » en une équation portant sur $a$, $b$, $c$.
4. Tu dois compter les triplets ordonnés $(x, y, z)$ d'entiers strictement positifs tels que $xyz = 2004$. Traite chaque facteur premier de $2004$ séparément : où va chacun de ses exemplaires ?

## Solution

**L'idée : tout se ramène à répartir les facteurs premiers de $2004$ entre trois cases.**

**Étape 1. Décomposer $2004$.**

$$2004 = 4 \times 501 = 2^2 \times 3 \times 167 ,$$
et $167$ est premier (il n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$, ni
par $11$, ni par $13$, et $13^2 = 169 > 167$).

Donc
$$2004^{2004} = 2^{4008} \times 3^{2004} \times 167^{2004} .$$

**Étape 2. Écrire un diviseur et son nombre de diviseurs.**

Les diviseurs de $2004^{2004}$ sont exactement les nombres
$$d = 2^{a}\,3^{b}\,167^{c}, \qquad 0 \le a \le 4008,\quad 0 \le b \le 2004,\quad 0 \le c \le 2004 .$$

Rappelons pourquoi le nombre de diviseurs d'un tel $d$ vaut $(a+1)(b+1)(c+1)$ : un diviseur de
$d$ s'écrit $2^{a'}3^{b'}167^{c'}$ avec $0 \le a' \le a$, $0 \le b' \le b$, $0 \le c' \le c$,
et la décomposition en facteurs premiers étant unique, deux choix différents de
$(a', b', c')$ donnent deux diviseurs différents. Il y a donc $a+1$ choix pour $a'$, $b+1$
pour $b'$ et $c+1$ pour $c'$.

La condition de l'énoncé s'écrit donc
$$(a+1)(b+1)(c+1) = 2004 .$$

**Étape 3. Se ramener à un problème de répartition.**

Posons $x = a+1$, $y = b+1$, $z = c+1$ : ce sont des entiers strictement positifs, et il faut
$$x\,y\,z = 2004 .$$

Les contraintes de l'étape 2 sont automatiquement satisfaites : $x$, $y$ et $z$ divisent
$2004$, donc $x \le 2004 \le 4009$, $y \le 2004 \le 2005$ et $z \le 2004 \le 2005$. Autrement
dit, **toutes** les solutions de $xyz = 2004$ conviennent, et chacune donne un diviseur $d$
différent.

Il reste à compter les triplets **ordonnés** $(x, y, z)$ d'entiers strictement positifs de
produit $2004$.

**Étape 4. Compter les triplets.**

Comme $2004 = 2^2 \times 3 \times 167$, écrivons
$$x = 2^{u_1} 3^{v_1} 167^{w_1}, \quad y = 2^{u_2} 3^{v_2} 167^{w_2}, \quad z = 2^{u_3} 3^{v_3} 167^{w_3}.$$

L'égalité $xyz = 2004$ équivaut, par unicité de la décomposition en facteurs premiers, aux
trois conditions indépendantes
$$u_1 + u_2 + u_3 = 2, \qquad v_1 + v_2 + v_3 = 1, \qquad w_1 + w_2 + w_3 = 1 ,$$
avec des entiers naturels.

- $u_1 + u_2 + u_3 = 2$ : il s'agit de placer deux jetons identiques dans trois cases. Les
  solutions sont $(2,0,0)$ et ses $3$ permutations… plus précisément $3$ solutions avec un
  seul $2$, et $3$ solutions du type $(1,1,0)$ : au total $6$ solutions.
- $v_1 + v_2 + v_3 = 1$ : le facteur $3$ va dans $x$, dans $y$ ou dans $z$ : $3$ solutions.
- $w_1 + w_2 + w_3 = 1$ : de même, $3$ solutions pour le facteur $167$.

Les trois choix étant indépendants, le nombre de triplets est
$$6 \times 3 \times 3 = 54 .$$

**Conclusion.**

$2004^{2004}$ possède exactement **$54$** diviseurs ayant eux-mêmes $2004$ diviseurs.

**Exemple.** Le triplet $(x,y,z) = (2004, 1, 1)$ donne $a = 2003$, $b = c = 0$, c'est-à-dire
$d = 2^{2003}$, qui a bien $2004$ diviseurs.

## Going further

Un programme qui parcourt tous les couples $(a,b)$ possibles et calcule $c$ trouve lui aussi
$54$ diviseurs.

Noter la souplesse de la méthode : l'exposant $2004$ de $2004^{2004}$ ne sert qu'à garantir
que les bornes ne gênent pas. Avec $2004^{5}$, par exemple, il faudrait au contraire éliminer
les triplets dont une composante dépasse la borne autorisée.
