---
id: "11437"
title: "Assez de cases marquées pour former un rectangle"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [tiroirs, double-comptage, quadrillage, inegalite, rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Juniors, exercice 6 ; corrigé 2023-03_corrige-envoi-4.pdf ; l'inégalité de Cauchy-Schwarz du corrigé est remplacée par une preuve directe"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. Dans un tableau carré de $n$ lignes et $n$ colonnes, on a marqué au
moins

$$n\left(\sqrt{n} + \frac{1}{2}\right)$$

cases.

Montrer qu'il existe quatre cases marquées qui sont les quatre coins d'un rectangle dont les côtés
suivent les lignes du quadrillage. Autrement dit, il existe deux lignes et deux colonnes dont les
quatre cases d'intersection sont toutes marquées.

## Hints

1. Dans une même colonne, regarde les **paires** de cases marquées. Une telle paire occupe deux
   lignes. Que se passe-t-il si deux paires prises dans deux colonnes différentes occupent les
   mêmes deux lignes ?
2. Combien y a-t-il de choix possibles pour « deux lignes » ? Il suffit donc de montrer qu'il y a
   plus de paires que cela.
3. Si la colonne $i$ contient $d_i$ cases marquées, elle donne $\frac{d_i(d_i - 1)}{2}$ paires. Pour
   minorer la somme des $d_i^2$, développe $\sum (d_i - m)^2 \geqslant 0$, où $m$ est la moyenne des
   $d_i$.

## Solution

**Étape 1 : les paires et les tiroirs.** Numérotons les colonnes de $1$ à $n$, et notons $d_i$ le
nombre de cases marquées dans la colonne $i$. Notons $M = d_1 + d_2 + \cdots + d_n$ le nombre total de
cases marquées, de sorte que $M \geqslant n\left(\sqrt{n} + \frac{1}{2}\right)$.

Appelons **paire** deux cases marquées d'une même colonne. Une paire occupe deux lignes
différentes. La colonne $i$ contient

$$\frac{d_i(d_i - 1)}{2}$$

paires, autant que de façons de choisir deux cases parmi $d_i$.

Rangeons chaque paire dans un tiroir étiqueté par ses deux lignes. Il y a autant de tiroirs que de
façons de choisir deux lignes parmi $n$, c'est-à-dire $\frac{n(n-1)}{2}$.

Si un tiroir contient deux paires, ces paires viennent de deux colonnes différentes (dans une même
colonne, il n'y a qu'une case par ligne, donc une seule paire sur deux lignes données). Ces deux
colonnes et les deux lignes de l'étiquette donnent alors quatre cases marquées aux coins d'un
rectangle.

D'après le principe des tiroirs, il suffit donc de montrer qu'il y a **strictement plus de paires
que de tiroirs** :

$$\sum_{i=1}^{n} \frac{d_i(d_i - 1)}{2} > \frac{n(n-1)}{2}, \qquad \text{c'est-à-dire} \qquad \sum_{i=1}^{n} d_i^2 - M > n(n-1).$$

**Étape 2 : une minoration de la somme des carrés.** Soit $m = \frac{M}{n}$ la moyenne des $d_i$. Une
somme de carrés est positive, donc

$$\sum_{i=1}^{n} (d_i - m)^2 \geqslant 0 .$$

Développons : $\sum d_i^2 - 2m \sum d_i + n m^2 \geqslant 0$. Avec $\sum d_i = M = nm$, cela donne
$\sum d_i^2 - 2nm^2 + nm^2 \geqslant 0$, d'où

$$\sum_{i=1}^{n} d_i^2 \geqslant n m^2 = \frac{M^2}{n} .$$

**Étape 3 : le calcul.** On en déduit

$$\sum_{i=1}^{n} d_i^2 - M \geqslant \frac{M^2}{n} - M = \frac{M(M - n)}{n} .$$

Posons $A = n\left(\sqrt{n} + \frac{1}{2}\right)$, de sorte que $M \geqslant A$. On a aussi
$A - n = n\left(\sqrt{n} - \frac{1}{2}\right) > 0$, donc $M - n \geqslant A - n > 0$. Les deux
facteurs sont positifs, donc

$$\frac{M(M - n)}{n} \geqslant \frac{A(A - n)}{n} = \frac{n\left(\sqrt{n} + \frac{1}{2}\right) \times n\left(\sqrt{n} - \frac{1}{2}\right)}{n} = n\left(n - \frac{1}{4}\right) .$$

Enfin $n\left(n - \frac{1}{4}\right) > n(n - 1)$, puisque $-\frac{1}{4} > -1$. On a donc bien

$$\sum_{i=1}^{n} d_i^2 - M > n(n-1) .$$

**Conclusion.** Il y a strictement plus de paires que de tiroirs. Deux paires tombent dans le même
tiroir, et elles donnent quatre cases marquées qui sont les coins d'un rectangle.

## Going further

L'inégalité de l'étape 2, « la somme des carrés est au moins le carré de la somme divisé par le
nombre de termes », est un cas particulier de l'inégalité de Cauchy-Schwarz. Elle est très utile
dans les problèmes de comptage : elle dit qu'à total fixé, la somme des carrés est la plus petite
quand tous les nombres sont égaux.
