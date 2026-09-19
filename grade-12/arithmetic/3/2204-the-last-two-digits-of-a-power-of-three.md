---
id: "2204"
title: "Les deux derniers chiffres de 3 puissance 1234"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [congruences, periodicite, puissances, chiffres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Number Theory (Part 1)"
  reference: "Handout-823-872.pdf, Extensions, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-823-872.pdf"
---

## Statement

Quels sont les deux derniers chiffres de $3^{1234}$ ?

## Hints

1. « Les deux derniers chiffres » d'un entier, c'est son reste dans la division par $100$. On travaille donc modulo $100$.
2. Calcule $3^1, 3^2, 3^3, \ldots$ modulo $100$. Tu n'as jamais besoin de garder plus de deux chiffres.
3. Cherche le premier exposant $k > 0$ pour lequel $3^k \equiv 1 \pmod{100}$. Un bon raccourci : calcule d'abord $3^{10}$, puis élève au carré.
4. Une fois cet exposant $k$ trouvé, écris $1234 = k \times q + r$ et conclus.

## Solution

**Ce que l'on cherche.**

Les deux derniers chiffres d'un entier $N$ sont donnés par le reste de $N$ dans la division euclidienne par $100$ : si ce reste est $r$, alors $N$ se termine par l'écriture de $r$ sur deux chiffres. On cherche donc $3^{1234}$ modulo $100$.

**Les puissances de 3 modulo 100.**

On calcule pas à pas, en ne gardant que les deux derniers chiffres :

$$3^1 = 3, \quad 3^2 = 9, \quad 3^3 = 27, \quad 3^4 = 81, \quad 3^5 = 243 \equiv 43 \pmod{100},$$

puis

$$3^6 \equiv 43 \times 3 = 129 \equiv 29, \quad 3^7 \equiv 87, \quad 3^8 \equiv 261 \equiv 61, \quad 3^9 \equiv 183 \equiv 83, \quad 3^{10} \equiv 249 \equiv 49 \pmod{100}.$$

On tient là un résultat commode, car $49$ s'élève facilement au carré :

$$3^{20} = \left(3^{10}\right)^2 \equiv 49^2 = 2401 \equiv 1 \pmod{100}.$$

**La période est donc 20.**

Pour tout entier naturel $m$ et tout entier naturel $r$ :

$$3^{20m + r} = \left(3^{20}\right)^{m} \times 3^{r} \equiv 1^{m} \times 3^{r} = 3^{r} \pmod{100}.$$

**On divise l'exposant par 20.**

$$1234 = 20 \times 61 + 14 .$$

Donc

$$3^{1234} \equiv 3^{14} \pmod{100}.$$

**Il reste à calculer $3^{14}$ modulo 100.**

$$3^{14} = 3^{10} \times 3^{4} \equiv 49 \times 81 = 3969 \equiv 69 \pmod{100}.$$

**Conclusion.** $3^{1234}$ se termine par $69$ : ses deux derniers chiffres sont un $6$ puis un $9$.

**Ce qu'il faut retenir.** Les deux derniers chiffres d'une puissance de $3$ se répètent avec une période de $20$. C'est le seul renseignement nécessaire : un exposant de $1234$ ou de $14$ donne alors exactement la même fin d'écriture.

## Going further

1. Quel est le dernier chiffre de $3^{1234}$ ? Retrouver ce résultat directement, avec une période beaucoup plus courte.
2. Quels sont les trois derniers chiffres de $3^{1234}$ ? La période modulo $1000$ vaut $100$.
3. Pour quels exposants $n$ le nombre $3^n$ se termine-t-il par $01$ ?
4. Montrer que $3^{n}$ ne se termine jamais par $00$.
