---
id: "0460"
title: "Deux puissances quatrièmes égales"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation, puissances, factorisation, valeur-absolue, produit-nul]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8 класс), сост. А. Л. Канунников"
  reference: "Kan2017.pdf, листок 10, задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$(x+1)^4 = (x-3)^4$$

## Hints

1. Résiste à l'envie de tout développer : il y a une route bien plus courte. Pose $a = x+1$ et $b = x-3$, et demande-toi d'abord à quelle condition deux nombres réels ont la même puissance quatrième.
2. Pour cela, factorise $a^4 - b^4$ en appliquant deux fois de suite l'identité $a^2 - b^2 = (a-b)(a+b)$.
3. Tu arrives à $(a-b)(a+b)(a^2+b^2) = 0$. Un produit est nul quand l'un au moins de ses facteurs est nul. Que peut valoir une somme de deux carrés ?

## Solution

**L'idée : ne pas développer, mais comparer les deux nombres élevés à la puissance quatrième.**

**Étape 1. Quand deux nombres ont-ils la même puissance quatrième ?**

Soient $a$ et $b$ deux nombres réels. L'égalité $a^4 = b^4$ s'écrit $a^4 - b^4 = 0$. Factorisons en appliquant deux fois l'identité $a^2 - b^2 = (a-b)(a+b)$ :

$$a^4 - b^4 = \big(a^2\big)^2 - \big(b^2\big)^2 = (a^2 - b^2)(a^2 + b^2) = (a-b)(a+b)(a^2+b^2)$$

Un produit est nul si et seulement si l'un au moins de ses facteurs est nul. Trois cas se présentent donc.

- $a - b = 0$, c'est-à-dire $a = b$ ;
- $a + b = 0$, c'est-à-dire $a = -b$ ;
- $a^2 + b^2 = 0$. Une somme de deux carrés est nulle seulement si les deux carrés le sont, donc seulement si $a = 0$ et $b = 0$ ; mais on a alors $a = b$, cas déjà compté.

On retient donc, pour $a$ et $b$ réels :

$$a^4 = b^4 \iff a = b \ \text{ ou } \ a = -b$$

**Étape 2. On applique à l'équation.**

Ici $a = x+1$ et $b = x-3$.

*Premier cas : $x + 1 = x - 3$.* En retranchant $x$ des deux membres, il reste $1 = -3$, ce qui est faux. Ce cas ne donne aucune solution.

*Second cas : $x + 1 = -(x-3)$.* Alors

$$x + 1 = -x + 3$$
$$x + x = 3 - 1$$
$$2x = 2$$
$$x = 1$$

**Étape 3. Vérification.**

$$(1+1)^4 = 2^4 = 16 \qquad \text{et} \qquad (1-3)^4 = (-2)^4 = 16$$

Les deux membres sont bien égaux.

**Conclusion.** L'équation a une unique solution : $x = 1$.

*Une autre façon de voir.* Dire que $a^4 = b^4$ revient à dire que $|a| = |b|$. L'équation demande donc que $x$ soit à la même distance de $-1$ et de $3$ : c'est le milieu de ces deux nombres,

$$x = \frac{-1+3}{2} = 1$$

*Ce qu'il faut retenir.* L'exposant $4$ ne joue aucun rôle particulier : n'importe quel exposant pair aurait donné le même travail et la même solution. C'est la parité de l'exposant qui compte, parce qu'elle fait perdre le signe.

## Going further

1. Résoudre $(x+1)^6 = (x-3)^6$. La méthode et la réponse changent-elles ?
2. Résoudre $(x+1)^3 = (x-3)^3$. Attention : avec un exposant impair, l'étape 1 ne dit plus la même chose. Que devient-elle ?
3. Résoudre $(x+1)^4 = (2x-3)^4$. Cette fois les deux cas donnent chacun une solution.
