---
id: "7812"
title: "Les nombres qui ont exactement 7 diviseurs"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [diviseurs, nombres-premiers, decomposition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Le nombre $6$ a exactement $4$ diviseurs : $1$, $2$, $3$ et $6$.

Déterminer la somme de tous les entiers compris entre $1$ et $1000$ qui admettent exactement
$7$ diviseurs.

## Hints

1. Essaie d'abord de fabriquer un nombre à exactement $7$ diviseurs. Combien de diviseurs a
   $p^k$ quand $p$ est premier ? Et $p \times q$ avec $p$ et $q$ premiers distincts ?
2. En général, si $N = p_1^{\alpha_1} \times \cdots \times p_r^{\alpha_r}$, le nombre de
   diviseurs de $N$ vaut $(\alpha_1 + 1) \times \cdots \times (\alpha_r + 1)$ : on choisit
   indépendamment l'exposant de chaque facteur premier.
3. Il faut donc que ce produit vaille $7$. Or $7$ est premier : que peut-on en déduire sur le
   nombre de facteurs premiers de $N$ ?
4. Une fois la forme de $N$ trouvée, il ne reste que deux ou trois candidats sous $1000$.

## Solution

**Étape 1 : compter les diviseurs.**

Si un entier $N$ se décompose en
$$N = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_r^{\alpha_r},$$
où les $p_i$ sont des nombres premiers distincts, alors un diviseur de $N$ s'écrit
$$p_1^{\beta_1} \times \cdots \times p_r^{\beta_r}
 \quad \text{avec} \quad 0 \leq \beta_i \leq \alpha_i .$$

Il y a $\alpha_i + 1$ choix pour chaque exposant $\beta_i$, indépendamment des autres, donc
$$\text{nombre de diviseurs de } N = (\alpha_1 + 1)(\alpha_2 + 1)\cdots(\alpha_r + 1).$$

**Étape 2 : quand ce produit vaut-il $7$ ?**

Chaque facteur $\alpha_i + 1$ vaut au moins $2$ (puisque $\alpha_i \geq 1$). Comme $7$ est un
nombre premier, il ne peut pas s'écrire comme un produit de deux facteurs ou plus, tous
supérieurs ou égaux à $2$. Il n'y a donc qu'un seul facteur :
$$r = 1 \quad \text{et} \quad \alpha_1 + 1 = 7, \text{ soit } \alpha_1 = 6.$$

Autrement dit, **les entiers qui ont exactement $7$ diviseurs sont exactement les puissances
sixièmes de nombres premiers**, c'est-à-dire les $p^6$ avec $p$ premier.

**Étape 3 : ceux qui sont inférieurs à $1000$.**

- $2^6 = 64$, qui convient ;
- $3^6 = 729$, qui convient ;
- $5^6 = 15\,625$, qui dépasse largement $1000$.

Et les nombres premiers suivants donnent des valeurs encore plus grandes. Il n'y a donc que
deux entiers cherchés : $64$ et $729$.

*Vérification pour $64$ :* ses diviseurs sont $1, 2, 4, 8, 16, 32, 64$, soit exactement $7$.

**Conclusion.**

$$64 + 729 = \boxed{793}.$$
