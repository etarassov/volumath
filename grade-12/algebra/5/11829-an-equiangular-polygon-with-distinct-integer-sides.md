---
id: "11829"
title: "Un polygone équiangle aux côtés entiers distincts"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [nombres complexes, racines de l unite, polygone equiangle, polynomes cyclotomiques, transformee de fourier discrete, hors-programme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 18 ; corrigé 2021-04_corrige-envoi-5.pdf (le corrigé utilise le théorème de Bézout pour les polynômes ; la solution ci-dessous le remplace par une transformée de Fourier discrète)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soient $p$ et $q$ deux nombres premiers avec $p < q$. On suppose qu'il existe un polygone convexe $P_1 P_2 \cdots P_{pq}$, à $pq$ côtés, dont tous les angles sont égaux et dont les longueurs des côtés sont des entiers deux à deux distincts.

Montrer que pour tout entier $k$ tel que $1 \leqslant k \leqslant p$,

$$P_1 P_2 + P_2 P_3 + \cdots + P_k P_{k+1} \geqslant \frac{k^3 + k}{2}.$$

## Hints

1. Placer le polygone dans le plan complexe. Avec $n = pq$ et $\omega = e^{2i\pi/n}$, le $N$-ième côté est porté par $\omega^N$. Traduire le fait que le polygone se referme.
2. Le polynôme $f(x) = \sum a_N x^N$, où les $a_N$ sont les longueurs des côtés, est à coefficients entiers et s'annule en $\omega$. On peut admettre qu'il s'annule alors aussi en $\omega^k$ pour tout $k$ premier avec $pq$. Retrouver les $a_N$ à partir des nombres $f(\omega^k)$.
3. Montrer que $a_N = u_{N \bmod p} + v_{N \bmod q}$ pour des nombres $u_i$, $v_j$ (où $N \bmod p$ est le reste de $N$ modulo $p$). Puis écrire la somme des $k$ premiers côtés comme la moyenne de $k^2$ côtés distincts.

## Solution

**Rappel.** On utilise deux résultats sur les racines de l'unité. On fixe $n \geqslant 2$ et $\omega = e^{2i\pi/n}$.

- *(Sommes géométriques, programme de maths expertes.)* Pour tout entier $m$, $\sum_{k=0}^{n-1} \omega^{km}$ vaut $n$ si $n$ divise $m$, et $0$ sinon. En effet, si $n$ ne divise pas $m$, alors $\omega^m \neq 1$ et la somme vaut $\frac{\omega^{mn} - 1}{\omega^m - 1} = 0$.
- *(Théorème admis, hors programme.)* Si un polynôme $f$ à coefficients entiers vérifie $f(\omega) = 0$, alors $f(\omega^k) = 0$ pour tout entier $k$ premier avec $n$. Ce résultat équivaut à l'irréductibilité sur $\mathbb{Q}$ des polynômes cyclotomiques, démontrée par Gauss pour $n$ premier et par Dedekind dans le cas général.

**Étape 1 : traduction en nombres complexes.** Posons $n = pq$, $\omega = e^{2i\pi/n}$, et notons $a_N$ la longueur du côté $P_{N+1} P_{N+2}$, pour $0 \leqslant N \leqslant n - 1$ (avec $P_{n+1} = P_1$). Les $a_N$ sont des entiers strictement positifs, deux à deux distincts.

Quitte à remplacer la figure par sa symétrique par rapport à une droite, on peut supposer que les sommets $P_1, P_2, \ldots, P_n$ se suivent dans le sens direct. Le polygone est convexe et ses $n$ angles sont égaux. En le parcourant, on tourne donc du même angle à chaque sommet, et ces $n$ rotations font un tour complet : chaque angle extérieur vaut $\frac{2\pi}{n}$. Plaçons le polygone dans le plan complexe de sorte que $\overrightarrow{P_1 P_2}$ pointe dans la direction de l'axe des réels positifs. Alors le vecteur $\overrightarrow{P_{N+1} P_{N+2}}$ a pour affixe $a_N\, \omega^N$. Comme le polygone se referme, la somme de ces vecteurs est nulle :

$$f(\omega) = 0, \qquad \text{où} \qquad f(x) = \sum_{N=0}^{n-1} a_N\, x^N.$$

Le polynôme $f$ est à coefficients entiers. D'après le théorème admis, $f(\omega^k) = 0$ pour tout $k$ premier avec $pq$, c'est-à-dire pour tout $k$ qui n'est divisible ni par $p$ ni par $q$.

**Étape 2 : retrouver les $a_N$.** Pour $0 \leqslant k \leqslant n - 1$, posons $c_k = f(\omega^k) = \sum_{N} a_N\, \omega^{kN}$. Pour tout entier $M$ entre $0$ et $n - 1$, d'après le premier point du rappel,

$$\sum_{k=0}^{n-1} c_k\, \omega^{-kM} = \sum_{N=0}^{n-1} a_N \sum_{k=0}^{n-1} \omega^{k(N - M)} = n\, a_M,$$

car la somme intérieure vaut $n$ pour $N = M$ et $0$ sinon (puisque $|N - M| < n$). Donc $a_M = \frac{1}{n}\sum_{k} c_k\, \omega^{-kM}$.

Dans cette somme, seuls les $k$ divisibles par $p$ ou par $q$ comptent. Ce sont, sans répétition, les $k = mq$ avec $0 \leqslant m \leqslant p - 1$, et les $k = mp$ avec $1 \leqslant m \leqslant q - 1$ (un $k$ non nul inférieur à $pq$ ne peut pas être divisible à la fois par $p$ et par $q$). Ainsi $a_M = U(M) + V(M)$, avec

$$U(M) = \frac{1}{n}\sum_{m=0}^{p-1} c_{mq} \left(\omega^{q}\right)^{-mM}, \qquad V(M) = \frac{1}{n}\sum_{m=1}^{q-1} c_{mp} \left(\omega^{p}\right)^{-mM}.$$

Or $\omega^q = e^{2i\pi/p}$ vérifie $(\omega^q)^p = 1$ : le nombre $U(M)$ ne dépend que du reste de $M$ modulo $p$. De même, $V(M)$ ne dépend que du reste de $M$ modulo $q$. On pose $u_i = U(i)$ pour $0 \leqslant i \leqslant p - 1$ et $v_j = V(j)$ pour $0 \leqslant j \leqslant q - 1$ (ce sont des nombres complexes).

**Étape 3 : un tableau.** L'application qui à $N \in \{0, \ldots, pq - 1\}$ associe le couple (reste de $N$ modulo $p$, reste de $N$ modulo $q$) est injective : si deux entiers ont les mêmes restes, leur différence est divisible par $p$ et par $q$, donc par $pq$ (lemme de Gauss), et ils sont égaux. Il y a $pq$ couples possibles, donc c'est une bijection. Pour $0 \leqslant i \leqslant p - 1$ et $0 \leqslant j \leqslant q - 1$, notons $N(i, j)$ l'unique $N$ qui a pour restes $i$ et $j$. L'étape 2 donne

$$a_{N(i,j)} = u_i + v_j.$$

**Étape 4 : la somme des $k$ premiers côtés.** Soit $1 \leqslant k \leqslant p$, et $S = P_1 P_2 + \cdots + P_k P_{k+1} = a_0 + \cdots + a_{k-1}$. Pour $0 \leqslant N \leqslant k - 1$, on a $N < p < q$, donc $N = N(N, N)$ et $a_N = u_N + v_N$. Ainsi

$$S = \sum_{i=0}^{k-1} (u_i + v_i).$$

Considérons maintenant les $k^2$ côtés $a_{N(i,j)}$ pour $0 \leqslant i, j \leqslant k - 1$ (on a bien $i < p$ et $j < q$). Leur somme vaut

$$\sum_{i=0}^{k-1} \sum_{j=0}^{k-1} \left(u_i + v_j\right) = k \sum_{i=0}^{k-1} u_i + k \sum_{j=0}^{k-1} v_j = k\, S.$$

Les indices $N(i, j)$ sont deux à deux distincts, donc ces $k^2$ côtés sont des entiers strictement positifs deux à deux distincts. Leur somme est au moins celle des $k^2$ plus petits entiers strictement positifs :

$$k\, S \geqslant 1 + 2 + \cdots + k^2 = \frac{k^2 (k^2 + 1)}{2}.$$

**Conclusion.** En divisant par $k$ :

$$P_1 P_2 + P_2 P_3 + \cdots + P_k P_{k+1} \geqslant \frac{k (k^2 + 1)}{2} = \frac{k^3 + k}{2}.$$

## Going further

- Pour $p = 2$ et $q = 3$, le polygone est un hexagone $ABCDEF$ équiangle. Montrer que l'égalité $a_{N(i,j)} = u_i + v_j$ donne $AB - DE = CD - FA = EF - BC$, et le démontrer directement, sans nombres complexes.
- Réciproquement, montrer que si $a_N = u_{N \bmod p} + v_{N \bmod q}$ pour des réels $u_i$ et $v_j$, alors $\sum_N a_N\, \omega^N = 0$.
