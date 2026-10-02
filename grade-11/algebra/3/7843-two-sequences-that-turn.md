---
id: "7843"
title: "Deux suites qui tournent"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [invariant, suites, somme-de-carres, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On définit deux suites $(u_n)$ et $(v_n)$ par
$$u_0 = 6, \qquad v_0 = 4,$$
et, pour tout entier naturel $n$,
$$u_{n+1} = \frac{3}{5}\,u_n - \frac{4}{5}\,v_n, \qquad
  v_{n+1} = \frac{4}{5}\,u_n + \frac{3}{5}\,v_n .$$

Existe-t-il un entier naturel $k$ tel que $u_k = 7$ et $v_k = 2$ ?

## Hints

1. Calcule $u_1$ et $v_1$, puis $u_2$ et $v_2$. Les valeurs deviennent vite compliquées :
   inutile de continuer, il faut une autre idée.
2. Cherche une quantité qui ne change pas d'un rang au suivant. Les coefficients $\frac35$ et
   $\frac45$ doivent te rappeler quelque chose : $3^2 + 4^2 = 5^2$.
3. Calcule $u_{n+1}^2 + v_{n+1}^2$ en fonction de $u_n$ et $v_n$. Développe soigneusement les
   deux carrés : les doubles produits vont s'annuler.
4. Compare ensuite la valeur de cette quantité au départ et la valeur qu'elle aurait si
   $(u_k, v_k) = (7, 2)$.

## Solution

**Étape 1 : on cherche un invariant.**

Calculons $u_{n+1}^2 + v_{n+1}^2$. Pour alléger, notons $u = u_n$ et $v = v_n$ :
$$u_{n+1} = \frac{3u - 4v}{5}, \qquad v_{n+1} = \frac{4u + 3v}{5} .$$

Alors
$$u_{n+1}^2 + v_{n+1}^2 = \frac{(3u - 4v)^2 + (4u + 3v)^2}{25} .$$

On développe les deux carrés :
$$(3u - 4v)^2 = 9u^2 - 24uv + 16v^2 ,$$
$$(4u + 3v)^2 = 16u^2 + 24uv + 9v^2 .$$

Les doubles produits $-24uv$ et $+24uv$ se compensent, et il reste
$$(3u-4v)^2 + (4u+3v)^2 = 25u^2 + 25v^2 = 25\left(u^2 + v^2\right).$$

Donc
$$u_{n+1}^2 + v_{n+1}^2 = \frac{25\left(u^2+v^2\right)}{25} = u_n^2 + v_n^2 .$$

**La quantité $u_n^2 + v_n^2$ ne dépend pas de $n$ : c'est un invariant.**

**Étape 2 : on l'évalue.**

Au rang $0$ :
$$u_0^2 + v_0^2 = 6^2 + 4^2 = 36 + 16 = 52 .$$

Donc $u_n^2 + v_n^2 = 52$ pour tout entier naturel $n$.

**Étape 3 : on conclut.**

Si l'on avait $u_k = 7$ et $v_k = 2$ pour un certain $k$, on aurait
$$u_k^2 + v_k^2 = 49 + 4 = 53 ,$$
alors que cette quantité vaut $52$. C'est impossible.

**Conclusion.** Il n'existe $\boxed{\text{aucun}}$ entier naturel $k$ tel que $u_k = 7$ et
$v_k = 2$.

## Going further

L'invariant $u^2 + v^2$ a une interprétation géométrique. Si l'on voit $(u_n, v_n)$ comme les
coordonnées d'un point $M_n$ du plan, la formule de récurrence fait passer de $M_n$ à $M_{n+1}$
par une **rotation** de centre l'origine, dont l'angle $\theta$ vérifie
$\cos\theta = \frac35$ et $\sin\theta = \frac45$. Une rotation conserve les distances à
l'origine : c'est exactement ce que dit l'invariant. Tous les points $M_n$ se promènent sur le
cercle de centre l'origine et de rayon $\sqrt{52}$, et le point $(7, 2)$, situé à la distance
$\sqrt{53}$, n'est tout simplement pas sur ce cercle.
