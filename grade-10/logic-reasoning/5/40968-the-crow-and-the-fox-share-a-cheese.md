---
id: "40968"
title: "Le corbeau et le renard se partagent un fromage"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [jeu, strategie, partage, disque, corde, aire, valeurs-intermediaires, optimisation]
adapted_from: null
see_also: ["40969"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 3 « Fromage alléchant », questions 1 à 5. Les deux propriétés admises (continuité des aires, croisement de deux cordes) sont ajoutées à l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

Un corbeau et un renard veulent se partager un fromage qui a la forme d'un disque d'aire $1$.
Chacun est affamé et veut manger le plus de fromage possible. Ils coupent le fromage en quatre
parts ; puis le corbeau choisit une part, le renard en choisit ensuite deux parmi les trois qui
restent, et le corbeau prend la dernière.

Pour couper, on utilise un fil : chaque « coup de fil » coupe le fromage selon une corde du disque
(un segment dont les deux extrémités sont sur le bord). On donne deux coups de fil, de sorte que
les deux cordes se croisent en un point intérieur au disque : on obtient bien quatre parts.

Pour un réel $g \in [0\,;\,1]$, on dit que le corbeau dispose d'une *stratégie $g$-gourmande* s'il
peut s'arranger, quoi que fasse le renard, pour obtenir deux parts dont la somme des aires est
supérieure ou égale à $g$.

On admet les deux propriétés suivantes.

- Deux cordes se croisent en un point intérieur au disque si et seulement si leurs extrémités
  alternent sur le cercle : en faisant le tour du cercle, on rencontre une extrémité de la
  première, puis une de la seconde, puis la première, puis la seconde.
- Quand on déplace un peu les extrémités des cordes, les aires des parts varient peu. En
  particulier, si une aire varie de cette façon d'une valeur $\alpha$ à une valeur $\beta$, elle
  prend en chemin toutes les valeurs comprises entre $\alpha$ et $\beta$.

1. Soit $a$ et $b$ deux réels strictement positifs tels que $a + b = 1$. Démontrer que le corbeau
   peut donner son premier coup de fil de façon à couper le fromage en deux parts d'aires $a$
   et $b$.
2. Le corbeau donne les deux coups de fil. Pour quels réels $g$ dispose-t-il d'une stratégie
   $g$-gourmande ?
3. Le renard, mécontent, donne désormais le premier coup de fil, et le corbeau le second. Pour
   quels réels $g$ le corbeau dispose-t-il d'une stratégie $g$-gourmande ?
4. Cette fois, le corbeau donne le premier coup de fil et le renard le second. Pour quels réels
   $g$ le corbeau dispose-t-il d'une stratégie $g$-gourmande ?
5. Enfin, le renard donne les deux coups de fil. Pour quels réels $g$ le corbeau dispose-t-il
   d'une stratégie $g$-gourmande ?

## Hints

1. **Question 1.** Faire glisser une corde parallèlement à une direction fixée, d'un bord du
   disque à l'autre.
2. **Questions 2 à 5.** Commencer par le partage, une fois les coupes faites. Si les quatre parts
   ont pour aires $A \geqslant B \geqslant C \geqslant D$, combien le corbeau peut-il obtenir à
   coup sûr ? Essayer de choisir la plus grande part, puis une autre.
3. **Questions 2 à 5.** Le corbeau obtient $A + D$. Montrer que $A + D < 1$ et que
   $A + D > \frac{1}{3}$.
4. **Question 2.** Peut-on obtenir trois parts minuscules ? Penser à deux cordes proches du bord
   qui se croisent.
5. **Question 3.** Que se passe-t-il si le renard coupe selon un diamètre ? Les deux moitiés sont
   chacune coupées en deux par la seconde corde.
6. **Question 3.** Si le renard ne coupe pas selon un diamètre, le corbeau peut couper un tout
   petit morceau près d'une extrémité de la première corde.
7. **Question 4.** Si le corbeau ne coupe pas selon un diamètre, le renard peut essayer de couper
   le plus grand côté en deux moitiés, tout en laissant un morceau minuscule du petit côté.
8. **Question 5.** Peut-on découper le disque en trois parts d'aire $\frac{1}{3}$ et une
   minuscule ? Penser à deux cordes partant presque du même point du cercle.

## Solution

**1.** Fixons une direction, et considérons les cordes perpendiculaires à un diamètre $[UV]$
fixé. Quand le point où la corde coupe $[UV]$ va de $U$ à $V$, l'aire de la part située du côté de
$U$ varie sans sauter, de $0$ (corde réduite au point $U$) à $1$ (corde réduite au point $V$). Elle
prend donc en chemin la valeur $a$, pour une position strictement entre $U$ et $V$, où la corde
est une vraie corde. L'autre part a alors pour aire $1 - a = b$.

*Le partage, une fois les coupes faites.* Notons $A \geqslant B \geqslant C \geqslant D$ les aires
des quatre parts. Elles sont toutes strictement positives, car chaque part contient un petit coin
autour du point de croisement.

Si le corbeau choisit d'abord une part d'aire $X$, le renard prend deux des trois autres ; le mieux
pour lui est de laisser au corbeau la plus petite des trois. Donc :

- si le corbeau prend $A$, il obtient au moins $A + D$, et exactement $A + D$ si le renard joue
  bien ;
- s'il prend $B$ ou $C$, le renard peut lui laisser $D$, et il n'a que $B + D$ ou $C + D$ ;
- s'il prend $D$, le renard peut lui laisser $C$, et il n'a que $D + C$.

Tous ces totaux sont au plus $A + D$. **Une fois les coupes faites, le corbeau peut s'assurer
exactement $A + D$, et pas plus.** Remarquons que

$A + D = 1 - B - C < 1$ ; d'autre part $3A \geqslant A + B + C = 1 - D$, donc

$$A + D \geqslant \frac{1 - D}{3} + D = \frac{1}{3} + \frac{2D}{3} > \frac{1}{3}.$$

Ainsi, quelles que soient les coupes, $\frac{1}{3} < A + D < 1$.

**2.** Comme $A + D < 1$, le corbeau ne peut jamais s'assurer $1$. Montrons qu'il peut s'assurer
n'importe quel $g < 1$.

Soit $\varepsilon = \frac{1 - g}{2} > 0$. D'après la question 1, il existe une corde qui découpe une
calotte (un petit morceau de disque) d'aire $\varepsilon$ ; ses extrémités sont sur le cercle aux
angles $-\theta$ et $\theta$, par exemple. Faisons tourner cette corde autour du centre d'un petit
angle $\varphi$ avec $0 < \varphi < 2\theta$ : la nouvelle corde découpe aussi une calotte d'aire
$\varepsilon$, et ses extrémités, aux angles $-\theta + \varphi$ et $\theta + \varphi$, alternent
avec celles de la première. Les deux cordes se croisent donc à l'intérieur du disque.

Trois des quatre parts sont contenues dans la réunion des deux calottes, d'aire au plus
$2\varepsilon$. La quatrième part a donc une aire $A \geqslant 1 - 2\varepsilon = g$, et le
corbeau obtient $A + D > g$.

**Conclusion :** le corbeau dispose d'une stratégie $g$-gourmande si et seulement si
$g \in [0\,;\,1[$.

**3.** Le renard coupe en deux côtés d'aires $a$ et $1 - a$, avec $a \leqslant \frac{1}{2}$.

*Si le renard coupe selon un diamètre* ($a = \frac{1}{2}$). La seconde corde coupe chaque moitié en
deux : une moitié en $p$ et $\frac{1}{2} - p$, l'autre en $q$ et $\frac{1}{2} - q$. Quitte à
échanger les noms, $p \leqslant \frac{1}{4}$ et $q \leqslant \frac{1}{4}$. Posons
$m = \min(p, q)$. La plus petite part est $m$, et la plus grande est
$\max\left(\frac{1}{2} - p, \frac{1}{2} - q\right) = \frac{1}{2} - m$. Donc
$A + D = \frac{1}{2}$, **quelle que soit la seconde corde**.

*Sinon* ($a < \frac{1}{2}$). Soit $E$ une extrémité de la première corde et
$\varepsilon = \frac{1}{2} - a > 0$. Le corbeau choisit une corde qui découpe une calotte d'aire
au plus $\varepsilon$, symétrique par rapport au rayon $[OE]$ (question 1). Si cette calotte est
assez petite, ses extrémités sont de part et d'autre de $E$, et l'autre extrémité de la première
corde est en dehors de l'arc qu'elles délimitent : les deux cordes se croisent. Les deux parts qui
touchent $E$ sont dans la calotte. Une autre part est le grand côté privé d'un morceau de la
calotte, d'aire au moins $1 - a - \varepsilon = \frac{1}{2}$. Donc $A \geqslant \frac{1}{2}$ et
$A + D > \frac{1}{2}$.

Dans tous les cas, le corbeau peut s'assurer au moins $\frac{1}{2}$ ; et en coupant selon un
diamètre, le renard l'empêche d'obtenir plus que $\frac{1}{2}$.

**Conclusion :** le corbeau dispose d'une stratégie $g$-gourmande si et seulement si
$g \in [0\,;\,\frac{1}{2}]$.

**4.** *Le corbeau peut s'assurer $\frac{1}{2}$* : il coupe selon un diamètre, et d'après la
question 3, $A + D = \frac{1}{2}$ quelle que soit la corde du renard.

*Il ne peut pas s'assurer plus.* S'il coupe selon un diamètre, il obtient exactement
$\frac{1}{2}$. Supposons qu'il coupe en deux côtés d'aires $a < \frac{1}{2}$ (le petit côté) et
$1 - a$ (le grand côté), selon une corde $[EF]$. Posons
$\mu = \max\left(a, \frac{1 - a}{2}\right)$ ; comme $a < \frac{1}{2}$, on a $\mu < \frac{1}{2}$.

Pour un point $G$ de l'arc qui borde le grand côté, la corde $[EG]$ coupe le grand côté en deux
morceaux. Quand $G$ va de $E$ à $F$ le long de cet arc, l'aire du morceau qui touche l'arc de $E$ à
$G$ varie sans sauter de $0$ à $1 - a$ : pour une position de $G$, elle vaut $\frac{1 - a}{2}$.

La corde $[EG]$ ne convient pas au renard (elle croise $[EF]$ en $E$, sur le bord). Il prend
plutôt un point $H$ de l'autre arc, tout près de $E$, et coupe selon $[HG]$. Les extrémités
$E, H, F, G$ alternent, donc $[HG]$ croise $[EF]$ à l'intérieur du disque. Quand $H$ se rapproche
de $E$, la corde $[HG]$ se rapproche de $[EG]$, et les quatre aires se rapprochent de $0$, $a$,
$\frac{1 - a}{2}$ et $\frac{1 - a}{2}$. Le renard choisit $H$ assez près de $E$ pour que chaque
aire soit à moins de $\eta = \frac{1}{3}\left(\frac{1}{2} - \mu\right)$ de sa limite. Alors
$D \leqslant \eta$ et $A \leqslant \mu + \eta$, donc

$$A + D \leqslant \mu + 2\eta < \mu + 3\eta = \frac{1}{2}.$$

**Conclusion :** le corbeau dispose d'une stratégie $g$-gourmande si et seulement si
$g \in [0\,;\,\frac{1}{2}]$. Pour $g = \frac{1}{2}$, sa seule stratégie est de couper selon un
diamètre.

**5.** Quelles que soient les coupes, $A + D > \frac{1}{3}$, donc le corbeau s'assure toujours
plus que $\frac{1}{3}$ : il a une stratégie $g$-gourmande pour tout $g \leqslant \frac{1}{3}$.

Montrons que le renard peut rendre $A + D$ aussi proche de $\frac{1}{3}$ qu'il veut. Prenons un
point $B$ du cercle, et deux points $X$ et $Y$ du cercle symétriques par rapport au diamètre
passant par $B$, tels que les calottes découpées par $[BX]$ et par $[BY]$ aient chacune pour aire
$\frac{1}{3}$ (quand $X$ va de $B$ au point diamétralement opposé, l'aire de la calotte varie de
$0$ à $\frac{1}{2}$, et elle prend la valeur $\frac{1}{3}$). Les cordes $[BX]$ et $[BY]$ découpent
le disque en trois morceaux d'aire $\frac{1}{3}$, mais elles se touchent sur le bord, ce qui est
interdit.

Le renard prend alors deux points $E_1$ et $E_2$ tout près de $B$, $E_1$ du côté de $Y$ et $E_2$
du côté de $X$, et coupe selon $[E_1 X]$ et $[E_2 Y]$. Sur le cercle, on rencontre dans l'ordre
$Y, E_1, E_2, X$ : les extrémités alternent, donc les cordes se croisent à l'intérieur. Quand
$E_1$ et $E_2$ se rapprochent de $B$, les aires se rapprochent de $0$, $\frac{1}{3}$,
$\frac{1}{3}$, $\frac{1}{3}$, donc $A + D$ se rapproche de $\frac{1}{3}$. Pour tout
$g > \frac{1}{3}$, le renard peut ainsi obtenir $A + D < g$.

**Conclusion :** le corbeau dispose d'une stratégie $g$-gourmande si et seulement si
$g \in [0\,;\,\frac{1}{3}]$.

**Bilan.** Une fois le fromage coupé en parts $A \geqslant B \geqslant C \geqslant D$, le corbeau
obtient $A + D$, qui est toujours strictement entre $\frac{1}{3}$ et $1$. Selon qui coupe, il peut
s'assurer : n'importe quelle quantité inférieure à $1$ s'il coupe tout ; exactement $\frac{1}{2}$
quand chacun donne un coup de fil, dans un ordre ou dans l'autre ; seulement $\frac{1}{3}$ si le
renard coupe tout.

## Going further

- Dans la question 4, le corbeau a intérêt à couper selon un diamètre. Dans la question 3, le
  renard aussi. Pourquoi le diamètre rend-il le second coup de fil inutile ?
- Dans la suite du sujet, on imposait que les deux coupes soient perpendiculaires, et on reprenait
  la question 2 : voir l'exercice 40969. Le corbeau peut-il encore approcher $1$ ?
