---
id: "8539"
title: "Les deux derniers chiffres d'une tour de puissances"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [congruences, puissances, cycle, modulo-cent]
adapted_from: null
see_also: ["0554"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 16"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Quels sont les deux derniers chiffres du nombre

$$7^{\,5^{\,678}} \quad ?$$

*Attention à l'ordre des opérations : il s'agit de $7$ élevé à la puissance $5^{678}$, un
nombre gigantesque.*

## Hints

1. Chercher les deux derniers chiffres d'un entier, c'est chercher son reste dans la division par $100$.
2. Calcule les restes de $7^1$, $7^2$, $7^3$, $7^4$, $7^5$ dans la division par $100$. Que remarques-tu ?
3. Le cycle a une certaine longueur. Il suffit donc de connaître le reste de l'exposant $5^{678}$ dans la division par cette longueur.
4. Quel est le reste de $5$ dans la division par $4$ ? Et celui de $5^{678}$ ?

## Solution

**Ce qu'on cherche.** Les deux derniers chiffres d'un entier sont donnés par son reste dans
la division par $100$.

**Le cycle des puissances de 7 modulo 100.** Calculons :

$$7^1 = 7, \qquad 7^2 = 49, \qquad 7^3 = 343 \equiv 43, \qquad
7^4 = 7 \times 343 = 2401 \equiv 1 \pmod{100} .$$

Comme $7^4 \equiv 1$, les restes se répètent tous les quatre crans :

$$7^{4q + r} = \left(7^4\right)^q \times 7^r \equiv 1^q \times 7^r = 7^r \pmod{100} .$$

Il suffit donc de connaître le reste de l'exposant dans la division par $4$.

**Le reste de $5^{678}$ modulo 4.** On a $5 = 4 + 1$, donc $5 \equiv 1 \pmod 4$, d'où

$$5^{678} \equiv 1^{678} = 1 \pmod 4 .$$

**On conclut.** L'exposant $5^{678}$ s'écrit donc $4q + 1$ pour un certain entier $q$, et

$$7^{\,5^{678}} = 7^{4q+1} \equiv 7^1 = 7 \pmod{100} .$$

**Conclusion.** Les deux derniers chiffres de $7^{\,5^{678}}$ sont $\mathbf{0}$ et
$\mathbf{7}$ : le nombre se termine par $07$.
