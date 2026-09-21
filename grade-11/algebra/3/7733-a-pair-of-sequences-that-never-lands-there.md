---
id: "7733"
title: "Deux suites qui n'atteignent jamais (7 ; 2)"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [invariant, suites, somme de carres, identite remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mardi 19 après-midi (Arsène Pierrot), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On définit deux suites $(u_n)$ et $(v_n)$ par

$$u_0 = 6, \qquad v_0 = 4 ,$$

et, pour tout entier naturel $n$,

$$u_{n+1} = \frac{3}{5} u_n - \frac{4}{5} v_n \qquad \text{et} \qquad v_{n+1} = \frac{4}{5} u_n + \frac{3}{5} v_n .$$

Existe-t-il un entier $k$ tel que $u_k = 7$ et $v_k = 2$ ?

## Hints

1. Calcule $u_1$ et $v_1$, puis $u_2$ et $v_2$. Les nombres n'ont rien de régulier : cherche plutôt une quantité qui ne bouge pas.
2. Les coefficients $\tfrac35$ et $\tfrac45$ font penser au triangle rectangle de côtés $3$, $4$, $5$. Essaie donc de calculer $u_{n+1}^2 + v_{n+1}^2$.
3. Développe soigneusement les deux carrés et additionne. Les doubles produits se simplifient-ils ?
4. Compare $u_0^2 + v_0^2$ et $7^2 + 2^2$.

## Solution

**Non, il n'existe pas de tel entier $k$.**

**L'invariant : la somme des carrés.** Calculons $u_{n+1}^2 + v_{n+1}^2$.

$$u_{n+1}^2 = \left(\frac{3u_n - 4v_n}{5}\right)^2 = \frac{9u_n^2 - 24 u_n v_n + 16 v_n^2}{25} ,$$

$$v_{n+1}^2 = \left(\frac{4u_n + 3v_n}{5}\right)^2 = \frac{16u_n^2 + 24 u_n v_n + 9 v_n^2}{25} .$$

En additionnant, les doubles produits $-24u_nv_n$ et $+24u_nv_n$ disparaissent :

$$u_{n+1}^2 + v_{n+1}^2 = \frac{(9+16)u_n^2 + (16+9)v_n^2}{25} = \frac{25u_n^2 + 25v_n^2}{25} = u_n^2 + v_n^2 .$$

**La quantité $u_n^2 + v_n^2$ ne change donc jamais.**

**On calcule sa valeur.** Au départ,

$$u_0^2 + v_0^2 = 6^2 + 4^2 = 36 + 16 = 52 .$$

Donc pour tout entier $n$, on a $u_n^2 + v_n^2 = 52$.

**On conclut.** Si l'on avait $u_k = 7$ et $v_k = 2$ pour un certain $k$, alors

$$u_k^2 + v_k^2 = 49 + 4 = 53 .$$

Or cette quantité vaut $52$, et $52 \neq 53$.

**Conclusion : aucun entier $k$ ne donne $u_k = 7$ et $v_k = 2$.**

## Going further

Les coefficients ne sont pas choisis au hasard. Si l'on voit le couple $(u_n, v_n)$ comme un point du plan, le passage de $(u_n, v_n)$ à $(u_{n+1}, v_{n+1})$ est exactement une **rotation** de centre l'origine, d'angle $\theta$ tel que $\cos\theta = \tfrac35$ et $\sin\theta = \tfrac45$. Une rotation conserve les distances à l'origine, c'est-à-dire précisément $\sqrt{u^2+v^2}$ : voilà d'où vient l'invariant.

Les points $(u_n, v_n)$ restent donc tous sur le cercle de centre l'origine et de rayon $\sqrt{52}$, alors que le point $(7 ; 2)$ est sur le cercle de rayon $\sqrt{53}$.
