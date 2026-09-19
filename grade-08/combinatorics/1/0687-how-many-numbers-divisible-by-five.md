---
id: "0687"
title: "Combien de nombres divisibles par 5 ?"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [denombrement, multiples, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 37"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

a) Combien de nombres de $2$ chiffres sont divisibles par $5$ ?

b) Combien de nombres de $3$ chiffres sont divisibles par $5$ ?

## Hints

1. Un nombre de $2$ chiffres est un entier compris entre $10$ et $99$. Quels sont le plus petit et le plus grand multiple de $5$ dans cet intervalle ?
2. Les multiples de $5$ s'écrivent $5 \times k$. À quels $k$ correspondent ces deux bornes ?
3. Le nombre d'entiers de $k_1$ à $k_2$ est $k_2 - k_1 + 1$, et non $k_2 - k_1$. Vérifie cette formule sur un petit exemple.

## Solution

**a) Les nombres de deux chiffres.**

Un nombre de $2$ chiffres est un entier compris entre $10$ et $99$.

Le plus petit multiple de $5$ dans cet intervalle est $10 = 5 \times 2$. Le plus grand est $95 = 5 \times 19$.

Les multiples de $5$ concernés sont donc

$$5 \times 2,\; 5 \times 3,\; 5 \times 4,\; \ldots,\; 5 \times 19,$$

c'est-à-dire un par valeur de $k$ allant de $2$ à $19$. Il y en a

$$19 - 2 + 1 = 18.$$

**b) Les nombres de trois chiffres.**

Un nombre de $3$ chiffres est un entier compris entre $100$ et $999$.

Le plus petit multiple de $5$ dans cet intervalle est $100 = 5 \times 20$, le plus grand est $995 = 5 \times 199$. Il y en a donc

$$199 - 20 + 1 = 180.$$

**Autre manière de voir b).** Un nombre de trois chiffres divisible par $5$ se termine par $0$ ou par $5$. Il reste donc $9$ choix pour le chiffre des centaines (de $1$ à $9$), $10$ choix pour le chiffre des dizaines, et $2$ choix pour le chiffre des unités, soit $9 \times 10 \times 2 = 180$ nombres. Les deux comptages donnent bien le même résultat.

**Conclusion.** Il y a $18$ nombres de deux chiffres divisibles par $5$, et $180$ nombres de trois chiffres divisibles par $5$.

## Going further

1. Reprends la seconde méthode pour la question a) : $9 \times 2 = 18$. Retrouve-t-on bien le même nombre ?
2. Combien de nombres de $3$ chiffres sont divisibles par $25$ ? Par $4$ ?
3. Combien de nombres de $3$ chiffres sont divisibles par $5$ **ou** par $2$ ?
