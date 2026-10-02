---
id: "3421"
title: "Un produit qui se télescope deux fois"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [produit-telescopique, factorisation, limite, suites]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 10 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Calculer le produit

$$\prod_{n=2}^{2026} \frac{n^3 + 1}{n^3 - 1} \;=\; \frac{2^3+1}{2^3-1} \times \frac{3^3+1}{3^3-1} \times \cdots \times \frac{2026^3+1}{2026^3-1}.$$

**Question bonus.** Vers quelle valeur tend ce produit si on le prolonge indéfiniment au lieu de s'arrêter à $2026$ ?

## Hints

1. Factorise le numérateur et le dénominateur avec les identités $a^3 + b^3 = (a+b)(a^2-ab+b^2)$ et $a^3 - b^3 = (a-b)(a^2+ab+b^2)$.
2. Tu obtiens $\dfrac{n+1}{n-1} \times \dfrac{n^2-n+1}{n^2+n+1}$. Traite les deux morceaux séparément.
3. Le premier morceau se télescope avec un décalage de deux crans : écris les premiers facteurs $\frac31 \times \frac42 \times \frac53 \times \cdots$ et regarde ce qui reste.
4. Pour le second, pose $f(n) = n^2 + n + 1$ et calcule $f(n-1)$. Que remarques-tu ?
5. $f(n-1) = n^2 - n + 1$, donc le second morceau est $\dfrac{f(n-1)}{f(n)}$ : il se télescope aussi.

## Solution

**L'idée : le rapport se coupe en deux morceaux, et chacun se télescope, mais pas de la même façon.**

**Étape 1. On factorise.**

En prenant $a = n$ et $b = 1$ :

$$n^3 + 1 = (n+1)\left(n^2 - n + 1\right), \qquad n^3 - 1 = (n-1)\left(n^2 + n + 1\right).$$

Donc

$$\frac{n^3+1}{n^3-1} = \frac{n+1}{n-1} \times \frac{n^2-n+1}{n^2+n+1}.$$

Le produit cherché se coupe en deux :

$$P = \underbrace{\prod_{n=2}^{2026} \frac{n+1}{n-1}}_{P_1} \times \underbrace{\prod_{n=2}^{2026} \frac{n^2-n+1}{n^2+n+1}}_{P_2}.$$

**Étape 2. Le premier morceau.**

$$P_1 = \frac{3}{1} \times \frac{4}{2} \times \frac{5}{3} \times \frac{6}{4} \times \cdots \times \frac{2027}{2025}.$$

Chaque numérateur se simplifie avec le dénominateur situé deux crans plus loin. Il ne reste donc que les deux derniers numérateurs, $2026$ et $2027$, et les deux premiers dénominateurs, $1$ et $2$ :

$$P_1 = \frac{2026 \times 2027}{1 \times 2} = \frac{2026 \times 2027}{2}.$$

**Étape 3. Le second morceau.**

Posons $f(n) = n^2 + n + 1$. Alors

$$f(n-1) = (n-1)^2 + (n-1) + 1 = n^2 - 2n + 1 + n - 1 + 1 = n^2 - n + 1.$$

Le second morceau s'écrit donc

$$P_2 = \prod_{n=2}^{2026} \frac{f(n-1)}{f(n)} = \frac{f(1)}{f(2)} \times \frac{f(2)}{f(3)} \times \cdots \times \frac{f(2025)}{f(2026)} = \frac{f(1)}{f(2026)}.$$

Or $f(1) = 3$ et $f(2026) = 2026^2 + 2026 + 1$.

$$P_2 = \frac{3}{2026^2 + 2026 + 1}.$$

**Étape 4. On rassemble.**

$$P = \frac{2026 \times 2027}{2} \times \frac{3}{2026^2 + 2026 + 1} = \frac{3}{2} \times \frac{2026 \times 2027}{2026^2 + 2026 + 1}.$$

Numériquement, $2026 \times 2027 = 4\,106\,702$ et $2026^2 + 2026 + 1 = 4\,106\,703$, d'où

$$P = \frac{3 \times 4\,106\,702}{2 \times 4\,106\,703} = \frac{2\,053\,351}{1\,368\,901} \approx \text{1,4999996}.$$

**Étape 5. La question bonus.**

En remplaçant $2026$ par un entier $N$ quelconque, le même calcul donne

$$P(N) = \frac{3}{2} \times \frac{N(N+1)}{N^2 + N + 1} = \frac{3}{2} \times \frac{N^2+N}{N^2+N+1} = \frac{3}{2}\left(1 - \frac{1}{N^2+N+1}\right).$$

Quand $N$ tend vers l'infini, $\dfrac{1}{N^2+N+1}$ tend vers $0$, donc

$$\lim_{N \to +\infty} P(N) = \frac{3}{2}.$$

**Conclusion : le produit vaut $\dfrac{3}{2} \times \dfrac{2026 \times 2027}{2026^2 + 2026 + 1} = \dfrac{2\,053\,351}{1\,368\,901}$, et le produit infini vaut exactement $\dfrac32$.**
