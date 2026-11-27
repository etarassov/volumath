---
id: "40206"
title: "Tous les triangles à côtés entiers dont deux médianes sont perpendiculaires"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 55
tags: [equation-diophantienne, triplet-pythagoricien, parametrage, mediane, inegalite, restes, divisibilite, nombres-premiers-entre-eux]
adapted_from: null
see_also: ["40203", "40204", "40205", "40207"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2007, mathématiques, série S"
  reference: "cg-2007-s-sujet.pdf, exercice 3, partie II « Arithmétique », A « Deux familles de triangles », questions 2 à 5. Énoncé corrigé : la question 2 du sujet affirme que tout triangle de type We vérifie (1) ou (2), ce qui est faux quand a est impair, par exemple pour (19, 22, 13) ; on suppose ici a pair."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2007.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2007-s-sujet.pdf"
---

## Statement

Pour un triangle $ABC$, on note $a = BC$, $b = CA$ et $c = AB$. On dit que $ABC$ est **de type
$\mathcal{W}_e$** si ses médianes issues de $A$ et de $B$ sont perpendiculaires et si $a$, $b$, $c$
sont des entiers sans facteur premier commun (aucun nombre premier ne divise à la fois $a$, $b$ et
$c$). On cherche tous ces triangles.

On admet les trois résultats suivants.

- **(R1)** Des réels strictement positifs $a$, $b$, $c$ sont les côtés d'un triangle (non aplati)
  dont les médianes issues de $A$ et de $B$ sont perpendiculaires si et seulement si
  $a^2 + b^2 = 5c^2$ et $\frac{1}{2} < \frac{a}{b} < 2$.
- **(R2)** Si $a$, $b$, $c$ sont des entiers strictement positifs sans facteur premier commun tels que
  $a^2 + b^2 = 5c^2$, alors : $a$ et $b$ sont premiers entre eux et de parités différentes, aucun des
  deux n'est divisible par $5$, et il existe deux entiers $\alpha$ et $\beta$, premiers entre eux, tels
  que $\alpha^2 + \beta^2 = c^2$ et
  $$\text{(I)} \quad 2a + b = 5\alpha \ \text{ et } \ -a + 2b = 5\beta \qquad \text{ou} \qquad \text{(II)} \quad 2a - b = 5\alpha \ \text{ et } \ a + 2b = 5\beta .$$
- **(R3)** Les triplets $(x, y, z)$ d'entiers strictement positifs sans facteur premier commun tels
  que $x^2 + y^2 = z^2$ et $y$ pair sont exactement ceux de la forme
  $$x = u^2 - v^2, \qquad y = 2uv, \qquad z = u^2 + v^2 ,$$
  où $u$ et $v$ sont des entiers strictement positifs, premiers entre eux, de parités différentes, et
  tels que $u > v$. De plus $u$ et $v$ sont uniques.

En échangeant les noms de $A$ et $B$, on échange $a$ et $b$ sans changer les médianes. Comme $a$ et
$b$ sont de parités différentes, on peut donc toujours supposer **$a$ pair**.

1. Soit un triangle de type $\mathcal{W}_e$ dont le côté $a$ est pair. Montrer qu'il existe des
   entiers strictement positifs $u$ et $v$, premiers entre eux, de parités différentes, avec $u > v$,
   tels que l'on ait l'une des deux relations
   $$(1) \qquad (a, b, c) = \left(2(u^2 - uv - v^2),\ u^2 + 4uv - v^2,\ u^2 + v^2\right)$$
   $$(2) \qquad (a, b, c) = \left(2(u^2 + uv - v^2),\ -u^2 + 4uv + v^2,\ u^2 + v^2\right)$$
2. Déterminer les couples $(u, v)$ d'entiers strictement positifs pour lesquels la relation (1)
   donne un triangle de type $\mathcal{W}_e$. Même question pour la relation (2).
3. Montrer qu'un triangle de type $\mathcal{W}_e$ dont le côté $a$ est pair est donné par une seule des
   deux relations (1) et (2).
4. Donner les longueurs des côtés de tous les triangles de type $\mathcal{W}_e$ dont le côté $c$ est
   inférieur ou égal à $50$.

## Hints

1. **Question 1.** D'après (R1), $2a - b$ et $2b - a$ sont strictement positifs. Quel est alors le
   signe de $\alpha$ et de $\beta$ ?
2. **Question 1.** Exprimer $a$ à l'aide de $\alpha$ et $\beta$ dans chacun des cas (I) et (II). Comme
   $a$ est pair, lequel des deux nombres $\alpha$, $\beta$ est pair ?
3. **Question 2.** Pour la relation (1), traduire $b < 2a$ et vérifier que
   $3u^2 - 8uv - 3v^2 = (3u + v)(u - 3v)$.
4. **Question 2.** Pour les facteurs communs, calculer $2a + b$ et $-a + 2b$ en fonction de $u$ et
   $v$. Seul le nombre premier $5$ peut poser problème.
5. **Question 2.** Dans la division par $5$, $u^2 - uv - v^2$ a le même reste que $(u + 2v)^2$, car
   $-1$ et $4$ ont le même reste.
6. **Question 3.** Avec la relation (1), $2a + b$ est un multiple de $5$. Et avec la relation (2) ?
7. **Question 4.** Comme $c = u^2 + v^2 \leq 50$, il n'y a que quelques couples $(u, v)$ à essayer.

## Solution

**1.** Soit $ABC$ un triangle de type $\mathcal{W}_e$ avec $a$ pair. Par (R2), on dispose de $\alpha$ et
$\beta$ premiers entre eux, avec $\alpha^2 + \beta^2 = c^2$, dans le cas (I) ou (II). Par (R1),
$\frac{1}{2} < \frac{a}{b} < 2$, donc $2a - b > 0$ et $2b - a > 0$.

*Cas (I).* $\alpha = \frac{2a + b}{5} > 0$ et $\beta = \frac{2b - a}{5} > 0$. En résolvant le système,
$2\alpha - \beta = \frac{4a + 2b + a - 2b}{5} = a$ et $\alpha + 2\beta = b$.

*Cas (II).* $\alpha = \frac{2a - b}{5} > 0$ et $\beta = \frac{a + 2b}{5} > 0$. De même $a = 2\alpha + \beta$ et
$b = -\alpha + 2\beta$.

Dans les deux cas, $a = 2\alpha \pm \beta$ est pair, donc $\beta$ est pair. Le triplet $(\alpha, \beta, c)$
est formé d'entiers strictement positifs sans facteur premier commun (car $\alpha$ et $\beta$ sont premiers
entre eux), avec $\alpha^2 + \beta^2 = c^2$ et $\beta$ pair. Par (R3), il existe $u > v > 0$ premiers entre
eux et de parités différentes tels que $\alpha = u^2 - v^2$, $\beta = 2uv$ et $c = u^2 + v^2$.

- Cas (I) : $a = 2(u^2 - v^2) - 2uv = 2(u^2 - uv - v^2)$ et $b = u^2 - v^2 + 4uv$ : c'est la relation (1).
- Cas (II) : $a = 2(u^2 - v^2) + 2uv = 2(u^2 + uv - v^2)$ et $b = -(u^2 - v^2) + 4uv = -u^2 + 4uv + v^2$ :
  c'est la relation (2).

**2.** *La relation $a^2 + b^2 = 5c^2$ est toujours vraie.* Posons $\alpha = u^2 - v^2$ et
$\beta = 2uv$, de sorte que $\alpha^2 + \beta^2 = (u^2 + v^2)^2 = c^2$. La relation (1) s'écrit
$a = 2\alpha - \beta$ et $b = \alpha + 2\beta$, la relation (2) s'écrit $a = 2\alpha + \beta$ et
$b = -\alpha + 2\beta$. Dans les deux cas, en développant,
$$a^2 + b^2 = 5\alpha^2 + 5\beta^2 = 5c^2 .$$
D'après (R1), il reste donc à étudier deux choses : la condition $\frac{1}{2} < \frac{a}{b} < 2$ (avec
$a > 0$ et $b > 0$), et l'absence de facteur premier commun.

*Deux conditions toujours nécessaires.* Si un nombre premier $p$ divise $u$ et $v$, alors $p^2$
divise $a$, $b$ et $c$. Si $u$ et $v$ sont tous deux impairs, alors $c = u^2 + v^2$ est pair, et $a$,
$b$ aussi (dans $b$, on a impair $+$ pair $-$ impair). Il faut donc que $u$ et $v$ soient premiers
entre eux et de parités différentes ; on le suppose désormais. Alors $c = u^2 + v^2$ est impair.

*Relation (1) : la condition de triangle.* Il faut $a > 0$, $b > 0$ et $\frac{1}{2} < \frac{a}{b} < 2$
(R1).

- Si $u \leq v$, alors $u^2 \leq uv$ et $a = 2(u^2 - uv - v^2) < 0$. Il faut donc $u > v$, et alors
  $b = (u^2 - v^2) + 4uv > 0$.
- $a < 2b$ s'écrit $2u^2 - 2uv - 2v^2 < 2u^2 + 8uv - 2v^2$, soit $0 < 10uv$ : toujours vrai.
- $2a > b$ s'écrit $4u^2 - 4uv - 4v^2 > u^2 + 4uv - v^2$, soit $3u^2 - 8uv - 3v^2 > 0$. En développant,
  $3u^2 - 8uv - 3v^2 = (3u + v)(u - 3v)$, et $3u + v > 0$ : la condition est $u > 3v$.
- Inversement, si $u > 3v$, alors $u^2 - uv - v^2 = u(u - v) - v^2 > 3v \times 2v - v^2 > 0$, donc
  $a > 0$, $b > 0$, et les deux inégalités sont vraies.

*Relation (1) : pas de facteur commun.* On calcule
$$2a + b = 5(u^2 - v^2) \qquad \text{et} \qquad -a + 2b = 10uv .$$
Soit $p$ un nombre premier qui divise $a$, $b$ et $c$. Il est impair, car $c$ l'est. Si $p \neq 5$, il
divise $u^2 - v^2$ et $uv$. Il divise alors $u$ ou $v$, disons $u$ ; comme il divise $u^2 - v^2$, il
divise $v^2$, donc $v$. C'est exclu. Donc seul $p = 5$ est possible.

Dans la division par $5$, $-1$ et $4$ ont le même reste, donc $u^2 - uv - v^2$ a le même reste que
$u^2 + 4uv + 4v^2 = (u + 2v)^2$. Ainsi $5$ divise $a$ si et seulement si $5$ divise $u + 2v$, c'est-à-dire
$u - 3v = (u + 2v) - 5v$. Et dans ce cas, $u$ a le même reste que $3v$, donc $b$ a le même reste que
$9v^2 + 12v^2 - v^2 = 20v^2$ et $c$ que $10v^2$ : $5$ divise aussi $b$ et $c$.

**Conclusion pour (1) :** $u$ et $v$ premiers entre eux, de parités différentes, $u > 3v$, et $u - 3v$
n'est pas un multiple de $5$.

*Relation (2) : la condition de triangle.*

- $2a > b$ s'écrit $4u^2 + 4uv - 4v^2 > -u^2 + 4uv + v^2$, soit $5u^2 > 5v^2$, soit $u > v$.
- $a < 2b$ s'écrit $2u^2 + 2uv - 2v^2 < -2u^2 + 8uv + 2v^2$, soit $4u^2 - 6uv - 4v^2 < 0$. En développant,
  $4u^2 - 6uv - 4v^2 = 2(2u + v)(u - 2v)$, donc la condition est $u < 2v$.
- Inversement, si $v < u < 2v$ : $a > 0$ car $u^2 > v^2$, et $b = u(4v - u) + v^2 > 0$ car $u < 4v$.

*Relation (2) : pas de facteur commun.* Cette fois $2a - b = 5(u^2 - v^2)$ et $a + 2b = 10uv$, et le
même raisonnement montre que seul $5$ peut diviser $a$, $b$ et $c$. Le nombre $u^2 + uv - v^2$ a le
même reste que $u^2 - 4uv + 4v^2 = (u - 2v)^2$ dans la division par $5$. Donc $5$ divise $a$ si et
seulement si $5$ divise $u - 2v$, et dans ce cas $b$ a le même reste que $-4v^2 + 8v^2 + v^2 = 5v^2$ et
$c$ que $5v^2$ : $5$ divise les trois.

**Conclusion pour (2) :** $u$ et $v$ premiers entre eux, de parités différentes, $v < u < 2v$, et
$u - 2v$ n'est pas un multiple de $5$.

**3.** Si le triangle est donné par (1), alors $2a + b = 5(u^2 - v^2)$ est un multiple de $5$. S'il est
donné par (2), avec un autre couple $(u', v')$, alors $2a - b = 5(u'^2 - v'^2)$ est un multiple de $5$.
S'il était donné par les deux, $5$ diviserait la somme $(2a + b) + (2a - b) = 4a$, donc $a$, ce qui
contredit (R2).

**Conclusion :** chaque triangle de type $\mathcal{W}_e$ avec $a$ pair est donné par une seule des deux
relations. On note $\mathcal{W}_1$ et $\mathcal{W}_2$ les deux familles correspondantes.

**4.** Il suffit de chercher les triangles avec $a$ pair, puis d'échanger $a$ et $b$. On cherche les
couples $u > v \geq 1$ premiers entre eux, de parités différentes, avec $u^2 + v^2 \leq 50$ :
$$(2, 1),\ (3, 2),\ (4, 1),\ (4, 3),\ (5, 2),\ (5, 4),\ (6, 1)$$
(le suivant, $(7, 2)$, donne déjà $53$). On applique la question 2 :

| $(u, v)$ | $\frac{u}{v}$ | relation | $(a, b, c)$ |
|:-:|:-:|:-:|:-:|
| $(2, 1)$ | $2$ | aucune | |
| $(3, 2)$ | $\text{1,5}$ | (2) | $(22, 19, 13)$ |
| $(4, 1)$ | $4$ | (1) | $(22, 31, 17)$ |
| $(4, 3)$ | $\text{1,33}\ldots$ | (2) | $(38, 41, 25)$ |
| $(5, 2)$ | $\text{2,5}$ | aucune | |
| $(5, 4)$ | $\text{1,25}$ | (2) | $(58, 71, 41)$ |
| $(6, 1)$ | $6$ | (1) | $(58, 59, 37)$ |

La condition sur le multiple de $5$ ne retire aucun couple ici : $u - 3v$ vaut $1$ et $3$ pour $(4, 1)$
et $(6, 1)$, et $u - 2v$ vaut $-1$, $-2$ et $-3$ pour les trois autres.

**Conclusion :** à l'échange de $a$ et $b$ près, il y a cinq triangles :
$$(22, 19, 13), \quad (22, 31, 17), \quad (38, 41, 25), \quad (58, 59, 37), \quad (58, 71, 41) ,$$
et les cinq triangles obtenus en échangeant $a$ et $b$, comme $(19, 22, 13)$. Par exemple
$22^2 + 19^2 = 484 + 361 = 845 = 5 \times 13^2$. Dans chacun, $c$ est le plus petit côté : en effet
$c^2 - a^2 = \frac{b^2 - 4a^2}{5} < 0$ puisque $b < 2a$, et de même $c < b$.

**Bilan.** Les triangles à côtés entiers dont les médianes issues de $A$ et $B$ sont perpendiculaires
proviennent tous des triplets de Pythagore $(u^2 - v^2, 2uv, u^2 + v^2)$. Ils forment deux familles
disjointes : la première avec $u > 3v$, la seconde avec $v < u < 2v$. Le plus petit est
$(22, 19, 13)$.

## Going further

- Le sujet original affirmait la question 1 pour tous les triangles de type $\mathcal{W}_e$, sans
  supposer $a$ pair. Vérifier que $(19, 22, 13)$ est de type $\mathcal{W}_e$ et qu'il ne peut être donné
  ni par (1) ni par (2).
- Que donne la relation (1) pour $(u, v) = (8, 1)$ ? Diviser le résultat par $5$ : quel triangle
  retrouve-t-on, et dans quelle famille ?
- Dans la suite du sujet, on montrait que tous les facteurs premiers impairs de $a$ et de $b$ se
  terminent par $1$ ou par $9$ : voir l'exercice 40207. Le vérifier sur les cinq triangles trouvés.
