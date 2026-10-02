---
id: "0776"
title: "Les chiffres de 10²⁰⁰⁶ − 2006"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [puissances-de-dix, chiffres, somme-des-chiffres, soustraction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 1, d'après Olympiades académiques de Versailles, 2006"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

On pose

$$N = 10^{2006} - 2006$$

1. Quel est le nombre de chiffres de $N$ ?
2. Quelle est la somme des chiffres de $N$ ?

## Hints

1. Personne ne peut écrire ce nombre en entier. Commence par regarder le même calcul avec des puissances plus petites : combien valent $10^4 - 2006$, puis $10^5 - 2006$, puis $10^6 - 2006$ ?
2. Tu devrais voir apparaître toujours la même fin, précédée de plus en plus de chiffres $9$.
3. Pour démontrer ce que tu as deviné, coupe la soustraction en deux : $10^{2006} - 2006 = (10^{2006} - 10^4) + (10^4 - 2006)$.
4. $10^{2006} - 10^4 = 10^4 \times (10^{2002} - 1)$, et $10^{2002} - 1$ s'écrit uniquement avec des chiffres $9$. Combien y en a-t-il ?
5. Pour la somme des chiffres, il suffit de compter les $9$, puis d'ajouter les quatre derniers chiffres.

## Solution

**Étape 1. Regarder de petits cas.**

$$10^4 - 2006 = 10\,000 - 2006 = 7994$$
$$10^5 - 2006 = 100\,000 - 2006 = 97\,994$$
$$10^6 - 2006 = 1\,000\,000 - 2006 = 997\,994$$

À chaque fois qu'on augmente l'exposant de $1$, un chiffre $9$ de plus apparaît devant, et la fin $7994$ ne bouge pas. On devine donc que $N$ s'écrit avec une longue file de $9$ suivie de $7994$. Il reste à le démontrer et à compter les $9$.

**Étape 2. Couper la soustraction en deux.**

$$N = 10^{2006} - 2006 = \left(10^{2006} - 10^4\right) + \left(10^4 - 2006\right) = \left(10^{2006} - 10^4\right) + 7994$$

Le premier morceau se factorise :

$$10^{2006} - 10^4 = 10^4 \times \left(10^{2002} - 1\right)$$

Or $10^{2002} - 1$ est le nombre écrit avec **2002 chiffres $9$** (de la même façon que $10^4 - 1 = 9999$ s'écrit avec quatre $9$). Multiplier par $10^4$ revient à écrire quatre zéros derrière :

$$10^{2006} - 10^4 = \underbrace{99\ldots9}_{2002\text{ chiffres}}0000$$

**Étape 3. Ajouter $7994$.**

Comme $7994 < 10\,000$, cette addition ne touche que les quatre derniers chiffres, ceux qui valent $0$, et elle ne produit aucune retenue :

$$N = \underbrace{99\ldots9}_{2002\text{ chiffres}}7994$$

**Réponse à la question 1.** Le nombre $N$ a

$$2002 + 4 = 2006\text{ chiffres.}$$

**Réponse à la question 2.** L'écriture de $N$ contient $2002$ chiffres $9$, puis les chiffres $7$, $9$, $9$ et $4$. La somme de tous ses chiffres vaut donc

$$2002 \times 9 + (7 + 9 + 9 + 4) = 18\,018 + 29 = 18\,047$$

**Conclusion.** $N$ s'écrit avec $2006$ chiffres et la somme de ses chiffres vaut $18\,047$.

## Going further

Le nombre $N$ est-il divisible par $9$ ? Par $3$ ? (La somme de ses chiffres suffit à répondre : $18\,047 = 9 \times 2005 + 2$.)
