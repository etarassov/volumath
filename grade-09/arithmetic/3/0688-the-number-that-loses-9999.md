---
id: "0688"
title: "Le nombre qui perd 9999"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [chiffres, equation, divisibilite, entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 42"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Déterminer les nombres entiers naturels qui diminuent de $9999$ lorsqu'on efface leur dernier chiffre.

## Hints

1. Prends un exemple pour comprendre l'opération : si le nombre est $5342$, effacer son dernier chiffre donne $534$, et il a diminué de $5342 - 534 = 4808$.
2. Appelle $c$ le dernier chiffre du nombre et $m$ le nombre obtenu après effacement. Comment s'écrit le nombre de départ en fonction de $m$ et de $c$ ?
3. Écris l'égalité demandée et simplifie. Tu devrais obtenir une seule équation liant $m$ et $c$.
4. Tu arrives à $9m + c = 9999$. Le chiffre $c$ est compris entre $0$ et $9$ : que dit l'équation sur la divisibilité de $c$ par $9$ ?

## Solution

**Étape 1. Écrire le nombre en séparant son dernier chiffre.**

Soit $n$ le nombre cherché, $c$ son dernier chiffre et $m$ le nombre obtenu en effaçant ce dernier chiffre. Alors

$$n = 10m + c, \qquad \text{avec } 0 \leq c \leq 9.$$

(Par exemple, pour $n = 5342$ on a $m = 534$ et $c = 2$, et bien $5342 = 10 \times 534 + 2$.)

**Étape 2. Traduire la condition.**

Le nombre diminue de $9999$ quand on passe de $n$ à $m$, donc

$$n - m = 9999.$$

En remplaçant $n$ par $10m + c$ :

$$10m + c - m = 9999,$$
$$9m + c = 9999.$$

**Étape 3. Exploiter le fait que $c$ est un chiffre.**

On a $9m = 9999 - c$. Le nombre $9m$ est un multiple de $9$, et $9999 = 9 \times 1111$ est lui aussi un multiple de $9$. Donc

$$c = 9999 - 9m$$

est une différence de deux multiples de $9$ : c'est un multiple de $9$.

Or $c$ est un chiffre, donc $0 \leq c \leq 9$. Les seuls multiples de $9$ dans cet intervalle sont $0$ et $9$.

**Étape 4. Traiter les deux cas.**

- Si $c = 0$ : $9m = 9999$, donc $m = 1111$ et $n = 10 \times 1111 + 0 = 11110$.
- Si $c = 9$ : $9m = 9999 - 9 = 9990$, donc $m = 1110$ et $n = 10 \times 1110 + 9 = 11109$.

**Vérification.**

- $11110$ : on efface le dernier chiffre, il reste $1111$. Et $11110 - 1111 = 9999$. C'est bon.
- $11109$ : on efface le dernier chiffre, il reste $1110$. Et $11109 - 1110 = 9999$. C'est bon.

**Conclusion.** Il y a exactement deux nombres qui conviennent : $11109$ et $11110$.

## Going further

1. Même question en remplaçant $9999$ par $999$. Combien de solutions trouve-t-on ?
2. Même question en remplaçant $9999$ par $1000$. Que se passe-t-il ? (Indication : que vaut le reste de $1000$ dans la division par $9$ ?)
3. Pour quels entiers $N$ le problème « trouver les nombres qui diminuent de $N$ quand on efface leur dernier chiffre » a-t-il au moins une solution ?
