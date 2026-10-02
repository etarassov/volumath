---
id: "11036"
title: "Si ak + 1 est un carré, l'un des aᵢk + 1 aussi"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, carre-parfait, nombres-premiers, bezout, theoreme-chinois, construction, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 17 ; corrigé 2022-02_corrige-envoi-3.pdf. Le corrigé utilise la loi de réciprocité quadratique et le théorème de Dirichlet ; la solution ici les remplace par un argument à la manière d'Euclide (des nombres premiers aussi grands qu'on veut divisent une valeur de a_i y² − (a_i − a)) et par le théorème chinois démontré avec Bézout. La dernière phrase du corrigé dit « l'un des a_i − a est non nul » au lieu de « nul »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Soient $n \geqslant 1$ un entier et $a, a_1, a_2, \ldots, a_n$ des entiers strictement positifs. On suppose
que, pour tout entier $k$ tel que $ak + 1$ est un carré parfait, au moins l'un des nombres

$$a_1 k + 1, \quad a_2 k + 1, \quad \ldots, \quad a_n k + 1$$

est aussi un carré parfait.

Montrer qu'il existe un indice $i$ tel que $a = a_i$.

## Hints

1. Raisonne par l'absurde : suppose tous les $a_i$ différents de $a$, et fabrique un $k$ tel que $ak + 1$ soit un carré mais aucun des $a_i k + 1$. Pour qu'un nombre ne soit pas un carré, il suffit qu'un nombre premier y apparaisse avec l'exposant $1$.
2. Cherche $k$ sous la forme $ak + 1 = x^2$, avec $x - 1$ multiple de $a$. Calcule alors $a(a_i k + 1)$ en fonction de $x$.
3. Tu dois trouver $a(a_i k + 1) = a_i x^2 - (a_i - a)$. Pour chaque $i$, il te faut un grand nombre premier $p_i$ qui divise ce nombre exactement une fois. Montre qu'il existe des nombres premiers aussi grands qu'on veut qui divisent un nombre de la forme $a_i y^2 - (a_i - a)$, en imitant la preuve d'Euclide de l'infinité des nombres premiers.
4. Le théorème chinois permet ensuite de choisir un seul $x$ qui convient pour tous les $i$ à la fois.

## Solution

On note $e_p(N)$ l'exposant du nombre premier $p$ dans l'entier $N \geqslant 1$. Un carré parfait a tous
ses exposants pairs.

### Deux lemmes

**Lemme 1 (à la manière d'Euclide).** Soient $A$ et $C$ deux entiers non nuls, et $F$ un ensemble fini de
nombres premiers. Il existe un nombre premier $p$ hors de $F$ et un entier $y$ tels que $p$ divise
$Ay^2 - C$.

*Preuve.* Soit $Q$ le produit des nombres premiers de $F$ ($Q = 1$ si $F$ est vide). Prenons $y = 2CQ$ :

$$Ay^2 - C = C \left( 4ACQ^2 - 1 \right) .$$

Posons $B = 4ACQ^2 - 1$. Si $AC > 0$, alors $B \geqslant 3$ ; si $AC < 0$, alors $B \leqslant -5$. Dans
les deux cas, $B$ a un facteur premier $p$, qui divise $Ay^2 - C$. Et $p$ n'est pas dans $F$ : sinon $p$
diviserait $4ACQ^2$ et $B$, donc leur différence $1$. $\square$

**Lemme 2 (théorème chinois).** Soient $m_1, \ldots, m_r \geqslant 1$ des entiers premiers entre eux deux
à deux, et $t_1, \ldots, t_r$ des entiers. Il existe des entiers $x$, aussi grands qu'on veut, tels que
$m_j$ divise $x - t_j$ pour tout $j$.

*Preuve.* Pour deux entiers $m, m'$ premiers entre eux et deux entiers $t, t'$, le théorème de Bézout
donne $um + vm' = 1$. Posons $x_0 = t'um + tvm'$. Alors

$$x_0 - t = t'um + t(vm' - 1) = t'um - tum = (t' - t)\,u\,m ,$$

qui est un multiple de $m$, et de même $x_0 - t' = (t - t')\,v\,m'$ est un multiple de $m'$. De plus, si
$x - x_0$ est un multiple de $mm'$, alors $x$ vérifie encore les deux conditions. On remplace ainsi les deux
premières conditions par une seule, « $mm'$ divise $x - x_0$ ». Comme $m_1 m_2$ est premier avec $m_3$, avec
$m_4$, etc. (il n'a pas d'autres facteurs premiers que ceux de $m_1$ et de $m_2$), on recommence jusqu'à
n'avoir qu'une condition, « $m_1 \cdots m_r$ divise $x - X$ ». Les nombres $X + \ell \, m_1 \cdots m_r$
conviennent alors, et ils sont aussi grands qu'on veut. $\square$

### La preuve

Supposons par l'absurde que $a_i \neq a$ pour tout $i$. Posons $M = \max(a, a_1, \ldots, a_n)$. On a
$M \geqslant 2$, car si $M = 1$ tous ces nombres valent $1$ et $a_1 = a$.

**Étape 1 : des grands nombres premiers.** On choisit les nombres premiers $p_1, p_2, \ldots, p_n$ l'un
après l'autre. Pour obtenir $p_i$, on applique le lemme 1 avec $A = a_i$, $C = a_i - a$ (non nul par
hypothèse), et $F$ formé de tous les nombres premiers $\leqslant M$ et de $p_1, \ldots, p_{i-1}$. On
obtient un nombre premier $p_i > M$, différent des précédents, et un entier $y_i$ tel que $p_i$ divise
$a_i y_i^2 - (a_i - a)$.

Comme $p_i > M \geqslant 2$, le nombre $p_i$ est impair et ne divise ni $a$, ni $a_i$, ni $a_i - a$
(dont la valeur absolue est entre $1$ et $M - 1$). Il ne divise pas non plus $y_i$ : sinon il diviserait
$a_i y_i^2 - (a_i y_i^2 - (a_i - a)) = a_i - a$.

**Étape 2 : une fois exactement.** Posons $E_i(y) = a_i y^2 - (a_i - a)$. On a

$$E_i(y_i + p_i) - E_i(y_i) = 2 a_i y_i \, p_i + a_i p_i^2 .$$

Si $p_i^2$ divisait $E_i(y_i)$ et $E_i(y_i + p_i)$, il diviserait $2 a_i y_i p_i$, donc $p_i$
diviserait $2 a_i y_i$, ce qui est exclu (lemme d'Euclide). Il existe donc $z_i$, égal à $y_i$ ou à
$y_i + p_i$, tel que $p_i$ divise $E_i(z_i)$ mais $p_i^2$ ne le divise pas. (Les deux nombres sont des
multiples de $p_i$, puisque leur différence en est un.)

De plus, si $p_i^2$ divise $x - z_i$, alors $E_i(x) - E_i(z_i) = a_i (x - z_i)(x + z_i)$ est un multiple
de $p_i^2$, donc **$p_i$ divise $E_i(x)$ exactement une fois**.

**Étape 3 : un seul $x$ pour tous.** Les entiers $a, p_1^2, \ldots, p_n^2$ sont premiers entre eux deux à
deux, car les $p_i$ sont des nombres premiers distincts plus grands que $a$. Par le lemme 2, il existe un
entier $x \geqslant 2$ tel que

$$a \text{ divise } x - 1 \qquad \text{et} \qquad p_i^2 \text{ divise } x - z_i \text{ pour tout } i .$$

**Étape 4 : le $k$ cherché.** Comme $a$ divise $x - 1$, il divise $x^2 - 1 = (x - 1)(x + 1)$. Posons
$k = \dfrac{x^2 - 1}{a}$, entier strictement positif. Alors $ak + 1 = x^2$ est un carré parfait. Pour
chaque $i$,

$$a \, (a_i k + 1) = a_i (x^2 - 1) + a = a_i x^2 - (a_i - a) = E_i(x) .$$

D'après l'étape 2, $e_{p_i}(E_i(x)) = 1$. Comme $p_i$ ne divise pas $a$, on a
$e_{p_i}(a_i k + 1) = e_{p_i}(E_i(x)) = 1$, qui est impair : $a_i k + 1$ n'est pas un carré parfait.

Ainsi $ak + 1$ est un carré, mais aucun des $a_i k + 1$ ne l'est. Cela contredit l'hypothèse. Il existe donc
un indice $i$ tel que $a_i = a$.

## Going further

La réciproque est évidente : si $a = a_i$, le nombre $a_i k + 1 = ak + 1$ est un carré dès que $ak + 1$ en
est un. L'exercice dit donc que, parmi les nombres $a_1, \ldots, a_n$, on ne peut pas « remplacer » $a$
par d'autres valeurs, même en en prenant beaucoup.
