---
id: "11625"
title: "Amour et respect chez les Xantiens"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [fonctions, composition, logique, raisonnement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 2, exercices du groupe B, exercice 7 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Les Xantiens sont les habitants de la planète Xanta. Ils sont peut-être en nombre infini. Un Xantien peut éprouver deux sortes de sentiments, envers lui-même ou envers un autre Xantien : l'**amour** et le **respect**. On a observé que :

- chaque Xantien aime un et un seul Xantien, et respecte un et un seul Xantien ;
- si $A$ aime $B$, alors tout Xantien qui respecte $A$ aime aussi $B$ ;
- si $A$ respecte $B$, alors tout Xantien qui aime $A$ respecte aussi $B$ ;
- chaque Xantien est aimé par au moins un Xantien.

Est-il vrai que chaque Xantien respecte le Xantien qu'il aime ?

## Hints

1. Pour un Xantien $x$, note $a(x)$ le Xantien que $x$ aime et $r(x)$ celui qu'il respecte. Traduis la deuxième et la troisième observation par des égalités entre ces notations.
2. Tu dois trouver $a(r(x)) = a(x)$ et $r(a(x)) = r(x)$ pour tout Xantien $x$.
3. Prends un Xantien $y$, et un Xantien $z$ qui l'aime : $y = a(z)$. Calcule $a(y) = a(a(z))$ en utilisant les deux égalités.

## Solution

**La réponse est oui**, et même mieux : chaque Xantien s'aime lui-même et se respecte lui-même.

**Des notations.** Pour chaque Xantien $x$, notons $a(x)$ le Xantien que $x$ aime, et $r(x)$ le Xantien que $x$ respecte. D'après la première observation, ces Xantiens existent et sont uniques. La question est de savoir si $r(x) = a(x)$ pour tout Xantien $x$.

**Traduction de la deuxième observation.** Soit $x$ un Xantien. Il respecte $A = r(x)$, et $A$ aime $B = a(A)$. D'après la deuxième observation, $x$ aime aussi $B$. Comme $x$ n'aime qu'un seul Xantien, $a(x) = B$ :

$$a(r(x)) = a(x) \qquad \text{pour tout Xantien } x. \qquad (1)$$

**Traduction de la troisième observation.** Soit $x$ un Xantien. Il aime $A = a(x)$, et $A$ respecte $B = r(A)$. D'après la troisième observation, $x$ respecte aussi $B$, et comme $x$ ne respecte qu'un seul Xantien :

$$r(a(x)) = r(x) \qquad \text{pour tout Xantien } x. \qquad (2)$$

**Chacun s'aime lui-même.** Soit $y$ un Xantien. D'après la quatrième observation, il existe un Xantien $z$ qui aime $y$, c'est-à-dire $y = a(z)$. Alors

$$a(y) = a(a(z)) \overset{(1)}{=} a(r(a(z))) \overset{(2)}{=} a(r(z)) \overset{(1)}{=} a(z) = y.$$

On a utilisé $(1)$ avec $x = a(z)$, puis $(2)$ avec $x = z$, puis $(1)$ avec $x = z$. Ainsi $a(y) = y$ : chaque Xantien s'aime lui-même.

**Chacun se respecte lui-même.** Soit $x$ un Xantien. D'après $(1)$, $a(r(x)) = a(x)$. Or $a$ ne change aucun Xantien, donc $a(r(x)) = r(x)$ et $a(x) = x$. Il reste $r(x) = x$.

**Conclusion : oui. Chaque Xantien aime et respecte un seul Xantien, lui-même. En particulier, il respecte celui qu'il aime.**

## Going further

La quatrième observation est indispensable. Imaginons trois Xantiens $X$, $Y$, $Z$ : chacun aime $X$ et respecte $Y$. On vérifie les trois premières observations : par exemple, si $A$ aime $B$, alors $B = X$, et tout Xantien aime $X$. Mais $Y$ et $Z$ ne sont aimés par personne, et $Z$ ne respecte pas celui qu'il aime.
