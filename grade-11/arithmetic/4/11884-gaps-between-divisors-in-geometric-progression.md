---
id: "11884"
title: "Les écarts entre diviseurs forment une suite géométrique"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [diviseurs, nombres-premiers, suite-geometrique, puissances, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Seniors, exercice 16 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Coquille dans la définition de l'énoncé, « u_{i+1} = q u_k » au lieu de « u_{i+1} = q u_i », corrigée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Soit $n > 1$ un entier, et soient $1 = d_1 < d_2 < \cdots < d_k = n$ tous ses diviseurs positifs. On considère les $k - 1$ écarts
$$d_2 - d_1, \quad d_3 - d_2, \quad \ldots, \quad d_k - d_{k-1}.$$
Trouver tous les entiers $n > 1$ pour lesquels ces écarts, rangés dans un ordre bien choisi, forment une suite géométrique.

(Une suite $u_1, u_2, \ldots, u_m$ est géométrique s'il existe un réel $q$ tel que $u_{i+1} = q\,u_i$ pour tout $1 \leqslant i < m$. Une suite d'un seul terme est géométrique.)

## Hints

1. Essayer $n = 8$, $n = 9$, puis $n = 6$ et $n = 12$. Quelle famille d'entiers semble convenir ?
2. Soit $p$ le plus petit nombre premier qui divise $n$. Que valent $d_2$ et $d_{k-1}$ ? En déduire deux écarts faciles à écrire, et leur quotient.
3. En rangeant la suite dans l'ordre croissant, de raison $q > 1$, montrer que $q$ est rationnel, puis que $q$ est un entier.
4. Si un autre nombre premier $r$ divise $n$, alors $r$ divise $q$. Quel écart n'est pas divisible par $r$ ? Où peut-il se trouver dans la suite ?

## Solution

**Réponse : les puissances de nombres premiers**, $n = p^t$ avec $p$ premier et $t \geqslant 1$.

**Ces entiers conviennent.** Si $n = p^t$, ses diviseurs sont $1, p, p^2, \ldots, p^t$, et les écarts sont
$$p - 1, \quad p(p - 1), \quad p^2(p - 1), \quad \ldots, \quad p^{t-1}(p - 1),$$
une suite géométrique de raison $p$, déjà dans le bon ordre. (Pour $t = 1$, il n'y a qu'un écart.)

**Réciproquement**, soit $n$ un entier qui convient. Si $n$ est premier, c'est une puissance de nombre premier. On suppose donc $n$ non premier, de sorte que $k \geqslant 3$ et qu'il y a au moins deux écarts. Tous les écarts sont des entiers strictement positifs.

**Étape 1 : deux écarts connus.** Soit $p$ le plus petit nombre premier qui divise $n$. Le plus petit diviseur de $n$ après $1$ est $d_2 = p$. Les diviseurs vont par paires $d$ et $n/d$, donc le plus grand diviseur avant $n$ est $d_{k-1} = n/p$. Comme $k \geqslant 3$, les écarts $d_2 - d_1$ et $d_k - d_{k-1}$ sont deux écarts différents de la liste, et
$$d_2 - d_1 = p - 1, \qquad d_k - d_{k-1} = n - \frac{n}{p} = \frac{n}{p}\,(p - 1).$$
Leur quotient est $\dfrac{n}{p}$, un entier strictement plus grand que $1$ car $n$ n'est pas premier.

**Étape 2 : la raison est un entier.** On range les écarts en suite géométrique $u_1, u_2, \ldots, u_m$ de raison $q$, avec $m = k - 1 \geqslant 2$. Comme tous les termes sont positifs, $q > 0$. Quitte à lire la suite à l'envers, ce qui remplace $q$ par $1/q$, on peut supposer $q \geqslant 1$. Alors $u_j = u_1 q^{j-1}$ pour tout $j$.

L'écart $p - 1$ est un certain $u_i$, et l'écart $\frac{n}{p}(p - 1)$ est un certain $u_j$ avec $j \neq i$. Leur quotient vaut $q^{j - i} = \frac{n}{p} > 1$. Donc $q \neq 1$, d'où $q > 1$, puis $j > i$. En posant $t = j - i \geqslant 1$ :
$$q^t = \frac{n}{p}.$$
D'autre part $q = u_2 / u_1$ est un quotient d'entiers. On l'écrit sous forme irréductible $q = a/b$. Alors $a^t = \frac{n}{p}\,b^t$, donc $b^t$ divise $a^t$. Si $b > 1$, un nombre premier $s$ divise $b$, donc divise $a^t$, donc divise $a$ (un nombre premier qui divise un produit divise l'un des facteurs). C'est impossible, car $a$ et $b$ n'ont pas de diviseur commun autre que $1$. Donc $b = 1$ : **$q$ est un entier**, au moins égal à $2$.

En particulier, $u_j = u_1 q^{j-1}$ est un multiple de $q$ pour tout $j \geqslant 2$.

**Étape 3 : $n$ n'a pas d'autre facteur premier que $p$.** Supposons qu'un nombre premier $r \neq p$ divise $n$. Par minimalité de $p$, on a $r > p$. Comme $r$ divise $n = p \times \frac{n}{p}$ et ne divise pas $p$, il divise $\frac{n}{p} = q^t$, donc il divise $q$.

Par l'étape 2, tous les termes $u_2, \ldots, u_m$ sont des multiples de $q$, donc de $r$. Or l'écart $p - 1$ n'est pas divisible par $r$, car $0 < p - 1 < r$. C'est donc forcément le premier terme : $u_1 = p - 1$. Tous les autres écarts sont alors divisibles par $r$, et leur somme aussi. La somme de tous les écarts vaut $d_k - d_1 = n - 1$ (les termes se simplifient de proche en proche), donc la somme des autres vaut
$$(n - 1) - (p - 1) = n - p = p\left(\frac{n}{p} - 1\right).$$
Ainsi $r$ divise $p\left(\frac{n}{p} - 1\right)$, donc $r$ divise $p$ ou $\frac{n}{p} - 1$. Mais $r$ ne divise pas $p$, et $r$ ne divise pas $\frac{n}{p} - 1$ puisqu'il divise $\frac{n}{p}$ (il diviserait leur différence, $1$). C'est une contradiction.

**Conclusion.** Le seul facteur premier de $n$ est $p$. Les entiers cherchés sont exactement les puissances de nombres premiers $n = p^t$, avec $t \geqslant 1$.

## Going further

Pour $n = 12$, les écarts sont $1, 1, 1, 2, 6$. Montrer sans la preuve générale qu'on ne peut pas les ranger en suite géométrique. Et si l'on demande que les écarts, dans un certain ordre, forment une suite **arithmétique** ? Avec un ou deux écarts, c'est automatique : c'est le cas de $n = p$ et $n = p^2$. Avec au moins trois écarts, une recherche par ordinateur jusqu'à $20\,000$ ne trouve que $n = 10$, dont les écarts sont $1$, $3$ et $5$. Le démontrer est un vrai défi.
