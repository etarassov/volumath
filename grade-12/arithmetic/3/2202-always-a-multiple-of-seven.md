---
id: "2202"
title: "Toujours un multiple de 7"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, divisibilite, puissances, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Number Theory (Part 1)"
  reference: "Handout-823-872.pdf, Extensions, exercices 1 et 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-823-872.pdf"
---

## Statement

1. Montrer que, pour tout entier naturel $n$, le nombre $2^{2n+1} + 1$ est divisible par $3$.
2. Montrer que, pour tout entier naturel $n$, le nombre

$$4^{3n+1} + 2^{3n+1} + 1$$

est divisible par $7$.

## Hints

1. Commence par essayer $n = 0$, $n = 1$, $n = 2$. Les trois nombres obtenus à la question 2 sont $7$, $273$ et $16\,513$. Les trois sont bien des multiples de $7$.
2. Un exposant de la forme $2n+1$ se coupe en deux : $2^{2n+1} = 2 \times (2^2)^n$. Fais la même chose avec $3n+1$.
3. Que vaut $4$ modulo $3$ ? Que vaut $8$ modulo $7$ ?
4. Une puissance de $1$ vaut toujours $1$ : c'est tout ce qui reste à utiliser.

## Solution

**1. Le cas de $2^{2n+1} + 1$.**

On sépare l'exposant :

$$2^{2n+1} = 2^{2n} \times 2 = (2^2)^n \times 2 = 4^n \times 2 .$$

Or $4 = 3 + 1$, donc $4 \equiv 1 \pmod 3$, et par conséquent $4^n \equiv 1^n = 1 \pmod 3$ pour tout entier naturel $n$. Ainsi

$$2^{2n+1} = 2 \times 4^n \equiv 2 \times 1 = 2 \pmod 3,$$

puis

$$2^{2n+1} + 1 \equiv 2 + 1 = 3 \equiv 0 \pmod 3 .$$

**Conclusion.** $2^{2n+1} + 1$ est divisible par $3$ pour tout entier naturel $n$.

**2. Le cas de $4^{3n+1} + 2^{3n+1} + 1$.**

On traite les deux puissances séparément, avec la même découpe.

*Le terme $2^{3n+1}$.*

$$2^{3n+1} = 2^{3n} \times 2 = (2^3)^n \times 2 = 8^n \times 2 .$$

Or $8 = 7 + 1$, donc $8 \equiv 1 \pmod 7$, donc $8^n \equiv 1 \pmod 7$, et

$$2^{3n+1} \equiv 2 \pmod 7 .$$

*Le terme $4^{3n+1}$.*

$$4^{3n+1} = 4^{3n} \times 4 = (4^3)^n \times 4 = 64^n \times 4 .$$

Or $64 = 9 \times 7 + 1$, donc $64 \equiv 1 \pmod 7$, donc $64^n \equiv 1 \pmod 7$, et

$$4^{3n+1} \equiv 4 \pmod 7 .$$

*On additionne.*

$$4^{3n+1} + 2^{3n+1} + 1 \equiv 4 + 2 + 1 = 7 \equiv 0 \pmod 7 .$$

**Conclusion.** $4^{3n+1} + 2^{3n+1} + 1$ est divisible par $7$ pour tout entier naturel $n$.

**Vérification.** Pour $n = 0$ on obtient $4 + 2 + 1 = 7 = 7 \times 1$. Pour $n = 1$ on obtient $4^4 + 2^4 + 1 = 256 + 16 + 1 = 273 = 7 \times 39$. Pour $n = 2$ on obtient $4^7 + 2^7 + 1 = 16\,384 + 128 + 1 = 16\,513 = 7 \times 2359$.

**Ce qu'il faut retenir.** Dès qu'une puissance a un exposant de la forme $kn + r$, on l'écrit $(a^k)^n \times a^r$. Si l'on choisit bien le module, $a^k$ y devient congru à $1$ et toute la partie variable disparaît d'un coup : il ne reste que la constante $a^r$.

## Going further

1. Le nombre $4^{3n+1} + 2^{3n+1} + 1$ est-il divisible par $14$ ? par $21$ ?
2. Trouver un entier $m$ tel que $3^{4n+2} + 1$ soit divisible par $m$ pour tout entier naturel $n$.
3. Reprendre la question 2 en rédigeant une démonstration par récurrence sur $n$, sans congruences. Laquelle des deux rédactions est la plus courte ?
