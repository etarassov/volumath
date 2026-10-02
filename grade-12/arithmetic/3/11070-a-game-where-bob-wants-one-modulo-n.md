---
id: "11070"
title: "Un jeu où Bob veut obtenir 1 modulo n"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [jeu, strategie-gagnante, congruences, petit-theoreme-de-fermat, nombres-premiers, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 6 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf. Le corrigé écrit que le produit est congru à (−1)² x₁² x₂² ; avec yᵢ = p − xᵢ on a en fait xᵢ − yᵢ ≡ 2xᵢ, donc le produit est congru à 4 x₁² x₂². La conclusion ne change pas, car 4^((p−1)/2) = 2^(p−1) ≡ 1 par le petit théorème de Fermat."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Soit $n \geqslant 5$ un entier impair. Alice et Bob jouent au jeu suivant. Chacun leur tour, en commençant par Alice, ils choisissent un entier entre $1$ et $n - 1$ qui n'a pas encore été pris, jusqu'à ce que tous ces entiers soient pris. On note $A$ l'ensemble des entiers choisis par Alice et $B$ l'ensemble des entiers choisis par Bob.

Ensuite, Alice donne à Bob deux entiers distincts $x_1$ et $x_2$ de $A$, puis Bob choisit deux entiers distincts $y_1$ et $y_2$ de $B$. Bob gagne si et seulement si
$$\left(x_1 x_2 (x_1 - y_1)(x_2 - y_2)\right)^{\frac{n-1}{2}} \equiv 1 \pmod n .$$

Pour quelles valeurs de $n$ Bob a-t-il une stratégie gagnante ?

## Hints

1. Si $n$ n'est pas premier, Alice peut prendre un diviseur $d$ de $n$ avec $1 < d < n$. Que se passe-t-il si elle le donne ensuite à Bob comme $x_1$ ?
2. Si $n = p$ est premier, l'exposant $\frac{p-1}{2}$ fait penser au petit théorème de Fermat : il suffit que le produit soit congru à un carré non divisible par $p$.
3. Regroupe les entiers de $1$ à $p - 1$ par paires $\{a,\ p - a\}$. Que vaut $x - (p - x)$ modulo $p$ ?

## Solution

**Réponse :** Bob a une stratégie gagnante si et seulement si $n$ est premier.

Notons $P = x_1 x_2 (x_1 - y_1)(x_2 - y_2)$ et $e = \frac{n-1}{2}$. Comme $n \geqslant 5$, on a $e \geqslant 2$, et Alice choisit $e \geqslant 2$ entiers pendant la première phase : elle peut toujours donner deux entiers distincts à Bob.

**Étape 1 : si $n$ n'est pas premier, Bob ne peut pas gagner à coup sûr.**

Comme $n$ n'est pas premier, il a un diviseur $d$ avec $1 < d < n$. Alice prend $d$ dès son premier tour, puis elle donne $x_1 = d$ et n'importe quel autre de ses entiers comme $x_2$.

Quels que soient $y_1$ et $y_2$, le nombre $d$ divise $P$, donc il divise $P^e$. Si Bob gagnait, $n$ diviserait $P^e - 1$, et donc $d$ aussi, puisque $d$ divise $n$. Alors $d$ diviserait la différence $P^e - (P^e - 1) = 1$, ce qui est impossible car $d > 1$. Alice gagne donc toujours avec cette méthode, et Bob n'a pas de stratégie gagnante.

**Étape 2 : si $n = p$ est premier, Bob a une stratégie gagnante.**

*La stratégie.* Comme $p$ est impair, on a $a \neq p - a$ pour tout $a$, et les entiers de $1$ à $p - 1$ se regroupent en $\frac{p-1}{2}$ paires $\{a,\ p - a\}$. Chaque fois qu'Alice prend un entier $a$, Bob prend $p - a$.

Ce coup est toujours possible. Au début, toutes les paires sont libres. Ensuite, Alice entame une paire et Bob la termine aussitôt. Donc, au moment où Alice joue, chaque paire est soit entièrement prise, soit entièrement libre, et quand elle prend $a$, l'entier $p - a$ est encore libre. À la fin, $B$ contient exactement les nombres $p - x$ pour $x \in A$.

Quand Alice donne $x_1$ et $x_2$, Bob choisit $y_1 = p - x_1$ et $y_2 = p - x_2$, qui sont bien dans $B$ et distincts.

*Pourquoi il gagne.* On a $x_i - y_i = 2x_i - p \equiv 2x_i \pmod p$, donc
$$P \equiv x_1 x_2 \cdot 2x_1 \cdot 2x_2 = (2 x_1 x_2)^2 \pmod p, \qquad \text{puis} \qquad P^{\frac{p-1}{2}} \equiv (2 x_1 x_2)^{p-1} \pmod p .$$
Le nombre premier $p$ ne divise ni $2$ (il est impair), ni $x_1$, ni $x_2$ (ils sont entre $1$ et $p - 1$). D'après le lemme d'Euclide, il ne divise pas $2x_1x_2$. Le petit théorème de Fermat donne alors $(2x_1x_2)^{p-1} \equiv 1 \pmod p$, donc $P^{\frac{p-1}{2}} \equiv 1 \pmod p$ : Bob gagne.

**Conclusion.** Bob a une stratégie gagnante exactement quand $n$ est un nombre premier.

## Going further

Soit $p$ un nombre premier impair et $x$ un entier non divisible par $p$. Montrer que $x^{\frac{p-1}{2}}$ est congru à $1$ ou à $-1$ modulo $p$.

*Piste :* le produit $\left(x^{\frac{p-1}{2}} - 1\right)\left(x^{\frac{p-1}{2}} + 1\right) = x^{p-1} - 1$ est divisible par $p$. On peut montrer de plus que le résultat vaut $1$ exactement quand $x$ est congru à un carré modulo $p$ : c'est le critère d'Euler. C'est pour cela que Bob cherche à rendre le produit égal à un carré.
