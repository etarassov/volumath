---
id: "11832"
title: "Onze entiers, des signes + et −, et un multiple de 2021"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, sous-ensembles, somme, restes, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 4 ; corrigé 2022-05_corrige-envoi-5.pdf. Le même problème, avec 2014 au lieu de 2021, figure aussi dans stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 matin (Alix Deleporte), exercice 16."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Aurélien écrit $11$ entiers naturels au tableau. Montrer qu'il peut choisir certains de ces entiers (au moins un) et placer des signes $+$ et $-$ entre eux de sorte que le résultat soit divisible par $2021$.

## Hints

1. Combien y a-t-il de façons de choisir une partie des $11$ entiers (en comptant la partie vide) ? Comparer ce nombre à $2021$.
2. Deux parties dont les sommes ont le même reste dans la division par $2021$ : que dire de la différence de ces deux sommes ?
3. Si un entier est dans les deux parties, il disparaît de la différence.

## Solution

**Compter les parties.** Pour former une partie des $11$ entiers, on décide pour chacun s'il en fait partie ou non : cela fait $2^{11} = 2048$ parties, en comptant la partie vide. À chaque partie $S$ on associe la somme $s(S)$ de ses éléments (la partie vide a pour somme $0$).

**Le principe des tiroirs.** Dans la division par $2021$, il y a $2021$ restes possibles : $0, 1, \ldots, 2020$. On a $2048$ parties et seulement $2021$ restes, donc deux parties différentes $S$ et $T$ ont des sommes de même reste. La différence $s(S) - s(T)$ est alors divisible par $2021$.

**Construire l'expression.** Un entier qui appartient à la fois à $S$ et à $T$ apparaît dans les deux sommes et disparaît de la différence. Il reste

$$s(S) - s(T) = (\text{somme des entiers de } S \text{ qui ne sont pas dans } T) - (\text{somme des entiers de } T \text{ qui ne sont pas dans } S).$$

Aurélien choisit donc les entiers qui sont dans une seule des deux parties : il met un signe $+$ devant ceux de $S$ et un signe $-$ devant ceux de $T$. Comme $S \neq T$, il choisit au moins un entier.

Il reste un détail : le premier entier écrit n'a pas de signe devant lui, il est compté positivement. Quitte à échanger les noms de $S$ et $T$ (ce qui change seulement le signe du résultat, qui reste un multiple de $2021$), on peut supposer que $S$ contient un entier qui n'est pas dans $T$. Aurélien l'écrit en premier.

**Conclusion.** Le résultat obtenu est $s(S) - s(T)$, qui est divisible par $2021$.

## Going further

- Le même raisonnement marche-t-il avec $10$ entiers au lieu de $11$ ?
- Trouver $10$ entiers naturels pour lesquels c'est impossible. (On pourra essayer $1, 2, 4, \ldots, 512$.)
