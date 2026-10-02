---
id: "11859"
title: "Quand 2ᴺ − 2N est-il un carré parfait ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carres parfaits, puissances de 2, modulo 4, identite remarquable, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 3 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Déterminer tous les entiers relatifs $N$ tels que $2^N - 2N$ soit un carré parfait, c'est-à-dire le carré d'un entier.

## Hints

1. Que se passe-t-il quand $N$ est négatif ? Essayer ensuite les petites valeurs $N = 0, 1, 2, 3, \ldots$
2. Pour $N \geqslant 3$, écrire $2^N - 2N = x^2$. Quelle est la parité de $x$ ? En regardant le reste de la division par $4$, montrer que $N$ est pair.
3. Si $N = 2m$, factoriser $2^{2m} - x^2$.
4. Comparer le produit obtenu à $2^m$, et en déduire que $N$ ne peut pas être grand.

## Solution

**Les entiers négatifs.** Si $N < 0$, le nombre $2^N = \dfrac{1}{2^{-N}}$ est strictement compris entre $0$ et $1$, alors que $2N$ est un entier. Le nombre $2^N - 2N$ n'est donc pas un entier, et ce n'est pas un carré parfait.

**Les petites valeurs.**
$$2^0 - 0 = 1 = 1^2, \qquad 2^1 - 2 = 0 = 0^2, \qquad 2^2 - 4 = 0 = 0^2.$$
Les entiers $N = 0$, $N = 1$ et $N = 2$ conviennent.

**Supposons maintenant $N \geqslant 3$** et $2^N - 2N = x^2$ avec $x$ un entier positif ou nul.

*Étape 1 : $N$ est pair.* Le nombre $2^N - 2N$ est pair, donc $x^2$ est pair, donc $x$ est pair. Alors $x^2$ est un multiple de $4$. Comme $N \geqslant 2$, le nombre $2^N$ est aussi un multiple de $4$. Donc $2N = 2^N - x^2$ est un multiple de $4$, c'est-à-dire que $N$ est pair. Écrivons $N = 2m$, avec $m \geqslant 2$ puisque $N \geqslant 3$.

*Étape 2 : une factorisation.* On a
$$4m = 2N = 2^{2m} - x^2 = (2^m - x)(2^m + x).$$
Comme $x^2 = 2^N - 2N < 2^N = (2^m)^2$, on a $x < 2^m$. Le facteur $2^m - x$ est donc un entier au moins égal à $1$, et le facteur $2^m + x$ est au moins égal à $2^m$. Leur produit est donc au moins égal à $2^m$ :
$$4m \geqslant 2^m.$$

*Étape 3 : $m$ est petit.* On vérifie que $2^5 = 32 > 20 = 4 \times 5$. Et si $2^m > 4m$ pour un certain $m \geqslant 5$, alors $2^{m+1} = 2 \times 2^m > 8m \geqslant 4m + 4 = 4(m+1)$. De proche en proche, $2^m > 4m$ pour tout $m \geqslant 5$. L'inégalité $4m \geqslant 2^m$ impose donc $m \leqslant 4$, c'est-à-dire $N \in \{4, 6, 8\}$.

*Étape 4 : on vérifie ces trois valeurs.*
$$2^4 - 8 = 8, \qquad 2^6 - 12 = 52, \qquad 2^8 - 16 = 240.$$
Aucun de ces trois nombres n'est un carré parfait ($8$ est entre $2^2$ et $3^2$, $52$ entre $7^2$ et $8^2$, $240$ entre $15^2$ et $16^2$).

**Conclusion.** **$2^N - 2N$ est un carré parfait exactement pour $N = 0$, $N = 1$ et $N = 2$.**
