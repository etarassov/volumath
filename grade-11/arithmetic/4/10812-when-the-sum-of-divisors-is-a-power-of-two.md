---
id: "10812"
title: "Quand la somme des diviseurs est une puissance de 2"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [diviseurs, somme-des-diviseurs, puissances-de-deux, decomposition-en-facteurs-premiers, factorisation, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 4 (arithmétique)"
  reference: "2017-10_ofm-2013-2014-envoi-4.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2013-2014-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier.

Montrer que si la somme de tous les diviseurs positifs de $n$ est une puissance de deux, alors le nombre de diviseurs positifs de $n$ est lui aussi une puissance de deux.

*Les puissances de deux sont les nombres $1, 2, 4, 8, 16, \ldots$, c'est-à-dire $2^k$ avec $k \geqslant 0$.*

## Hints

1. Teste sur des exemples : pour $n = 3$, $n = 7$ et $n = 21$, calcule la somme des diviseurs et le nombre de diviseurs.
2. Écris $n = p_1^{\alpha_1} \times \cdots \times p_k^{\alpha_k}$. Montre que la somme des diviseurs de $n$ est le produit des sommes $1 + p_i + p_i^2 + \cdots + p_i^{\alpha_i}$, et que le nombre de diviseurs est le produit des $\alpha_i + 1$.
3. Chacune des sommes $1 + p + \cdots + p^{\alpha}$ doit alors être une puissance de deux. Montre que $p$ ne peut pas valoir $2$.
4. Si $\alpha + 1$ avait un facteur premier impair $q$, découpe la somme $1 + p + \cdots + p^{\alpha}$ en paquets de $q$ termes consécutifs, et mets $1 + p + \cdots + p^{q-1}$ en facteur. Ce nombre est-il pair ou impair ?

## Solution

Notons $\sigma(n)$ la somme des diviseurs positifs de $n$ et $\tau(n)$ leur nombre. Par exemple $\sigma(21) = 1 + 3 + 7 + 21 = 32$ et $\tau(21) = 4$ : ce sont bien deux puissances de deux.

**Un fait utile.** Un diviseur d'une puissance de deux est une puissance de deux : d'après l'unicité de la décomposition en facteurs premiers, son seul facteur premier possible est $2$. En particulier, **une puissance de deux n'a pas de diviseur impair autre que $1$.**

Le cas $n = 1$ est immédiat : $\sigma(1) = 1$ et $\tau(1) = 1 = 2^0$. On suppose désormais $n \geqslant 2$, et on écrit sa décomposition en facteurs premiers
$$n = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k},$$
où $p_1, \ldots, p_k$ sont des nombres premiers distincts et $\alpha_1, \ldots, \alpha_k \geqslant 1$.

### Étape 1 : deux formules

Les diviseurs positifs de $n$ sont exactement les nombres $p_1^{\beta_1} \times \cdots \times p_k^{\beta_k}$ avec $0 \leqslant \beta_i \leqslant \alpha_i$ pour chaque $i$, et deux choix différents des exposants donnent deux diviseurs différents (unicité de la décomposition).

- Pour chaque $i$, il y a $\alpha_i + 1$ choix de l'exposant $\beta_i$. Donc
$$\tau(n) = (\alpha_1 + 1)(\alpha_2 + 1) \cdots (\alpha_k + 1) .$$
- Notons $S_i = 1 + p_i + p_i^2 + \cdots + p_i^{\alpha_i}$. Quand on développe le produit $S_1 \times S_2 \times \cdots \times S_k$, on choisit un terme $p_i^{\beta_i}$ dans chaque parenthèse et on les multiplie : on obtient chaque diviseur de $n$ exactement une fois. Donc
$$\sigma(n) = S_1 \times S_2 \times \cdots \times S_k .$$

*Exemple :* pour $n = 12 = 2^2 \times 3$, on a $(1 + 2 + 4)(1 + 3) = 28 = 1 + 2 + 3 + 4 + 6 + 12$.

À partir de maintenant, on suppose que $\sigma(n)$ est une puissance de deux.

### Étape 2 : chaque $S_i$ est une puissance de deux paire

Chaque $S_i$ divise $\sigma(n)$, donc c'est une puissance de deux d'après le fait utile. De plus $S_i \geqslant 1 + p_i \geqslant 3$, et une puissance de deux au moins égale à $3$ est paire. **Chaque $S_i$ est donc pair.**

### Étape 3 : aucun $p_i$ ne vaut $2$

Si $p_i = 2$, alors $S_i = 1 + 2 + 4 + \cdots + 2^{\alpha_i}$ est la somme de $1$ et de nombres pairs : il est impair. C'est contraire à l'étape 2. **Tous les $p_i$ sont donc impairs.**

### Étape 4 : chaque $\alpha_i + 1$ est une puissance de deux

Fixons un indice $i$ et notons, pour alléger, $p = p_i$ et $\alpha = \alpha_i$. Supposons par l'absurde que $\alpha + 1$ n'est pas une puissance de deux. Il a alors un facteur premier $q$ différent de $2$, donc impair, et on peut écrire $\alpha + 1 = q\,r$ avec $r \geqslant 1$.

On découpe la somme en $r$ paquets de $q$ termes consécutifs :
$$S_i = \left(1 + p + \cdots + p^{q-1}\right) \times \left(1 + p^{q} + p^{2q} + \cdots + p^{(r-1)q}\right) .$$
Vérifions cette égalité. En développant le membre de droite, on obtient la somme des $p^{a + bq}$ avec $0 \leqslant a \leqslant q - 1$ et $0 \leqslant b \leqslant r - 1$. Or tout entier $e$ entre $0$ et $qr - 1 = \alpha$ s'écrit d'une seule façon $e = a + bq$ de cette forme : $b$ est le quotient et $a$ le reste de la division euclidienne de $e$ par $q$. On retrouve donc chaque terme $p^e$ de $S_i$ une fois et une seule.

Ainsi le nombre $T = 1 + p + \cdots + p^{q-1}$ divise $S_i$. Or :

- $T$ est une somme de $q$ termes, tous impairs puisque $p$ est impair, et $q$ est impair : **$T$ est impair** ;
- $T \geqslant 1 + p > 1$.

Donc $T$ est un diviseur impair, différent de $1$, de la puissance de deux $S_i$. C'est impossible d'après le fait utile. **Donc $\alpha_i + 1$ est une puissance de deux**, et cela pour chaque $i$.

### Conclusion

D'après l'étape 1, $\tau(n) = (\alpha_1 + 1) \cdots (\alpha_k + 1)$ est un produit de puissances de deux : **c'est une puissance de deux.**

## Going further

1. La réciproque est fausse : trouve un entier $n$ dont le nombre de diviseurs est une puissance de deux, mais dont la somme des diviseurs n'en est pas une.
2. On peut en dire beaucoup plus. Montre que si $\sigma(n)$ est une puissance de deux, alors chaque exposant $\alpha_i$ vaut $1$, et chaque $p_i$ est de la forme $2^m - 1$. *Indication : si $\alpha + 1$ est un multiple de $4$, montre comme à l'étape 4 que $1 + p + p^2 + p^3 = (1 + p)(1 + p^2)$ divise $S_i$, puis regarde le reste de $1 + p^2$ dans la division par $4$.*
3. Vérifie que $n = 3 \times 7 \times 31 = 651$ convient, en montrant que $\sigma(651) = 1024$.
