---
id: "12892"
title: "Moyenne arithmétique ou géométrique : une suite de lettres finit par se répéter"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [suites, moyenne-arithmetique, moyenne-geometrique, lemme-de-gauss, pgcd, periodicite, descente-infinie, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 2 avril 2025"
  reference: "2025-10_Sujet-Test-4-2024-2025.pdf, test senior, exercice 7 ; corrigé 2025-10_Corrige-Test-4-2024-2025.pdf (même idée que le corrigé, avec le rapport a(n − 1)/(a(n) − a(n − 1)) ; la majoration suit la solution alternative n° 1, corrigée : elle choisit T avec d0/A^T < 1, ce qui est impossible quand A = 1, par exemple pour a0 = 1, et il faut commencer à j = 1 ; dans la formule de f(j), lire A^(−k0)(A + B)^(k0 − k1)... au lieu de A^(−k1)(A + B)^(k1 − k2)...)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-4-2024-2025.pdf"
---

## Statement

Soit $a_0, a_1, a_2, \ldots$ une suite infinie strictement croissante d'entiers strictement positifs telle que, pour tout entier $n \geq 1$,

$$a_n = \frac{a_{n-1} + a_{n+1}}{2} \qquad \text{ou} \qquad a_n = \sqrt{a_{n-1}\, a_{n+1}}.$$

Autrement dit, chaque terme est la moyenne arithmétique ou la moyenne géométrique de ses deux voisins. On définit une suite de lettres $b_1, b_2, \ldots$ par : $b_n = A$ si $a_n$ est la moyenne arithmétique de $a_{n-1}$ et $a_{n+1}$, et $b_n = G$ sinon.

Montrer qu'il existe deux entiers $n_0 \geq 1$ et $d \geq 1$ tels que $b_{n+d} = b_n$ pour tout $n \geq n_0$.

## Hints

1. Écrivez $a_{n+1}$ à l'aide de $a_n$ et de $a_{n-1}$ dans chacun des deux cas. Que devient l'écart $e_n = a_n - a_{n-1}$ après une lettre $A$ ? Après une lettre $G$ ?
2. Étudiez le nombre $h_n = a_{n-1}/e_n$ : comment change-t-il après une lettre $A$, après une lettre $G$ ?
3. Écrivez $h_1 = r/s$ sous forme irréductible. Montrez qu'après $j$ lettres $A$, une lettre $G$ multiplie l'écart par $(r + (j+1)s)/(r + js)$, et que ces deux entiers sont premiers entre eux.
4. Notez $k_j$ le nombre de lettres $G$ entre la $j$-ième et la $(j+1)$-ième lettre $A$. Avec le lemme de Gauss, montrez que $(r + js)^{k_j}$ divise l'écart au début de ce groupe de lettres $G$.
5. Montrez que les $k_j$ sont bornés, puis regardez la plus grande valeur que la suite $(k_j)$ prend une infinité de fois.

## Solution

### Rappel

**Lemme de Gauss** (maths expertes). Si un entier $x$ divise un produit $yz$ et si $x$ est premier avec $y$, alors $x$ divise $z$.

### Étape 1 : les deux règles

Si $b_n = A$, alors $a_{n+1} = 2a_n - a_{n-1}$. Si $b_n = G$, alors $a_n^2 = a_{n-1} a_{n+1}$, donc $a_{n+1} = a_n^2/a_{n-1}$.

Pour $n \geq 1$, on note $e_n = a_n - a_{n-1}$ l'écart entre deux termes consécutifs. C'est un entier strictement positif, car la suite est strictement croissante.

- Si $b_n = A$ : $e_{n+1} = a_{n+1} - a_n = a_n - a_{n-1} = e_n$. **Une lettre $A$ ne change pas l'écart.**
- Si $b_n = G$ : le calcul est ci-dessous.

$$e_{n+1} = \frac{a_n^2}{a_{n-1}} - a_n = \frac{a_n (a_n - a_{n-1})}{a_{n-1}} = e_n \times \frac{a_n}{a_{n-1}}.$$

### Étape 2 : le nombre h

Pour $n \geq 1$, on pose $h_n = a_{n-1}/e_n$, qui est un rationnel strictement positif. On a

$$\frac{a_n}{a_{n-1}} = \frac{a_{n-1} + e_n}{a_{n-1}} = 1 + \frac{1}{h_n}.$$

- Si $b_n = A$ : $h_{n+1} = a_n/e_{n+1} = (a_{n-1} + e_n)/e_n = h_n + 1$.
- Si $b_n = G$ : $h_{n+1} = a_n/e_{n+1} = (a_n a_{n-1})/(e_n a_n) = a_{n-1}/e_n = h_n$.

On écrit $h_1 = a_0/(a_1 - a_0) = r/s$ sous forme irréductible : $r, s \geq 1$ et $\mathrm{PGCD}(r, s) = 1$. Pour $j \geq 0$, on pose

$$q_j = r + js.$$

On obtient de proche en proche que $h_n = q_j/s$, où $j$ est le nombre de lettres $A$ parmi $b_1, \ldots, b_{n-1}$. En effet c'est vrai pour $n = 1$, une lettre $G$ ne change ni $h$ ni $j$, et une lettre $A$ ajoute $1$ à $h$, c'est-à-dire $s/s$, et ajoute $1$ à $j$.

Donc, si $b_n = G$ et s'il y a $j$ lettres $A$ avant elle,

$$\frac{a_n}{a_{n-1}} = 1 + \frac{s}{q_j} = \frac{q_{j+1}}{q_j}, \qquad \text{et} \qquad e_{n+1} = e_n \times \frac{q_{j+1}}{q_j}.$$

**Les entiers $q_j$ et $q_{j+1}$ sont premiers entre eux.** Un diviseur commun de $q_j$ et $q_{j+1}$ divise $q_{j+1} - q_j = s$, puis $q_j - js = r$. Il divise donc $\mathrm{PGCD}(r, s) = 1$.

### Étape 3 : on découpe la suite de lettres

S'il n'y a qu'un nombre fini de lettres $A$ (peut-être aucune), on choisit $n_0$ plus grand que la position de la dernière lettre $A$. Alors $b_n = G$ pour tout $n \geq n_0$, et $d = 1$ convient.

On suppose désormais qu'il y a une infinité de lettres $A$. On note $p_1 < p_2 < \cdots$ leurs positions, et $p_0 = 0$. Pour $j \geq 0$, on note $k_j = p_{j+1} - p_j - 1 \geq 0$ le nombre de lettres $G$ entre la $j$-ième et la $(j+1)$-ième lettre $A$. La suite de lettres est donc formée de $k_0$ lettres $G$, puis d'un $A$, puis de $k_1$ lettres $G$, puis d'un $A$, et ainsi de suite.

**Il suffit de montrer que $k_j$ est constant à partir d'un certain rang.** En effet, si $k_j = k$ pour tout $j \geq J$, alors à partir de la position $p_J + 1$ les lettres sont : $k$ fois $G$, puis $A$, puis $k$ fois $G$, puis $A$, et ainsi de suite. On a alors $b_{n+d} = b_n$ pour tout $n \geq n_0 = p_J + 1$, avec $d = k + 1$.

On note $D_j = e_{p_j + 1}$ l'écart au début du $j$-ième groupe de lettres $G$. Les lettres $b_n$ pour $p_j < n < p_{j+1}$ sont $k_j$ lettres $G$ précédées de $j$ lettres $A$ : chacune multiplie l'écart par $q_{j+1}/q_j$. Puis la lettre $b_{p_{j+1}} = A$ ne change pas l'écart. Donc

$$D_{j+1} = D_j \times \left(\frac{q_{j+1}}{q_j}\right)^{k_j}. \qquad (1)$$

### Étape 4 : une divisibilité

**Pour tout $j \geq 0$, l'entier $q_j^{k_j}$ divise $D_j$.**

Pour $i = 0, 1, \ldots, k_j$, le nombre $D_j \times (q_{j+1}/q_j)^i$ est l'écart $e_{p_j + 1 + i}$ : c'est un entier. Montrons par récurrence sur $i$ que $q_j^i$ divise $D_j$, pour $0 \leq i \leq k_j$.

C'est clair pour $i = 0$. Supposons que $q_j^i$ divise $D_j$, avec $i < k_j$, et écrivons $D_j = q_j^i X$. Alors

$$D_j \times \left(\frac{q_{j+1}}{q_j}\right)^{i+1} = \frac{X\, q_{j+1}^{i+1}}{q_j}$$

est un entier, donc $q_j$ divise $X q_{j+1}^{i+1} = (X q_{j+1}^{i})\, q_{j+1}$. Comme $q_j$ est premier avec $q_{j+1}$, le lemme de Gauss donne que $q_j$ divise $X q_{j+1}^{i}$. On recommence $i$ fois de plus, et on obtient que $q_j$ divise $X$. Donc $q_j^{i+1}$ divise $D_j$.

### Étape 5 : une quantité qui contrôle tout

Pour $j \geq 1$ et pour un entier $T \geq 0$, on pose $F_j(T) = D_j/q_j^T$, qui est un rationnel strictement positif. D'après $(1)$,

$$F_{j+1}(T) = \frac{D_{j+1}}{q_{j+1}^T} = \frac{D_j\, q_{j+1}^{k_j}}{q_j^{k_j}\, q_{j+1}^T} = F_j(T) \times \left(\frac{q_{j+1}}{q_j}\right)^{k_j - T}. \qquad (2)$$

Comme $q_{j+1} > q_j$, on en déduit :

- si $k_j < T$, alors $F_{j+1}(T) < F_j(T)$ ;
- si $k_j = T$, alors $F_{j+1}(T) = F_j(T)$.

D'autre part, d'après l'étape 4, on a la propriété suivante.

**(3)** Si $k_j \geq T$, alors $q_j^T$ divise $q_j^{k_j}$, qui divise $D_j$, donc $F_j(T)$ est un entier strictement positif, et $F_j(T) \geq 1$.

### Étape 6 : les k sont bornés

On a $q_1 = r + s \geq 2$. On choisit un entier $T$ tel que $2^T > D_1$. Alors $q_1^T \geq 2^T > D_1$, donc $F_1(T) < 1$.

Montrons par récurrence que, pour tout $j \geq 1$, on a $F_j(T) < 1$ et $k_j < T$. Si $F_j(T) < 1$, alors $k_j < T$ d'après $(3)$. Puis $F_{j+1}(T) < F_j(T) < 1$ d'après $(2)$. La récurrence est établie.

Donc **$k_j \leq T - 1$ pour tout $j \geq 1$.**

On commence à $j = 1$ et non à $j = 0$, car $q_0 = r$ peut valoir $1$ (par exemple si $a_0 = 1$), et alors $F_0(T) = D_0$ n'est jamais plus petit que $1$.

### Étape 7 : les k finissent par être constants

Pour $j \geq 1$, l'entier $k_j$ ne prend que les valeurs $0, 1, \ldots, T - 1$. Une au moins de ces valeurs est prise une infinité de fois. Soit $k$ la plus grande d'entre elles. Chaque valeur plus grande que $k$ n'est prise qu'un nombre fini de fois, donc il existe un rang $J \geq 1$ tel que $k_j \leq k$ pour tout $j \geq J$. Quitte à prendre $J$ plus grand, on peut supposer de plus que $k_J = k$.

Pour $j \geq J$, on pose $P_j = F_j(k)$. D'après $(2)$ avec $T = k$, et puisque $k_j \leq k$ :

- si $k_j = k$, alors $P_{j+1} = P_j$, et $P_j$ est un entier strictement positif d'après $(3)$ ;
- si $k_j < k$, alors $P_{j+1} < P_j$.

La suite $(P_j)_{j \geq J}$ est donc décroissante.

Soient $j_1 = J < j_2 < j_3 < \cdots$ les indices $j \geq J$ tels que $k_j = k$. Il y en a une infinité, et les nombres $P_{j_1} \geq P_{j_2} \geq \cdots$ sont des entiers strictement positifs. Supposons que $j_{i+1} > j_i + 1$, c'est-à-dire qu'il y a un « trou » entre $j_i$ et $j_{i+1}$. Alors $k_{j_i + 1} < k$, et

$$P_{j_{i+1}} \leq P_{j_i + 2} < P_{j_i + 1} = P_{j_i}.$$

Chaque trou fait donc baisser l'entier $P$ d'au moins $1$. Comme $P$ reste un entier strictement positif, il y a au plus $P_J - 1$ trous. Après le dernier trou, on a $j_{i+1} = j_i + 1$ pour tout $i$ : **$k_j = k$ pour tout $j$ assez grand.**

### Conclusion

D'après l'étape 3, les lettres finissent par former le motif « $k$ fois $G$, puis $A$ » répété indéfiniment. **Il existe donc des entiers $n_0 \geq 1$ et $d = k + 1 \geq 1$ tels que $b_{n+d} = b_n$ pour tout $n \geq n_0$.**

## Going further

1. Vérifiez que la suite $1, 2, 4, 6, 9, 12, 16, 20, 25, \ldots$, formée des carrés $m^2$ et des nombres $m(m+1)$ placés entre eux, donne les lettres $G, A, G, A, \ldots$
2. Trouvez une suite pour laquelle les lettres sont $G, G, A, G, G, A, \ldots$ (Essayez les nombres $m^3$, $m^2(m+1)$, $m(m+1)^2$.)
3. Dans l'exemple 1, que valent $r$, $s$, les $q_j$ et les $D_j$ ? Vérifiez la formule $(1)$ sur cet exemple.
