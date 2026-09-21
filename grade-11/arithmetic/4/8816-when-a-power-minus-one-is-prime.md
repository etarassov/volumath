---
id: "8816"
title: "Quand aⁿ − 1 est premier"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres premiers, factorisation, contraposee, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Arithmétique : Nombres premiers » (Anatole et Martin), exercice 3, p. 52"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soient $a$ et $n$ deux entiers supérieurs ou égaux à $2$. On suppose que le nombre
$$a^n - 1$$
est premier.

Montrer qu'alors $a = 2$ **et** que $n$ est premier.

*(On pourra utiliser l'identité $x^k - 1 = (x-1)\left(x^{k-1} + x^{k-2} + \cdots + x + 1\right)$.)*

## Hints

1. Un nombre premier n'a que deux diviseurs positifs : $1$ et lui-même. Donc si tu exhibes un diviseur strictement compris entre les deux, c'est gagné.
2. Pour montrer $a = 2$ : l'identité rappelée montre que $a-1$ divise $a^n-1$. Quelle taille a $a-1$ par rapport à $a^n-1$ ?
3. Pour montrer que $n$ est premier, prends la contraposée : suppose $n$ composé, $n = uv$ avec $u, v \geqslant 2$, et applique l'identité avec $x = 2^u$.
4. N'oublie pas de vérifier que les deux facteurs obtenus sont bien tous les deux strictement plus grands que $1$.

## Solution

### Première partie : $a = 2$

L'identité rappelée, appliquée avec $x = a$ et $k = n$, donne
$$a^n - 1 = (a-1)\left(a^{n-1} + a^{n-2} + \cdots + a + 1\right).$$

Donc $a-1$ divise $a^n - 1$.

Comparons les tailles. Comme $a \geqslant 2$ et $n \geqslant 2$, on a $a^n \geqslant a^2 > a$, donc
$$a - 1 < a^n - 1 .$$

Ainsi $a-1$ est un diviseur de $a^n-1$ strictement plus petit que lui. Comme $a^n-1$ est premier, ses seuls diviseurs positifs sont $1$ et $a^n-1$. Donc nécessairement
$$a - 1 = 1, \qquad \text{c'est-à-dire} \qquad a = 2 .$$

### Deuxième partie : $n$ est premier

On raisonne par contraposée : montrons que si $n$ **n'est pas** premier, alors $2^n - 1$ n'est pas premier.

Supposons $n$ composé. Comme $n \geqslant 2$, on peut écrire
$$n = uv \qquad \text{avec} \qquad u \geqslant 2 \quad \text{et} \quad v \geqslant 2 .$$

Appliquons l'identité avec $x = 2^u$ et $k = v$ :
$$2^n - 1 = \left(2^u\right)^v - 1 = \left(2^u - 1\right)\left(2^{u(v-1)} + 2^{u(v-2)} + \cdots + 2^u + 1\right).$$

Vérifions que les deux facteurs sont strictement plus grands que $1$.

- Le premier : $u \geqslant 2$ donc $2^u - 1 \geqslant 3 > 1$.
- Le second : c'est une somme de $v \geqslant 2$ termes tous positifs, dont $2^u \geqslant 4$ et $1$. Elle vaut donc au moins $5 > 1$.

Le nombre $2^n-1$ s'écrit comme produit de deux entiers tous deux strictement plus grands que $1$ : il n'est pas premier.

Par contraposée, si $2^n - 1$ est premier alors $n$ l'est aussi.

**Conclusion.** Si $a^n - 1$ est premier avec $a, n \geqslant 2$, alors $a = 2$ et $n$ est premier.

### Une remarque importante

La réciproque est **fausse** : $n$ premier n'entraîne pas que $2^n-1$ le soit. Le plus petit contre-exemple est
$$2^{11} - 1 = 2047 = 23 \times 89 .$$
Les nombres premiers de la forme $2^n-1$ s'appellent les **nombres premiers de Mersenne** ; on ne sait toujours pas s'il en existe une infinité.

## Going further

Montrer de la même façon que si $a^n + 1$ est premier avec $a \geqslant 2$ et $n \geqslant 1$, alors $n$ est une puissance de $2$. (Indication : si $n$ a un facteur impair $m \geqslant 3$, écrire $n = m\ell$ et utiliser $x^m + 1 = (x+1)(x^{m-1} - x^{m-2} + \cdots + 1)$ pour $m$ impair.)
