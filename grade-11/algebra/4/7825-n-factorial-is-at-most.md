---
id: "7825"
title: "n! est au plus la moyenne élevée à la puissance n"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [factorielle, inegalite, appariement, produit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe A, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Rappel : pour un entier $n \geq 1$, on note $n! = 1 \times 2 \times \cdots \times n$.

Montrer que pour tout entier $n \geq 1$,
$$n! \leq \left(\frac{n+1}{2}\right)^{n} .$$

## Hints

1. Vérifie d'abord sur de petites valeurs : $n = 1$, $n = 2$, $n = 3$, $n = 4$. Où l'inégalité
   est-elle une égalité ?
2. La quantité $\dfrac{n+1}{2}$ est la moyenne de $1$ et de $n$. C'est aussi la moyenne de $2$
   et de $n-1$, et de $3$ et de $n-2$... Que suggère cette remarque ?
3. Pour deux réels positifs $u$ et $v$ de somme fixée $s$, le produit $uv$ est maximal quand
   $u = v$. Démontre-le avec $(u - v)^2 \geq 0$.
4. Plutôt que de traiter séparément $n$ pair et $n$ impair, calcule $(n!)^2$ en écrivant le
   produit une fois dans l'ordre croissant et une fois dans l'ordre décroissant.

## Solution

**Étape 1 : un lemme sur les produits à somme fixée.**

Soient $u$ et $v$ deux réels positifs. De $(u - v)^2 \geq 0$ on tire
$$u^2 - 2uv + v^2 \geq 0, \qquad \text{donc} \qquad (u+v)^2 \geq 4uv ,$$
c'est-à-dire
$$uv \leq \left(\frac{u+v}{2}\right)^2 . \qquad (\star)$$

**Étape 2 : on apparie les facteurs de $n!$.**

Écrivons le produit $n!$ deux fois, une fois dans l'ordre croissant et une fois dans l'ordre
décroissant :
$$n! = 1 \times 2 \times \cdots \times n, \qquad n! = n \times (n-1) \times \cdots \times 1 .$$

En multipliant terme à terme les deux lignes, on obtient
$$(n!)^2 = \prod_{k=1}^{n} k\,(n + 1 - k) .$$

Autrement dit, le facteur numéro $k$ est apparié avec le facteur $n+1-k$.

**Étape 3 : on majore chaque paire.**

Pour chaque $k$ entre $1$ et $n$, les deux nombres $k$ et $n+1-k$ sont positifs et leur somme
vaut
$$k + (n + 1 - k) = n + 1 ,$$
qui ne dépend pas de $k$. Le lemme $(\star)$ donne donc
$$k\,(n+1-k) \leq \left(\frac{n+1}{2}\right)^2 .$$

**Étape 4 : on multiplie les $n$ majorations.**

Tous les membres sont positifs, donc
$$(n!)^2 = \prod_{k=1}^{n} k\,(n+1-k)
 \leq \prod_{k=1}^{n} \left(\frac{n+1}{2}\right)^2
 = \left(\frac{n+1}{2}\right)^{2n} .$$

**Étape 5 : on conclut.**

Les deux membres sont positifs, et la fonction racine carrée est croissante sur
$[0, +\infty[$. En prenant la racine carrée :
$$n! \leq \left(\frac{n+1}{2}\right)^{n} .$$

**Cas d'égalité.** Il faut l'égalité dans chacune des $n$ majorations, donc $k = n+1-k$ pour
tout $k$, ce qui n'est possible que si $n = 1$. Et en effet $1! = 1 = \left(\frac{2}{2}\right)^1$.
Dès que $n \geq 2$, l'inégalité est stricte : par exemple $4! = 24 < \left(\frac52\right)^4
= \text{39,0625}$.
