---
id: "8817"
title: "Quand n⁴ + 4ⁿ est-il premier ?"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres premiers, factorisation, identite de sophie germain, parite, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Arithmétique : Nombres premiers » (Anatole et Martin), exercice 4, p. 52"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ pour lesquels le nombre
$$n^4 + 4^{\,n}$$
est premier.

## Hints

1. Commence par calculer les premières valeurs, pour $n = 0, 1, 2, 3, 4$. Une seule a l'air de marcher.
2. Sépare les cas selon la parité de $n$. Le cas $n$ pair se règle en une ligne.
3. Pour $n$ impair, il faut factoriser. L'**identité de Sophie Germain** dit que
$$a^4 + 4b^4 = \left(a^2 + 2b^2 + 2ab\right)\left(a^2 + 2b^2 - 2ab\right),$$
ce que l'on vérifie en écrivant $a^4+4b^4 = (a^2+2b^2)^2 - (2ab)^2$.
4. Il faut donc écrire $4^n$ sous la forme $4b^4$. Pose $n = 2k+1$ et regarde $4^{2k+1}$.
5. Ne pas oublier : pour conclure qu'un nombre n'est pas premier, il faut vérifier que **les deux** facteurs sont strictement plus grands que $1$.

## Solution

### Les petites valeurs

$$n = 0 : \; 0 + 1 = 1 \quad (\text{pas premier}), \qquad n = 1 : \; 1 + 4 = 5 \quad (\text{premier}),$$
$$n = 2 : \; 16 + 16 = 32, \qquad n = 3 : \; 81 + 64 = 145 = 5 \times 29, \qquad n = 4 : \; 256 + 256 = 512 .$$

Seul $n = 1$ semble convenir. Montrons que c'est bien le seul.

### Le cas $n$ pair, $n \geqslant 2$

Si $n$ est pair, $n^4$ est pair. Et $4^n$ est pair dès que $n \geqslant 1$. Leur somme est donc paire, et elle vaut au moins $16 + 16 = 32 > 2$. Un nombre pair strictement plus grand que $2$ n'est pas premier.

(Le cas $n = 0$ a été traité à la main : $1$ n'est pas premier.)

### Le cas $n$ impair, $n \geqslant 3$

Écrivons $n = 2k+1$ avec $k \geqslant 1$. Alors
$$4^{\,n} = 4^{2k+1} = 4 \times 4^{2k} = 4 \times 16^{\,k} = 4 \times \left(2^{\,k}\right)^4 .$$

Posons $b = 2^{\,k}$. On a donc
$$n^4 + 4^{\,n} = n^4 + 4 b^4 .$$

**L'identité de Sophie Germain.** Pour tous nombres $a$ et $b$,
$$a^4 + 4b^4 = a^4 + 4a^2b^2 + 4b^4 - 4a^2b^2 = \left(a^2 + 2b^2\right)^2 - (2ab)^2 = \left(a^2 + 2b^2 + 2ab\right)\left(a^2 + 2b^2 - 2ab\right).$$

Avec $a = n$ et $b = 2^k$, on obtient donc la factorisation
$$n^4 + 4^{\,n} = \left(n^2 + 2 \cdot 4^{\,k} + 2n \cdot 2^{\,k}\right)\left(n^2 + 2 \cdot 4^{\,k} - 2n \cdot 2^{\,k}\right).$$

**Les deux facteurs sont plus grands que $1$.** Le premier est évident : c'est une somme de termes positifs, dont $n^2 \geqslant 9$.

Pour le second, complétons le carré :
$$n^2 + 2 \cdot 4^{\,k} - 2n \cdot 2^{\,k} = \left(n - 2^{\,k}\right)^2 + 4^{\,k} \; \geqslant \; 4^{\,k} \; \geqslant \; 4 ,$$
puisque $k \geqslant 1$. Il est donc bien strictement plus grand que $1$.

Le nombre $n^4 + 4^n$ est donc le produit de deux entiers tous deux $> 1$ : il n'est pas premier.

### Conclusion

$$\boxed{\text{Le seul entier naturel } n \text{ tel que } n^4 + 4^{\,n} \text{ soit premier est } n = 1, \text{ et alors } n^4+4^n = 5 .}$$

## Going further

La même identité montre que $n^4 + 4$ n'est jamais premier pour $n \geqslant 2$. Écrire la factorisation correspondante et l'utiliser pour décomposer $5^4 + 4$ et $10^4 + 4$.
