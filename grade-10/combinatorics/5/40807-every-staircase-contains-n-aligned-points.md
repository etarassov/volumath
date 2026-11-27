---
id: "40807"
title: "Tout escalier contient n points alignés"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [alignement, principe-des-tiroirs, fractions, encadrement, valeurs-intermediaires-discretes, disjonction-de-cas, majoration, puissances-de-deux]
adapted_from: null
see_also: ["40804", "40805", "40806"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 2 « Garder le cap », partie 5 « Coincé dans un intervalle principal », questions 15 à 17, et partie 6 « Conclusion », question 18"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Soit $(O ; \vec{\imath}, \vec{\jmath})$ un repère orthonormé du plan et $n \geqslant 2$ un entier
fixé. On considère une suite de points $(M_k)_{k \geqslant 0}$ telle que $M_0 = O$ et que, pour
tout entier $k \geqslant 0$, le vecteur $\overrightarrow{M_k M_{k+1}}$ soit égal à $\vec{\imath}$
ou à $\vec{\jmath}$. On veut démontrer que cette suite contient toujours $n$ points alignés.

On note $u_k$ l'abscisse de $M_k$, de sorte que $M_k$ a pour coordonnées $(u_k ; k - u_k)$ et que
$u_{k+1}$ vaut $u_k$ ou $u_k + 1$. Pour $k \geqslant 1$, on pose $v_k = \frac{u_k}{k}$ ; on a
$0 \leqslant v_k \leqslant 1$.

Pour une fraction irréductible $\frac{a}{b}$ (avec $b \geqslant 1$), on appelle *intervalle
principal inférieur* et *intervalle principal supérieur* de $\frac{a}{b}$ les intervalles
$$\left[\frac{a}{b} - \frac{1}{2bn} \; ; \; \frac{a}{b}\right] \qquad \text{et} \qquad
\left[\frac{a}{b} \; ; \; \frac{a}{b} + \frac{1}{2bn}\right].$$

On admet les résultats suivants, démontrés dans d'autres parties du problème.

- **(R1)** S'il existe deux réels $s$ et $t$ et $n$ entiers $k$ différents tels que
  $u_k = sk + t$, alors les $n$ points $M_k$ correspondants sont alignés.
- **(R2)** (*Principe des tiroirs.*) Si l'on range $p\ell$ chemises dans $p$ tiroirs, l'un des
  tiroirs contient au moins $\ell$ chemises.
- **(R3)** Soit $\frac{a}{b}$ une fraction irréductible avec $0 \leqslant a \leqslant b$. On dit que
  $(v_k)$ *franchit* $\frac{a}{b}$ au rang $k \geqslant 1$ si
  $v_k \leqslant \frac{a}{b} \leqslant v_{k+1}$ ou $v_{k+1} \leqslant \frac{a}{b} \leqslant v_k$.
  Si $(v_k)$ franchit $\frac{a}{b}$ en au moins $(b + 1)n$ rangs différents, alors $n$ des
  points $M_k$, pris parmi ceux dont le rang $k$ est l'un de ces rangs, sont alignés.
- **(R4)** Il existe des fractions irréductibles
  $$0 = e_0 < e_1 < e_2 < \cdots < e_L = 1,$$
  en nombre $L + 1 < 8n^2$ et de dénominateurs tous inférieurs ou égaux à $4n - 1$, telles que
  chacun des intervalles $[e_i ; e_{i+1}]$ (pour $0 \leqslant i \leqslant L - 1$) soit inclus dans
  l'intervalle principal supérieur de $e_i$ ou dans l'intervalle principal inférieur de $e_{i+1}$.

**Coincé dans un intervalle principal.** Soit $\frac{a}{b}$ une fraction irréductible avec
$b \geqslant 1$, et $\ell \geqslant 1$ un entier.

1. On suppose que chacun des termes $v_{\ell n}, v_{\ell n + 1}, \ldots, v_{2\ell n - 1}$
   appartient à l'intervalle principal supérieur de $\frac{a}{b}$. Démontrer que
   $0 \leqslant b u_k - a k < \ell$ pour tout entier $k$ tel que
   $\ell n \leqslant k \leqslant 2\ell n - 1$.
2. En déduire que, dans ce cas, la suite $(M_k)$ contient $n$ points alignés.
3. On suppose maintenant que chacun des termes $v_{\ell n}, \ldots, v_{2\ell n - 1}$ appartient à
   l'intervalle principal inférieur de $\frac{a}{b}$. Démontrer que, dans ce cas aussi, la suite
   $(M_k)$ contient $n$ points alignés.

**Conclusion.**

4. a) Démontrer que la suite $(M_k)_{k \geqslant 0}$ contient nécessairement $n$ points alignés.

   b) Démontrer que $n$ des $n \times 2^{32 n^4}$ premiers points de la suite sont alignés.

## Hints

1. **Question 1.** Traduire $\frac{a}{b} \leqslant v_k \leqslant \frac{a}{b} + \frac{1}{2bn}$ en
   multipliant par $bk$, puis utiliser $k \leqslant 2\ell n - 1$.
2. **Question 2.** Combien y a-t-il de rangs $k$ entre $\ell n$ et $2\ell n - 1$ ? Combien de
   valeurs entières possibles pour $b u_k - a k$ ? Penser à (R2), puis à (R1).
3. **Question 4a.** Découper les rangs en blocs dont la longueur double à chaque fois :
   $B_j = \{2^j n, 2^j n + 1, \ldots, 2^{j+1} n - 1\}$, pour $j = 0, 1, 2, \ldots$ Le bloc $B_j$ a
   exactement la forme des questions 1 à 3, avec $\ell = 2^j$.
4. **Question 4a.** Pour un bloc donné, deux cas : soit tous les $v_k$ du bloc sont dans un même
   intervalle $[e_i ; e_{i+1}]$, et les questions 2 et 3 concluent ; soit ce n'est pas le cas.
   Montrer qu'alors $(v_k)$ franchit l'un des $e_i$ à un rang $k$ tel que $k$ et $k + 1$ soient
   tous les deux dans le bloc.
5. **Question 4a.** Si aucun bloc n'est du premier type, chaque bloc fournit un franchissement
   d'une des fractions $e_i$. Il y a moins de $8n^2$ fractions $e_i$ : avec assez de blocs, l'une
   d'elles est franchie très souvent. Combien de fois faut-il, d'après (R3) ?
6. **Question 4b.** Compter combien de blocs suffisent, et où se termine le dernier d'entre eux.

## Solution

**1.** Soit $k$ tel que $\ell n \leqslant k \leqslant 2\ell n - 1$. On a
$\frac{a}{b} \leqslant \frac{u_k}{k} \leqslant \frac{a}{b} + \frac{1}{2bn}$. En multipliant par
$bk > 0$ :
$$ak \leqslant b u_k \leqslant ak + \frac{k}{2n}, \quad \text{donc} \quad
0 \leqslant b u_k - ak \leqslant \frac{k}{2n} \leqslant \frac{2\ell n - 1}{2n} < \ell.$$

**2.** Il y a $2\ell n - 1 - \ell n + 1 = \ell n$ rangs $k$ entre $\ell n$ et $2\ell n - 1$. Pour
chacun, $b u_k - a k$ est un entier compris entre $0$ et $\ell - 1$ (question 1) : il n'y a que
$\ell$ valeurs possibles. D'après le principe des tiroirs (R2), avec $\ell$ tiroirs et $\ell n$
chemises, il existe un entier $c$ tel que $b u_k - ak = c$ pour au moins $n$ rangs $k$. Pour ces
rangs, $u_k = \frac{a}{b} k + \frac{c}{b}$, et (R1) avec $s = \frac{a}{b}$, $t = \frac{c}{b}$ montre
que les $n$ points $M_k$ correspondants sont alignés. Leurs rangs sont tous entre $\ell n$ et
$2\ell n - 1$.

**3.** Cette fois, pour $\ell n \leqslant k \leqslant 2\ell n - 1$, on a
$\frac{a}{b} - \frac{1}{2bn} \leqslant \frac{u_k}{k} \leqslant \frac{a}{b}$, d'où, en multipliant
par $bk > 0$,
$$ak - \frac{k}{2n} \leqslant b u_k \leqslant ak, \quad \text{donc} \quad
0 \leqslant ak - b u_k \leqslant \frac{k}{2n} < \ell.$$
L'entier $ak - b u_k$ prend au plus $\ell$ valeurs ($0$ à $\ell - 1$) sur les $\ell n$ rangs du
bloc. Par (R2), il existe $c$ tel que $ak - b u_k = c$ pour au moins $n$ rangs, c'est-à-dire
$u_k = \frac{a}{b}k - \frac{c}{b}$, et (R1) montre que les $n$ points $M_k$ correspondants, dont les
rangs sont entre $\ell n$ et $2\ell n - 1$, sont alignés.

**4. a)** Les fractions $e_0, \ldots, e_L$ de (R4) découpent $[0 ; 1]$ en $L$ intervalles
$[e_i ; e_{i+1}]$, que l'on appelle des *cases*. Pour tout entier $j \geqslant 0$, notons $B_j$ le
bloc des rangs $k$ tels que $2^j n \leqslant k \leqslant 2^{j+1} n - 1$. Ces blocs sont disjoints
et se suivent : $B_0$ va de $n$ à $2n - 1$, $B_1$ de $2n$ à $4n - 1$, etc.

*Étape 1 : chaque bloc est d'un des deux types suivants.*

- *Type 1* : tous les $v_k$, pour $k \in B_j$, sont dans une même case $[e_i ; e_{i+1}]$.
- *Type 2* : il existe une fraction $e_i$ et un rang $k$ tels que $k$ et $k + 1$ soient dans
  $B_j$ et que $(v_k)$ franchisse $e_i$ au rang $k$.

Fixons un bloc $B_j$ et notons $m$ et $M$ la plus petite et la plus grande des valeurs $v_k$ pour
$k \in B_j$ ; on a $0 \leqslant m \leqslant M \leqslant 1$.

Supposons d'abord qu'aucune fraction $e_i$ ne soit strictement comprise entre $m$ et $M$. Si
$m = 1$, toutes les valeurs valent $1$ et sont dans la dernière case. Sinon, soit $i$ le plus grand
indice tel que $e_i \leqslant m$ ; alors $e_i \leqslant m < e_{i+1}$. Comme $e_{i+1}$ n'est pas
strictement entre $m$ et $M$, on a $M \leqslant e_{i+1}$. Toutes les valeurs $v_k$ du bloc sont
donc dans la case $[e_i ; e_{i+1}]$ : le bloc est de type 1.

Supposons maintenant qu'une fraction $e = e_i$ vérifie $m < e < M$. Il existe des rangs $k_1$ et
$k_2$ du bloc tels que $v_{k_1} = m < e$ et $v_{k_2} = M > e$.

- Si $k_1 < k_2$, soit $k$ le plus grand rang de $\{k_1, \ldots, k_2 - 1\}$ tel que $v_k < e$
  (il en existe, puisque $v_{k_1} < e$). Alors $v_{k+1} \geqslant e$ : c'est vrai par définition
  de $k$ si $k + 1 < k_2$, et c'est vrai si $k + 1 = k_2$ car $v_{k_2} > e$. Donc
  $v_k \leqslant e \leqslant v_{k+1}$.
- Si $k_2 < k_1$, on raisonne de même avec le plus grand rang $k$ de
  $\{k_2, \ldots, k_1 - 1\}$ tel que $v_k > e$ : on obtient $v_{k+1} \leqslant e \leqslant v_k$.

Dans les deux cas, $k$ et $k + 1$ sont dans le bloc et $(v_k)$ franchit $e$ au rang $k$ : le bloc
est de type 2.

*Étape 2 : un bloc de type 1 donne $n$ points alignés.* Si le bloc $B_j$ est de type 1, ses termes
$v_{\ell n}, \ldots, v_{2\ell n - 1}$, avec $\ell = 2^j$, sont dans une case $[e_i ; e_{i+1}]$.
D'après (R4), cette case est incluse dans l'intervalle principal supérieur de $e_i$ ou dans
l'intervalle principal inférieur de $e_{i+1}$. La question 2 ou la question 3 donne alors $n$
points alignés.

*Étape 3 : beaucoup de blocs de type 2 donnent $n$ points alignés.* Considérons les $32 n^4$
premiers blocs $B_0, B_1, \ldots, B_{32n^4 - 1}$. Si l'un d'eux est de type 1, l'étape 2 conclut.
Sinon, chacun d'eux fournit un rang de franchissement d'une des fractions $e_i$, et ces
$32 n^4 = 8n^2 \times 4n^2$ rangs sont différents puisque les blocs sont disjoints. Rangeons chaque
rang dans le « tiroir » de la fraction $e_i$ qu'il franchit. Il y a moins de $8n^2$ tiroirs ; en
ajoutant des tiroirs vides pour en avoir exactement $8n^2$, le principe des tiroirs (R2) donne une
fraction $e_i = \frac{a}{b}$ franchie en au moins $4n^2$ rangs différents. Or $b \leqslant 4n - 1$,
donc $(b + 1)n \leqslant 4n \times n = 4n^2$. D'après (R3), $n$ des points $M_k$, avec $k$ parmi ces
rangs de franchissement, sont alignés.

**Conclusion :** dans tous les cas, la suite $(M_k)$ contient $n$ points alignés.

**b)** Dans la preuve précédente, on n'a utilisé que les blocs $B_0, \ldots, B_{32n^4 - 1}$. Tous
leurs rangs vérifient $k \leqslant 2^{32 n^4} n - 1$. Les points alignés trouvés sont des points
$M_k$ dont le rang $k$ est dans ces blocs : dans l'étape 2, ce sont des rangs du bloc de type 1
(questions 2 et 3) ; dans l'étape 3, ce sont des rangs de franchissement, qui sont aussi dans les
blocs (d'après la forme précise de (R3)). Ils sont donc parmi
$M_0, M_1, \ldots, M_{n \times 2^{32n^4} - 1}$.

**Conclusion :** $n$ des $n \times 2^{32 n^4}$ premiers points de la suite sont alignés.

**Bilan.** Pour tout entier $n \geqslant 2$, tout escalier (une suite de points partant de
l'origine et avançant à chaque pas de $\vec{\imath}$ ou de $\vec{\jmath}$) contient $n$ points
alignés, et on peut les trouver parmi ses $n \times 2^{32 n^4}$ premiers points. La preuve
distingue deux comportements de la pente moyenne $v_k$ : soit elle reste longtemps dans un petit
intervalle autour d'une fraction, soit elle franchit très souvent une même fraction.

## Going further

- Dans le sujet, on demandait ensuite si un escalier contient nécessairement une *infinité* de
  points alignés. La réponse est non (exercice 40804).
- La borne $n \times 2^{32n^4}$ est énorme. En regardant de plus près le nombre de fractions $e_i$
  et leurs dénominateurs, pouvez-vous l'améliorer ? Le sujet précisait que toute autre borne finie
  serait valorisée.
- Avec un ordinateur, trouver le plus petit nombre $N$ tel que, parmi les $N$ premiers points de
  n'importe quel escalier, il y ait toujours $4$ points alignés.
