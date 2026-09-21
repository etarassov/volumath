---
id: "7103"
title: "La multiplication est-elle juste ?"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [preuve par neuf, divisibilite, somme des chiffres, congruences]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Débutants : arithmétique », mardi matin (Martin Andler), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Un élève affirme avoir calculé

$$79\,133 \times 111\,107 = 8\,792\,240\,231 .$$

Sans poser la multiplication, montrer que ce résultat est faux.

## Hints

1. Un nombre et la somme de ses chiffres laissent le **même reste** dans la division par $9$.
   Vérifie-le sur un petit exemple avant de t'en servir.
2. Calcule la somme des chiffres de $79\,133$, puis celle de $111\,107$, puis celle du
   résultat annoncé.
3. Si l'égalité était vraie, quel lien y aurait-il entre ces trois restes ?

## Solution

**L'outil.** Écrivons un nombre en base dix, par exemple

$$\overline{abcd} = 1000a + 100b + 10c + d .$$

Comme $1000 = 999 + 1$, $100 = 99 + 1$ et $10 = 9 + 1$, on a

$$\overline{abcd} = (999a + 99b + 9c) + (a + b + c + d) .$$

La première parenthèse est un multiple de $9$. Donc $\overline{abcd}$ et la somme de ses
chiffres $a + b + c + d$ **laissent le même reste dans la division par $9$**. Le même
raisonnement marche avec n'importe quel nombre de chiffres.

**Les trois restes.**

Pour $79\,133$ : $7 + 9 + 1 + 3 + 3 = 23$, puis $2 + 3 = 5$. Reste : $5$.

Pour $111\,107$ : $1 + 1 + 1 + 1 + 0 + 7 = 11$, puis $1 + 1 = 2$. Reste : $2$.

Pour le résultat annoncé $8\,792\,240\,231$ :

$$8 + 7 + 9 + 2 + 2 + 4 + 0 + 2 + 3 + 1 = 38, \qquad 3 + 8 = 11, \qquad 1 + 1 = 2 .$$

Reste : $2$.

**La contradiction.** Écrivons $79\,133 = 9q + 5$ et $111\,107 = 9q' + 2$. Alors

$$79\,133 \times 111\,107 = 81qq' + 18q + 45q' + 10 ,$$

et les trois premiers termes sont des multiples de $9$. Le produit laisse donc le même reste
que $10$ dans la division par $9$, c'est-à-dire **$1$**.

Or le nombre annoncé laisse le reste $2$.

**Conclusion.** Les deux restes diffèrent, donc **l'égalité est fausse** : le produit annoncé
n'est pas le bon.

## Going further

Cette vérification s'appelle la **preuve par neuf**. Elle était enseignée à l'école primaire
avant les calculatrices, et les comptables s'en servaient tous les jours.

Attention à ce qu'elle dit exactement : elle permet d'affirmer qu'un calcul est **faux**,
jamais qu'il est juste. Ici le vrai produit vaut $8\,792\,230\,231$ ; l'élève a écrit un $4$
là où il fallait un $3$. La preuve par neuf a repéré l'erreur parce que $4$ et $3$ ne sont
pas égaux modulo $9$. Si l'élève avait échangé deux chiffres, ou écrit $9$ au lieu de $0$,
la somme des chiffres n'aurait pas changé de reste et la preuve par neuf n'aurait rien vu.
