---
id: "8729"
title: "Deux nombres premiers, un 3, et une puissance de 4"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres-premiers, congruences, modulo-4, modulo-3, equation-diophantienne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, entraînement de mi-parcours"
  reference: "poly_valbonne_2024.pdf, Groupe A, entraînement de mi-parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Déterminer tous les triplets $(p, q, n)$ où $p$ et $q$ sont des nombres premiers et $n$ un entier avec $n \geqslant 1$, tels que

$$p^2 + q^2 + 3 = 4^n .$$

## Hints

1. Commence modulo $4$. Le membre de droite est un multiple de $4$ puisque $n \geqslant 1$. Que valent les carrés modulo $4$ ?
2. Si $p$ et $q$ étaient tous les deux impairs, que vaudrait $p^2+q^2+3$ modulo $4$ ?
3. Tu en déduis que l'un des deux nombres premiers vaut $2$. Supposons $p = 2$ et réécris l'équation.
4. Passe maintenant modulo $3$. Que vaut $4^n$ modulo $3$ ? Et quels sont les restes possibles d'un carré modulo $3$ ?
5. N'oublie pas de vérifier à la fin que le triplet trouvé est bien solution.

## Solution

**Réponse : les seuls triplets sont $(2, 3, 2)$ et $(3, 2, 2)$.**

### Étape 1 : modulo 4, l'un des deux premiers vaut 2

Comme $n \geqslant 1$, le nombre $4^n$ est un multiple de $4$ : il laisse le reste $0$ modulo $4$.

Rappelons les restes des carrés modulo $4$ : si $m = 2k$ alors $m^2 = 4k^2$ laisse le reste $0$ ; si $m = 2k+1$ alors $m^2 = 4(k^2+k)+1$ laisse le reste $1$.

Supposons que $p$ et $q$ soient tous les deux **impairs**. Alors $p^2$ et $q^2$ laissent chacun le reste $1$, et

$$p^2 + q^2 + 3 \quad \text{laisse le reste} \quad 1 + 1 + 3 = 5, \quad \text{c'est-à-dire } 1 \text{ modulo } 4 .$$

Or il devrait laisser le reste $0$. Contradiction.

Donc $p$ ou $q$ est pair. Le seul nombre premier pair est $2$. Les rôles de $p$ et $q$ étant interchangeables, supposons

$$p = 2 .$$

L'équation devient

$$4 + q^2 + 3 = 4^n, \qquad \text{c'est-à-dire} \qquad q^2 + 7 = 4^n .$$

### Étape 2 : modulo 3, on trouve $q = 3$

Comme $4 = 3+1$, le nombre $4$ laisse le reste $1$ modulo $3$, donc $4^n$ aussi, quel que soit $n$.

À gauche, $7$ laisse le reste $1$ modulo $3$. L'équation modulo $3$ donne donc

$$q^2 + 1 \equiv 1 , \qquad \text{c'est-à-dire} \qquad q^2 \equiv 0 \pmod 3 .$$

Autrement dit $3$ divise $q^2 = q \times q$. Comme $3$ est premier, il divise $q$. Et comme $q$ est premier, cela force

$$q = 3 .$$

### Étape 3 : on termine et on vérifie

Avec $q = 3$ :

$$q^2 + 7 = 9 + 7 = 16 = 4^2 ,$$

donc $n = 2$.

**Vérification.** $p = 2$, $q = 3$, $n = 2$ : on a bien $2^2 + 3^2 + 3 = 4 + 9 + 3 = 16 = 4^2$. Les nombres $2$ et $3$ sont premiers et $n = 2 \geqslant 1$. C'est une solution.

En échangeant les rôles de $p$ et $q$, on obtient aussi $(3, 2, 2)$.

### Conclusion

$$\boxed{(p,q,n) = (2,3,2) \quad \text{ou} \quad (3,2,2) .}$$

*Sur la méthode.* Deux congruences bien choisies suffisent, et chacune élimine une variable. Modulo $4$, ce sont les carrés qui parlent et cela force $p = 2$. Modulo $3$, c'est la puissance de $4$ qui parle et cela force $q = 3$. Quand une équation mêle des carrés et des puissances, il faut essayer systématiquement les petits modules : $3$, $4$, $5$, $8$, $9$.

## Going further

1. Où l'hypothèse $n \geqslant 1$ a-t-elle servi ? Que se passerait-il si on autorisait $n = 0$ ?

2. Résous la même équation en remplaçant $3$ par $1$ : trouve tous les triplets $(p,q,n)$ de premiers et d'entiers $n \geqslant 1$ avec $p^2+q^2+1 = 4^n$.

3. Montre qu'il n'existe aucun triplet de nombres premiers $(p,q,r)$ avec $p^2+q^2 = r^2$. *Indication : commence par les parités.*
