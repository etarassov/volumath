---
id: "40805"
title: "Franchir souvent une fraction force n points alignés"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 50
tags: [alignement, coordonnees, vecteurs, colinearite, principe-des-tiroirs, fractions, encadrement, inegalite]
adapted_from: null
see_also: ["40804", "40806", "40807"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 2 « Garder le cap », partie 2 « Préliminaires », questions 3 à 6, et partie 3 « Barrières rationnelles », questions 7 et 8"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Soit $(O ; \vec{\imath}, \vec{\jmath})$ un repère orthonormé du plan. On considère un entier
$n \geqslant 2$ fixé, et une suite de points $(M_k)_{k \geqslant 0}$ telle que $M_0 = O$ et que,
pour tout entier $k \geqslant 0$, le vecteur $\overrightarrow{M_k M_{k+1}}$ soit égal à
$\vec{\imath}$ ou à $\vec{\jmath}$. On cherche à quelles conditions cette suite contient $n$ points
alignés.

1. Démontrer qu'il existe une suite d'entiers $(u_k)_{k \geqslant 0}$ telle que, pour tout entier
   $k \geqslant 0$ :
   - le vecteur $\overrightarrow{M_0 M_k}$ est égal à $u_k \vec{\imath} + (k - u_k) \vec{\jmath}$ ;
   - le terme $u_{k+1}$ est égal à $u_k$ ou à $u_k + 1$.
2. Démontrer que, s'il existe deux réels $s$ et $t$ et $n$ entiers $k$ différents tels que
   $u_k = sk + t$, alors la suite $(M_k)_{k \geqslant 0}$ contient $n$ points alignés.

Pour tout entier $k \geqslant 1$, on pose $v_k = \frac{u_k}{k}$.

3. Démontrer que, pour tout entier $k \geqslant 1$, on a $0 \leqslant v_k \leqslant 1$.
4. (*Principe des tiroirs.*) Soit $p$ et $\ell$ deux entiers naturels non nuls. On range
   $p\ell$ chemises dans $p$ tiroirs. Démontrer qu'au moins un des tiroirs contient au moins $\ell$
   chemises.

Dans la suite, on considère une fraction irréductible $\frac{a}{b}$ comprise entre $0$ et $1$ :
$a$ et $b$ sont deux entiers naturels tels que $0 \leqslant a \leqslant b$ et $1 \leqslant b$.
On dit que la suite $(v_k)$ *franchit* $\frac{a}{b}$ au rang $k \geqslant 1$ si
$$v_k \leqslant \frac{a}{b} \leqslant v_{k+1} \quad \text{ou} \quad
v_{k+1} \leqslant \frac{a}{b} \leqslant v_k.$$

5. Soit $k \geqslant 1$ un rang où la suite $(v_k)$ franchit $\frac{a}{b}$. Démontrer que
   $$a - b \leqslant b u_k - a k \leqslant a.$$
6. En déduire que, si la suite $(v_k)$ franchit $\frac{a}{b}$ en au moins $(b + 1)n$ rangs
   différents, alors la suite $(M_k)_{k \geqslant 0}$ contient $n$ points alignés.

## Hints

1. **Question 1.** Que vaut la somme des deux coordonnées de $M_k$ ?
2. **Question 2.** Écrire les coordonnées des points $M_k$ concernés. Que dire des vecteurs qui
   joignent deux d'entre eux ?
3. **Question 4.** Raisonner par l'absurde : si chaque tiroir contient au plus $\ell - 1$
   chemises, combien y a-t-il de chemises en tout ?
4. **Question 5.** Traiter séparément les deux façons de franchir. Chaque inégalité entre $v_k$
   (ou $v_{k+1}$) et $\frac{a}{b}$ se traduit, en chassant les dénominateurs, en une inégalité
   entre entiers.
5. **Question 5.** Pour passer de $u_{k+1}$ à $u_k$, utiliser
   $u_k \leqslant u_{k+1} \leqslant u_k + 1$.
6. **Question 6.** Les tiroirs sont les valeurs possibles de l'entier $b u_k - a k$. Combien y en
   a-t-il ?

## Solution

**1.** Notons $(x_k ; y_k)$ les coordonnées de $M_k$. On a $x_0 = y_0 = 0$, et à chaque pas, soit
$x$ augmente de $1$ et $y$ ne change pas, soit l'inverse. Donc $x_k$ et $y_k$ sont des entiers et
$x_k + y_k = k$ pour tout $k$. Posons $u_k = x_k$. Alors $y_k = k - u_k$, donc
$\overrightarrow{M_0 M_k} = u_k \vec{\imath} + (k - u_k)\vec{\jmath}$. De plus,
$u_{k+1} = u_k + 1$ si $\overrightarrow{M_k M_{k+1}} = \vec{\imath}$, et $u_{k+1} = u_k$ si
$\overrightarrow{M_k M_{k+1}} = \vec{\jmath}$.

**2.** Soit $k_1 < k_2 < \cdots < k_n$ des entiers tels que $u_{k_r} = s k_r + t$ pour
$r = 1, \ldots, n$. Le point $M_{k_r}$ a pour coordonnées
$$(s k_r + t \; ; \; (1 - s) k_r - t).$$
Pour tout $r$, on a donc
$\overrightarrow{M_{k_1} M_{k_r}} = (k_r - k_1)\, \vec{w}$ avec
$\vec{w} = s\,\vec{\imath} + (1 - s)\,\vec{\jmath}$. Le vecteur $\vec{w}$ n'est pas nul, car $s$ et
$1 - s$ ne peuvent pas être nuls tous les deux. Tous les points $M_{k_r}$ sont donc sur la droite
passant par $M_{k_1}$ et dirigée par $\vec{w}$. Ce sont $n$ points différents, puisque la somme des
coordonnées de $M_{k_r}$ vaut $k_r$.

**Conclusion :** les $n$ points $M_{k_1}, \ldots, M_{k_n}$ sont alignés, donc la suite contient
$n$ points alignés.

**3.** $u_k = x_k$ est le nombre de pas égaux à $\vec{\imath}$ parmi les $k$ premiers pas, donc
$0 \leqslant u_k \leqslant k$. En divisant par $k > 0$ : $0 \leqslant v_k \leqslant 1$.

**4.** Supposons que chaque tiroir contienne au plus $\ell - 1$ chemises. Il y aurait alors au plus
$p(\ell - 1) = p\ell - p < p\ell$ chemises en tout, ce qui est faux. Donc au moins un tiroir
contient au moins $\ell$ chemises.

**5.** Rappelons que $b > 0$ et $k > 0$, donc multiplier par $bk$ ou par $b(k+1)$ ne change pas le
sens des inégalités.

*Premier cas : $v_k \leqslant \frac{a}{b} \leqslant v_{k+1}$.*
- De $\frac{u_k}{k} \leqslant \frac{a}{b}$, on tire $b u_k \leqslant a k$, donc
  $b u_k - a k \leqslant 0 \leqslant a$.
- De $\frac{a}{b} \leqslant \frac{u_{k+1}}{k+1}$, on tire $a(k+1) \leqslant b u_{k+1}$. Comme
  $u_{k+1} \leqslant u_k + 1$, on obtient $ak + a \leqslant b u_k + b$, donc
  $b u_k - a k \geqslant a - b$.

*Second cas : $v_{k+1} \leqslant \frac{a}{b} \leqslant v_k$.*
- De $\frac{a}{b} \leqslant \frac{u_k}{k}$, on tire $ak \leqslant b u_k$, donc
  $b u_k - a k \geqslant 0 \geqslant a - b$ (car $a \leqslant b$).
- De $\frac{u_{k+1}}{k+1} \leqslant \frac{a}{b}$, on tire $b u_{k+1} \leqslant a(k+1)$. Comme
  $u_k \leqslant u_{k+1}$, on obtient $b u_k \leqslant ak + a$, donc $b u_k - a k \leqslant a$.

**Conclusion :** dans les deux cas, $a - b \leqslant b u_k - a k \leqslant a$.

**6.** Choisissons $(b+1)n$ rangs différents où la suite $(v_k)$ franchit $\frac{a}{b}$. Pour
chacun d'eux, $c_k = b u_k - a k$ est un entier compris entre $a - b$ et $a$ (question 5). Il n'y
a que $b + 1$ entiers dans cet intervalle : ce sont les tiroirs, et les $(b+1)n$ rangs sont les
chemises. D'après le principe des tiroirs (question 4, avec $p = b + 1$ et $\ell = n$), il existe
un entier $c$ tel que $c_k = c$ pour au moins $n$ de ces rangs. Pour chacun de ces rangs,
$b u_k - a k = c$, c'est-à-dire
$$u_k = \frac{a}{b}\, k + \frac{c}{b}.$$
La question 2, avec $s = \frac{a}{b}$ et $t = \frac{c}{b}$, montre que les $n$ points $M_k$
de ces rangs sont alignés : la suite contient $n$ points alignés, choisis parmi les points $M_k$
dont le rang $k$ est un rang de franchissement.

**Bilan.** On a établi deux outils : si $u_k$ est une même fonction affine de $k$ pour $n$ rangs,
les points correspondants sont alignés ; et si la suite $\left(\frac{u_k}{k}\right)$ franchit une
même fraction irréductible $\frac{a}{b}$ de $[0 ; 1]$ en au moins $(b+1)n$ rangs, l'escalier
contient $n$ points alignés, que l'on trouve parmi les points $M_k$ de ces rangs.

## Going further

- Dans la suite du sujet, on montrait qu'un tel escalier contient *toujours* $n$ points alignés.
  L'idée : soit la suite $(v_k)$ franchit très souvent une même fraction, et cet exercice conclut ;
  soit elle reste longtemps coincée près d'une fraction, et un argument du même genre conclut
  (exercices 40806 et 40807).
- Le principe des tiroirs se généralise : si l'on range $N$ chemises dans $p$ tiroirs, l'un d'eux
  en contient au moins $\frac{N}{p}$. Pourquoi ?
