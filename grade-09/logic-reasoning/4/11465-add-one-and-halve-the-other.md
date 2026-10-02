---
id: "11465"
title: "Ajouter 1 à l'un, diviser l'autre par 2"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [monovariant, somme, absurde, inegalites, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 4 (combinatoire)"
  reference: "2025-03_Sujet-envoi-4-2024-2025.pdf, Exercices Juniors, exercice 4 (repris en Seniors, exercice 11) ; corrigé 2025-05_Corrige-envoi-4-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/03/Sujet-envoi-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-03_Sujet-envoi-4-2024-2025.pdf"
---

## Statement

Anatole écrit au tableau deux nombres réels strictement positifs. À chaque opération, il ajoute $1$ à
l'un des deux nombres et divise l'autre par $2$ : il efface les deux anciens nombres et écrit les deux
nouveaux. C'est lui qui choisit, à chaque fois, quel nombre augmente et quel nombre est divisé.

Montrer que, quoi qu'il fasse, il finira par écrire au tableau un nombre strictement plus petit que
$\frac{2025}{2024}$.

## Hints

1. Regarde la somme des deux nombres du tableau. De combien change-t-elle lors d'une opération ?
2. Si le nombre divisé par $2$ est $x$, la somme change de $1 - \frac{x}{2}$. Quand ce changement est-il
   négatif ?
3. Raisonne par l'absurde : suppose que tous les nombres écrits restent supérieurs ou égaux à
   $\frac{2025}{2024}$. Montre que la somme baisse alors d'au moins $\frac{1}{2024}$ à chaque opération.
   Pourquoi est-ce mieux que de savoir seulement qu'elle baisse ?

## Solution

Posons $c = \frac{2025}{2024} = 1 + \frac{1}{2024}$.

**On raisonne par l'absurde.** Supposons qu'Anatole puisse continuer indéfiniment sans jamais écrire un
nombre strictement plus petit que $c$. Autrement dit, tous les nombres écrits au tableau, à tout moment,
sont supérieurs ou égaux à $c$.

Notons $S_0$ la somme des deux nombres de départ, et $S_N$ la somme des deux nombres écrits après $N$
opérations.

**Une opération fait baisser la somme d'au moins $\frac{1}{2024}$.** Avant une opération, le tableau
porte deux nombres $x$ et $y$. Disons qu'Anatole divise $x$ par $2$ et ajoute $1$ à $y$. Il écrit donc
$\frac{x}{2}$ et $y + 1$, et la somme change de

$$\left(\frac{x}{2} + y + 1\right) - (x + y) = 1 - \frac{x}{2} .$$

Le nombre $\frac{x}{2}$ vient d'être écrit au tableau, donc d'après notre hypothèse
$\frac{x}{2} \geqslant c = 1 + \frac{1}{2024}$. Par conséquent

$$1 - \frac{x}{2} \leqslant 1 - \left(1 + \frac{1}{2024}\right) = -\frac{1}{2024} .$$

À chaque opération, la somme baisse donc d'**au moins** $\frac{1}{2024}$.

**La somme finit par devenir négative.** Après $N$ opérations, elle a baissé au moins $N$ fois de
$\frac{1}{2024}$, donc

$$S_N \leqslant S_0 - \frac{N}{2024} .$$

Choisissons un entier $N$ plus grand que $2024 \times S_0$. Alors $\frac{N}{2024} > S_0$, et donc
$S_N < 0$.

Mais $S_N$ est la somme de deux nombres strictement positifs : elle est strictement positive. C'est une
contradiction.

**Conclusion.** L'hypothèse de départ est fausse. Quoi qu'il fasse, Anatole finira par écrire au tableau
un nombre strictement plus petit que $\frac{2025}{2024}$.

## Going further

**Pourquoi baisser « d'au moins $\frac{1}{2024}$ » et pas seulement « baisser » ?** Beaucoup d'élèves ont
montré que la somme diminue à chaque opération, puis en ont conclu qu'elle devenait négative. Cette
conclusion serait juste pour une somme qui ne prend que des valeurs **entières** : un entier qui baisse
à chaque fois baisse d'au moins $1$. Mais ici les nombres sont réels. La suite

$$2,\quad 1 + \frac{1}{2},\quad 1 + \frac{1}{3},\quad 1 + \frac{1}{4},\quad \ldots$$

diminue à chaque étape et pourtant reste toujours plus grande que $1$. Il faut donc une baisse
**d'au moins une quantité fixe** pour conclure.

Le nombre $2025$ ne joue aucun rôle particulier : le même raisonnement marche avec n'importe quel nombre
strictement plus grand que $1$ à la place de $\frac{2025}{2024}$.
