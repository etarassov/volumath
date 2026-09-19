---
id: "4417"
title: "Le produit qui s'écrit AABB"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [divisibilite, cryptarithme, nombre-premier, chiffres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Divisibility"
  reference: "Handout-1265-1276.pdf, problème 2 (réponse dans Handout-1271-1276.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1265-1276.pdf"
---

## Statement

Tom a multiplié deux nombres de deux chiffres au tableau. Puis il a remplacé chaque chiffre par
une lettre, de sorte que deux chiffres différents soient devenus deux lettres différentes, et
que deux chiffres égaux soient devenus la même lettre.

Il a obtenu

$$\overline{AB} \times \overline{CD} = \overline{EEFF},$$

où $\overline{AB}$ désigne le nombre à deux chiffres dont le chiffre des dizaines est $A$ et
celui des unités $B$, et de même pour les autres.

Montrer que Tom s'est trompé dans sa multiplication.

## Hints

1. Écris $\overline{EEFF}$ en fonction de $E$ et de $F$ : $\overline{EEFF} = 1000E + 100E + 10F + F$.
   Peux-tu factoriser ?
2. Tu trouves que $\overline{EEFF}$ est divisible par $11$, et $11$ est un nombre premier. Que
   peut-on alors dire de $\overline{AB}$ ou de $\overline{CD}$ ?
3. Quels nombres à deux chiffres sont des multiples de $11$ ? Qu'ont-ils tous de particulier ?
   Est-ce compatible avec la règle des lettres ?

## Solution

**Le nombre de droite est un multiple de $11$.** En effet,

$$\overline{EEFF} = 1000E + 100E + 10F + F = 1100E + 11F = 11 \times (100E + F).$$

Donc $11$ divise $\overline{EEFF}$, c'est-à-dire $11$ divise le produit
$\overline{AB} \times \overline{CD}$.

**Un nombre premier qui divise un produit.** Le nombre $11$ est premier. Or, lorsqu'un nombre
premier divise un produit de deux entiers, il divise forcément l'un des deux facteurs. Donc
$11$ divise $\overline{AB}$, ou bien $11$ divise $\overline{CD}$.

**Les multiples de $11$ à deux chiffres.** Ce sont

$$11,\ 22,\ 33,\ 44,\ 55,\ 66,\ 77,\ 88,\ 99.$$

Ils ont tous leurs **deux chiffres égaux**.

**La contradiction.** Les lettres $A$ et $B$ sont deux lettres différentes, donc, d'après la
règle énoncée, elles remplacent deux chiffres différents : $A \neq B$. Le nombre
$\overline{AB}$ n'a donc pas ses deux chiffres égaux, et il n'est pas un multiple de $11$.
Pour la même raison, $C \neq D$ et $\overline{CD}$ n'est pas un multiple de $11$ non plus.

Aucun des deux facteurs n'est divisible par $11$, alors que leur produit l'est. C'est
impossible.

**Tom s'est donc forcément trompé dans sa multiplication.**

## Going further

Le point clé est que $11$ est premier. Le raisonnement tomberait à l'eau avec un nombre composé :
$6$ divise $4 \times 9 = 36$ sans diviser ni $4$ ni $9$.
