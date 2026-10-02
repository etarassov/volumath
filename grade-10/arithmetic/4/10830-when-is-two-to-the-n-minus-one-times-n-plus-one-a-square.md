---
id: "10830"
title: "Quand 2ⁿ⁻¹ × n + 1 est-il un carré ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carre-parfait, puissances-de-deux, parite, factorisation, encadrement, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ tels que le nombre

$$2^{n-1} \times n + 1$$

soit un carré parfait.

## Hints

1. Teste les petites valeurs de $n$.
2. Écris $m^2 - 1 = (m - 1)(m + 1)$. Pourquoi $m$ est-il impair ? Pose $m = 2k + 1$.
3. Tu dois arriver à $k(k + 1) = 2^{n-3} \times n$. L'un des deux nombres $k$ et $k + 1$ est impair : montre qu'il divise $n$, et que l'autre est un multiple de $2^{n-3}$.
4. Deux nombres consécutifs sont très proches l'un de l'autre. Compare $2^{n-3}$ et $n + 1$.

## Solution

**Réponse : $n = 5$ est la seule solution.**

En effet, $2^4 \times 5 + 1 = 81 = 9^2$.

### Étape 1 : les premières valeurs

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|
| $2^{n-1} \times n + 1$ | $2$ | $5$ | $13$ | $33$ | $81$ |

Parmi ces nombres, seul $81$ est un carré. Il reste à montrer qu'aucun $n \geqslant 6$ ne convient. Dans la suite, $n \geqslant 3$.

### Étape 2 : on factorise

Supposons que $2^{n-1} \times n + 1 = m^2$, avec $m \geqslant 0$ entier. Alors
$$(m - 1)(m + 1) = m^2 - 1 = 2^{n-1} \times n .$$
Le membre de droite est pair, donc $m^2$ est impair, et $m$ aussi. Écrivons $m = 2k + 1$, avec $k \geqslant 1$. Alors $(m - 1)(m + 1) = 2k \times (2k + 2) = 4k(k + 1)$, et en divisant par $4$ :
$$k(k + 1) = 2^{n-3} \times n .$$

### Étape 3 : le nombre impair et le nombre pair

Parmi les deux nombres consécutifs $k$ et $k + 1$, l'un est pair et l'autre impair. Notons $E$ le pair et $O$ l'impair, de sorte que $E \times O = 2^{n-3} \times n$.

*$E$ est un multiple de $2^{n-3}$.* Dans la décomposition en facteurs premiers de $2^{n-3} \times n$, le facteur $2$ apparaît au moins $n - 3$ fois. Comme $O$ est impair, tous ces facteurs $2$ sont dans $E$. Donc $E = 2^{n-3} \times E'$ pour un entier $E' \geqslant 1$, et en particulier
$$E \geqslant 2^{n-3} .$$

*$O$ divise $n$.* En remplaçant $E$ par $2^{n-3} \times E'$ dans $E \times O = 2^{n-3} \times n$ et en simplifiant, on obtient $E' \times O = n$. Donc $O$ divise $n$, et
$$O \leqslant n .$$

*On compare.* Comme $E$ et $O$ sont consécutifs, $E \leqslant O + 1$. On obtient
$$2^{n-3} \leqslant E \leqslant O + 1 \leqslant n + 1 .$$

### Étape 4 : $n$ est au plus $5$

Montrons que $2^{n-3} > n + 1$ pour tout $n \geqslant 6$. Pour $n = 6$ : $2^3 = 8 > 7$. Si c'est vrai pour un certain $n \geqslant 6$, alors
$$2^{n-2} = 2 \times 2^{n-3} > 2(n + 1) = 2n + 2 > n + 2 .$$
C'est donc vrai pour tout $n \geqslant 6$, ce qui contredit l'étape 3. **Donc $n \leqslant 5$.**

### Conclusion

D'après l'étape 1, parmi $n = 1, 2, 3, 4, 5$, seul $n = 5$ convient. **La seule solution est $n = 5$.**

## Going further

1. Trouve tous les entiers $n \geqslant 1$ tels que $2^n \times n + 1$ soit un carré parfait.
2. Pour $n = 5$, que valent $k$, $E$ et $O$ ? Vérifie les inégalités de l'étape 3.
