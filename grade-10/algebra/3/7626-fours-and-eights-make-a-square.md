---
id: "7626"
title: "Des 4 et des 8 qui font un carré"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [nombres repunits, somme geometrique, carre parfait, puissances de dix]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 32 (solution chapitre XI, résolue par Morine Delhelle, Julie Devaux et Julie Lauquin)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On note

- $A$ l'entier formé de $2n$ chiffres, tous égaux à $4$ ;
- $B$ l'entier formé de $n$ chiffres, tous égaux à $8$.

Par exemple, pour $n = 2$ : $A = 4444$ et $B = 88$.

Démontrer que l'entier $A + 2B + 4$ est un carré parfait.

## Hints

1. Commencez par tester : pour $n = 1$, on a $A = 44$ et $B = 8$. Combien vaut $A + 2B + 4$ ? Et pour $n = 2$ ?
2. Écrivez $A$ et $B$ à l'aide de puissances de $10$. Le nombre formé de $k$ chiffres $1$ vaut $\dfrac{10^k - 1}{9}$.
3. Mettez tout au même dénominateur $9$ et développez. Vous devriez voir apparaître $10^{2n}$, $10^n$ et une constante.
4. Reconnaissez une identité remarquable en posant $t = 10^n$.
5. Il restera à vérifier que la racine carrée trouvée est bien un **entier** : regardez la divisibilité par $3$.

## Solution

**Mise en équations.**

L'entier formé de $k$ chiffres égaux à $1$ vaut $\underbrace{11\cdots1}_{k} = \dfrac{10^k - 1}{9}$. Par conséquent

$$A = 4 \times \frac{10^{2n} - 1}{9} \qquad \text{et} \qquad B = 8 \times \frac{10^n - 1}{9} .$$

**Le calcul.**

$$A + 2B + 4 = \frac{4\left(10^{2n} - 1\right) + 16\left(10^{n} - 1\right)}{9} + 4 = \frac{4 \cdot 10^{2n} - 4 + 16 \cdot 10^{n} - 16 + 36}{9} .$$

Le numérateur se simplifie :

$$4 \cdot 10^{2n} + 16 \cdot 10^{n} + 16 = 4\left(10^{2n} + 4 \cdot 10^{n} + 4\right) .$$

Posons $t = 10^n$. Alors $10^{2n} = t^2$, et

$$t^2 + 4t + 4 = (t+2)^2 .$$

D'où

$$A + 2B + 4 = \frac{4\,(t+2)^2}{9} = \left(\frac{2(t+2)}{3}\right)^2 = \left(\frac{2\left(10^n + 2\right)}{3}\right)^2 .$$

**Il reste à voir que c'est le carré d'un entier.**

Le nombre $10^n$ se termine par $0$ et sa somme des chiffres vaut $1$, donc $10^n$ laisse le reste $1$ dans la division par $3$. Par conséquent $10^n + 2$ laisse le reste $0$ : c'est un multiple de $3$.

Ainsi $\dfrac{10^n + 2}{3}$ est un entier, et

$$A + 2B + 4 = \left(2 \times \frac{10^n + 2}{3}\right)^2$$

est bien le carré d'un entier.

**Vérifications.**

- $n = 1$ : $\dfrac{2 \times 12}{3} = 8$ et $44 + 16 + 4 = 64 = 8^2$. ✔
- $n = 2$ : $\dfrac{2 \times 102}{3} = 68$ et $4444 + 176 + 4 = 4624 = 68^2$. ✔
- $n = 3$ : $\dfrac{2 \times 1002}{3} = 668$ et $444\,444 + 1776 + 4 = 446\,224 = 668^2$. ✔

## Going further

Les racines carrées obtenues valent $8$, $68$, $668$, $6668$, … : le nombre formé de $n-1$ chiffres $6$ suivis d'un $8$. On le voit en écrivant

$$\frac{2\left(10^n + 2\right)}{3} = \frac{2 \cdot 10^n - 2}{3} + 2 = 2 \times \underbrace{33\cdots3}_{n} + 2 = \underbrace{66\cdots6}_{n} + 2 .$$

Ce type d'exercice, avec des chiffres tous identiques, se traite presque toujours de la même façon : on remplace les suites de chiffres par des fractions en $10^k$, et tout devient du calcul algébrique ordinaire.

Autre exemple à traiter de la même manière : montrer que le nombre formé de $2n$ chiffres $1$, moins le nombre formé de $n$ chiffres $2$, est toujours un carré parfait.
