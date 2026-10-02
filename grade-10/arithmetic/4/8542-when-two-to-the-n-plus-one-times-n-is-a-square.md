---
id: "8542"
title: "Quand 2ⁿ⁺¹ × n est un carré parfait"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carre-parfait, puissances-de-deux, parite, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 19 (JBMO 2010)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ pour lesquels $2^{n+1} \times n$ est un carré
parfait.

## Hints

1. Un produit de la forme (carré) $\times$ (autre chose) est un carré exactement quand l'autre chose en est un. Essaie donc d'extraire du nombre $2^{n+1} \times n$ la plus grande puissance de $2$ qui soit un carré.
2. $2^k$ est un carré parfait exactement quand $k$ est pair. Sépare donc les cas selon la parité de $n$.
3. Si $n$ est impair, $n+1$ est pair : l'exposant est déjà bon. Que reste-t-il à demander ?
4. Si $n$ est pair, écris $n = 2p$ : un facteur $2$ supplémentaire sort du $n$ et va rejoindre la puissance de $2$.

## Solution

Rappelons d'abord deux faits :

- $2^k$ est un carré parfait si et seulement si $k$ est pair, car $2^{2j} = (2^j)^2$ ;
- si $A$ est un carré parfait non nul, alors $A \times B$ est un carré parfait si et
  seulement si $B$ en est un.

### Cas 1 : $n$ est impair

Alors $n + 1$ est pair, disons $n + 1 = 2j$, et

$$2^{n+1} \times n = \left(2^{j}\right)^2 \times n .$$

Ce nombre est donc un carré parfait si et seulement si $n$ est lui-même un carré parfait.

Les solutions de ce cas sont donc les **carrés parfaits impairs** :
$1, 9, 25, 49, 81, \ldots$, c'est-à-dire les nombres de la forme $(2k+1)^2$.

### Cas 2 : $n$ est pair

Écrivons $n = 2p$ avec $p \geqslant 1$. Alors $n + 1 = 2p + 1$ et

$$2^{n+1} \times n = 2^{2p+1} \times 2p = 2^{2p+2} \times p = \left(2^{p+1}\right)^2 \times p .$$

Ce nombre est donc un carré parfait si et seulement si $p$ est un carré parfait.

Les solutions de ce cas sont donc les nombres $n = 2k^2$, pour $k \geqslant 1$ :
$2, 8, 18, 32, 50, \ldots$

### Conclusion

Les entiers cherchés sont exactement

$$n = (2k+1)^2 \quad \text{(carrés impairs)} \qquad \text{et} \qquad n = 2k^2 ,$$

pour $k$ entier.

**Vérifications.**

- $n = 1$ : $2^2 \times 1 = 4 = 2^2$. C'est bon.
- $n = 2$ : $2^3 \times 2 = 16 = 4^2$. C'est bon.
- $n = 8$ : $2^9 \times 8 = 512 \times 8 = 4096 = 64^2$. C'est bon.
- $n = 9$ : $2^{10} \times 9 = 1024 \times 9 = 9216 = 96^2$. C'est bon.
- $n = 3$ : $2^4 \times 3 = 48$, qui n'est pas un carré. Cohérent, car $3$ n'est pas un carré.
