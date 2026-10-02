---
id: "7303"
title: "La somme des chiffres de 10²⁰⁰⁸ − 2008"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [somme-des-chiffres, soustraction, puissances-de-dix, retenues]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de TPE », exercice 102"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Le nombre $10^{2008}$ s'écrit avec un $1$ suivi de $2008$ zéros.

Quelle est la somme des chiffres de
$$10^{2008} - 2008\ ?$$

## Hints

1. Commence petit. Calcule $10^5 - 2008$, puis $10^6 - 2008$, puis $10^7 - 2008$. Écris les résultats en entier.
2. Tu devrais voir apparaître une longue file de $9$ suivie de quelques chiffres. Lesquels ?
3. Une fois que tu connais la forme du résultat, il ne reste plus qu'à compter combien il y a de $9$.
4. Attention au décompte : le nombre $10^{2008}$ a $2009$ chiffres, mais $10^{2008} - 2008$ n'en a que $2008$.

## Solution

**On regarde d'abord un petit cas.**

$$10^5 - 2008 = 100\,000 - 2008 = 97\,992 .$$
$$10^6 - 2008 = 1\,000\,000 - 2008 = 997\,992 .$$
$$10^7 - 2008 = 10\,000\,000 - 2008 = 9\,997\,992 .$$

À chaque fois, le résultat se termine par $7992$, et devant il n'y a que des $9$. À chaque fois qu'on ajoute un zéro à la puissance de $10$, on ajoute un $9$ devant.

**Pourquoi ?**

Posons la soustraction. Quand on retire $2008$ à un nombre formé d'un $1$ suivi de zéros, la retenue se propage : chaque zéro que la retenue traverse devient un $9$. Elle s'arrête sur le $1$ de tête, qui disparaît.

Les quatre derniers chiffres du résultat sont ceux de $10\,000 - 2008 = 7992$, et tous les chiffres qui restent devant valent $9$.

**Combien de chiffres en tout ?**

Le nombre $10^{2008}$ vaut un peu plus que $10^{2007}$, donc $10^{2008} - 2008$ est compris entre $10^{2007}$ et $10^{2008}$ : il a exactement $2008$ chiffres.

Sur ces $2008$ chiffres, les quatre derniers sont $7$, $9$, $9$, $2$. Les autres sont des $9$, et il y en a
$$2008 - 4 = 2004 .$$

**La somme.**

$$\underbrace{9 + 9 + \cdots + 9}_{2004 \text{ fois}} + 7 + 9 + 9 + 2 = 2004 \times 9 + 27 .$$

Or $2004 \times 9 = 18\,036$ et $18\,036 + 27 = 18\,063$.

**Conclusion.** La somme des chiffres de $10^{2008} - 2008$ vaut $\boxed{18\,063}$.

## Going further

1. Quelle est la somme des chiffres de $10^{2008} - 1$ ? Et de $10^{2008} - 10$ ?
2. Montre que la somme des chiffres de $10^{n} - 2008$ vaut $9n - 9\cdot 4 + 27 = 9n - 9$ dès que $n \geqslant 4$. Vérifie sur $n = 2008$.
3. Un nombre et la somme de ses chiffres ont toujours le même reste dans la division par $9$. Vérifie-le ici sur $10^{2008} - 2008$ et sur $18\,063$.
