---
id: "7509"
title: "Des 4, des 8, et un carré parfait"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, repunit, carre, identite-remarquable, factorisation]
adapted_from: null
see_also: ["8462"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 32. La Muraille ne donne pas de solution pour cet exercice : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Soit $n$ un entier strictement positif.

On note $A$ le nombre écrit avec $2n$ chiffres, tous égaux à $4$, et $B$ le nombre écrit avec $n$ chiffres, tous égaux à $8$.

Par exemple, pour $n = 2$ : $A = 4444$ et $B = 88$.

Montrer que $A + 2B + 4$ est un carré parfait.

## Hints

1. Fais d'abord l'essai avec $n = 1$ et $n = 2$. Tu trouveras $64$ et $4624$. Quelles sont leurs racines carrées ?
2. Les deux résultats sont $8$ et $68$. Essaie $n = 3$ : tu devrais tomber sur $668$. La forme de la réponse se devine.
3. Pour démontrer, donne un nom au nombre $\underbrace{11\ldots1}_{n}$, disons $R$. Écris $A$ et $B$ en fonction de $R$... mais attention, $A$ a $2n$ chiffres, pas $n$.
4. Coupe le nombre $\underbrace{11\ldots1}_{2n}$ en deux moitiés de $n$ chiffres. Que vaut-il en fonction de $R$ et de $10^n$ ?
5. Il te reste à exprimer $10^n$ en fonction de $R$, puis à tout développer.

## Solution

**Étape 1. On essaie.**

Pour $n = 1$ : $A = 44$, $B = 8$, et $A + 2B + 4 = 44 + 16 + 4 = 64 = 8^2$.

Pour $n = 2$ : $A = 4444$, $B = 88$, et $A + 2B + 4 = 4444 + 176 + 4 = 4624 = 68^2$.

Pour $n = 3$ : $A = 444444$, $B = 888$, et $A + 2B + 4 = 444444 + 1776 + 4 = 446224 = 668^2$.

On conjecture que la racine est $\underbrace{66\ldots6}_{n-1}8$.

**Étape 2. On se donne une notation.**

Posons

$$R = \underbrace{11\ldots1}_{n \text{ chiffres}}.$$

Alors $B = 8R$, car $\underbrace{88\ldots8}_{n} = 8 \times \underbrace{11\ldots1}_{n}$.

Pour $A$, on a $A = 4 \times \underbrace{11\ldots1}_{2n}$. Il faut donc exprimer $\underbrace{11\ldots1}_{2n}$ en fonction de $R$.

**Étape 3. On coupe le nombre de $2n$ chiffres en deux.**

Le nombre $\underbrace{11\ldots1}_{2n}$ est formé de $n$ chiffres $1$, suivis de $n$ chiffres $1$. Donc

$$\underbrace{11\ldots1}_{2n} = R \times 10^n + R = R\,(10^n + 1).$$

Par ailleurs, $\underbrace{99\ldots9}_{n} = 10^n - 1$ et $\underbrace{99\ldots9}_{n} = 9R$, donc

$$10^n = 9R + 1.$$

En remplaçant :

$$\underbrace{11\ldots1}_{2n} = R\,(9R + 1 + 1) = R\,(9R+2) = 9R^2 + 2R.$$

Donc

$$A = 4\,(9R^2 + 2R) = 36R^2 + 8R.$$

**Étape 4. On calcule.**

$$A + 2B + 4 = (36R^2 + 8R) + 2 \times 8R + 4 = 36R^2 + 8R + 16R + 4 = 36R^2 + 24R + 4.$$

On reconnaît une identité remarquable :

$$36R^2 + 24R + 4 = (6R)^2 + 2 \times (6R) \times 2 + 2^2 = (6R + 2)^2.$$

**Conclusion.** $A + 2B + 4 = (6R+2)^2$ est un carré parfait, et sa racine est

$$6R + 2 = 6 \times \underbrace{11\ldots1}_{n} + 2 = \underbrace{66\ldots6}_{n} + 2 = \underbrace{66\ldots6}_{n-1}8,$$

ce qui confirme la conjecture de l'étape 1.

## Going further

Le vrai outil ici est la relation $10^n = 9R + 1$, qui traduit « $n$ chiffres $9$, c'est $10^n$ moins $1$ ». Chaque fois qu'un énoncé parle d'un nombre dont tous les chiffres sont égaux, c'est la première chose à écrire.

Le même calcul montre par exemple que $\underbrace{11\ldots1}_{2n} - \underbrace{22\ldots2}_{n}$ est toujours un carré parfait : avec les notations ci-dessus, cela vaut $9R^2 + 2R - 2R = 9R^2 = (3R)^2$.
