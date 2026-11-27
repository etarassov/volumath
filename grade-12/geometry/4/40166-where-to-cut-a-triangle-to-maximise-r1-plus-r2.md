---
id: "40166"
title: "Où couper un triangle pour que r₁ + r₂ soit le plus grand possible"
grade: 12
theme: geometry
difficulty: 4
duration_min: 50
tags: [cercle-inscrit, optimisation, maximum, minimum, valeurs-intermediaires, continuite, monotonie, inegalite-arithmetico-geometrique, inegalite-triangulaire]
adapted_from: null
see_also: ["40162", "40163", "40164", "40165", "40167"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 2, partie III, questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

Soit $ABC$ un triangle. On note $h$ la longueur de la hauteur issue de $A$ et $r$ le rayon du
cercle inscrit dans $ABC$. Pour tout point $D$ du segment $[BC]$ distinct de $B$ et de $C$, on note
$r_1(D)$ et $r_2(D)$ (ou simplement $r_1$ et $r_2$) les rayons des cercles inscrits dans les
triangles $ABD$ et $ACD$.

On rappelle que le rayon du cercle inscrit d'un triangle vaut
$\frac{2 \times \text{aire}}{\text{périmètre}}$, et que ce rayon est strictement inférieur à la
moitié de chaque hauteur du triangle. On admet la relation suivante, démontrée dans une partie
précédente : pour tout point $D$ de $[BC]$ distinct de $B$ et de $C$,
$$(h - 2r_1)(h - 2r_2) = h\,(h - 2r) .$$

1. Montrer qu'il existe un unique point $E$ de $[BC]$, distinct de $B$ et de $C$, tel que
   $r_1(E) = r_2(E)$.
2. a) Montrer que $E$ est le point de $[BC]$ (distinct de $B$ et de $C$) pour lequel $r_1 + r_2$
   est maximal.
   b) Montrer que $E$ est le point pour lequel $r_1^2 + r_2^2$ est minimal si et seulement si
   $8r \leq 3h$.

## Hints

1. **Question 1.** Poser $t_1 = 1 - \frac{2r_1}{h}$, $t_2 = 1 - \frac{2r_2}{h}$ et
   $t = 1 - \frac{2r}{h}$. La relation admise s'écrit $t_1 t_2 = t$. À quelle condition sur $t_1$
   a-t-on $r_1 = r_2$ ?
2. **Question 1.** Il reste à étudier $r_1$ comme fonction de $x = BD$ : écrire
   $r_1 = \frac{h\,x}{AB + x + AD}$ et montrer qu'elle est continue et strictement croissante sur
   $]0, BC[$. Quelles sont ses limites aux bornes ?
3. **Question 1.** Pour la croissance, l'inégalité triangulaire donne
   $AD' \leq AD + DD'$ quand $D'$ est plus loin de $B$ que $D$.
4. **Question 2.** On a $r_1 + r_2 = \frac{h}{2}(2 - t_1 - t_2)$ : il faut rendre $t_1 + t_2$ le
   plus petit possible, sachant que $t_1 t_2 = t$. Penser à $(\sqrt{t_1} - \sqrt{t_2})^2 \geq 0$.
5. **Question 2.** Pour b), écrire $r_1^2 + r_2^2$ en fonction de $\sigma = t_1 + t_2$ et de $t$.
   Quelles valeurs prend $\sigma$ quand $D$ parcourt $]B, C[$ ?

## Solution

Posons $t = 1 - \frac{2r}{h}$ et, pour $D$ dans $]B, C[$ (le segment $[BC]$ privé de ses
extrémités), $t_1 = 1 - \frac{2r_1}{h}$ et $t_2 = 1 - \frac{2r_2}{h}$. Ces trois nombres sont dans
$]0, 1[$, car un rayon inscrit est strictement compris entre $0$ et la moitié de la hauteur. En
divisant la relation admise par $h^2$ :
$$t_1\, t_2 = t .$$

**1.** *Traduction.* Si $r_1 = r_2$, alors $t_1 = t_2$, donc $t_1^2 = t$ et $t_1 = \sqrt{t}$.
Réciproquement, si $t_1 = \sqrt{t}$, alors $t_2 = \frac{t}{t_1} = \sqrt{t} = t_1$, donc
$r_1 = r_2$. Ainsi
$$r_1(D) = r_2(D) \iff r_1(D) = \rho, \qquad \text{où } \rho = \frac{h}{2}\,(1 - \sqrt{t}) .$$
Comme $0 < t < 1$, on a $t < \sqrt{t} < 1$, donc $0 < \rho < \frac{h}{2}(1 - t) = r$.

*Étude de $r_1$.* Notons $a = BC$, $c = AB$, et $x = BD \in\ ]0, a[$. Le triangle $ABD$ a pour aire
$\frac{1}{2}\,h\,x$ et pour périmètre $c + x + AD$, donc
$$r_1 = \frac{h\,x}{c + x + AD} = \frac{h}{1 + \frac{c + AD}{x}} .$$

- *Continuité.* Si $H$ est le pied de la hauteur issue de $A$ et $m$ l'abscisse de $H$ sur l'axe
  $(BC)$ d'origine $B$ orienté vers $C$, alors $AD = \sqrt{h^2 + (x - m)^2}$ (Pythagore). Donc
  $AD$, puis $r_1$, sont des fonctions continues de $x$.
- *Limites.* Quand $x$ tend vers $0$, $r_1$ tend vers $0$. Quand $x$ tend vers $a$, $AD$ tend vers
  $AC$ et $r_1$ tend vers $\frac{h\,a}{AB + BC + CA} = r$ (aire de $ABC$ égale à $\frac{1}{2}ha$).
- *Stricte croissance.* Soit $0 < x < x' < a$, et $D$, $D'$ les points correspondants. Posons
  $K = c + AD$. L'inégalité triangulaire dans le triangle $ADD'$ donne
  $AD' \leq AD + DD' = AD + (x' - x)$. Donc
$$\frac{c + AD'}{x'} \leq \frac{K + x' - x}{x'} < \frac{K}{x} ,$$
  la dernière inégalité équivalant (en multipliant par $x\,x' > 0$) à
  $x(x' - x) < K(x' - x)$, c'est-à-dire $x < K = c + AD$, ce qui est l'inégalité triangulaire
  stricte dans le triangle $ABD$ ($BD < AB + AD$). Ainsi $\frac{c + AD}{x}$ décroît strictement, et
  $r_1$ croît strictement.

*Conclusion.* La fonction $x \mapsto r_1$ est continue, strictement croissante sur $]0, a[$, de
limites $0$ et $r$. Comme $0 < \rho < r$, le théorème des valeurs intermédiaires et la stricte
croissance donnent une unique valeur de $x$ pour laquelle $r_1 = \rho$. Il existe donc un unique
point $E$ de $]B, C[$ tel que $r_1(E) = r_2(E)$.

**2. a)** On a
$$r_1 + r_2 = \frac{h}{2}\,(1 - t_1) + \frac{h}{2}\,(1 - t_2) = \frac{h}{2}\,(2 - t_1 - t_2) .$$
Or $(\sqrt{t_1} - \sqrt{t_2})^2 \geq 0$ donne $t_1 + t_2 \geq 2\sqrt{t_1 t_2} = 2\sqrt{t}$, avec
égalité si et seulement si $t_1 = t_2$, c'est-à-dire si et seulement si $D = E$. Donc, pour tout
$D$ de $]B, C[$,
$$r_1 + r_2 \leq h\,(1 - \sqrt{t}) ,$$
avec égalité seulement pour $D = E$ : $r_1 + r_2$ est maximal en $E$, et seulement en $E$.

**b)** Posons $\sigma = t_1 + t_2$. Comme $t_1^2 + t_2^2 = \sigma^2 - 2t_1t_2 = \sigma^2 - 2t$,
$$r_1^2 + r_2^2 = \frac{h^2}{4}\left[(1 - t_1)^2 + (1 - t_2)^2\right] = \frac{h^2}{4}\left[2 - 2\sigma + \sigma^2 - 2t\right] = \frac{h^2}{4}\left[(\sigma - 1)^2 + 1 - 2t\right] .$$
Minimiser $r_1^2 + r_2^2$ revient donc à minimiser $(\sigma - 1)^2$.

*Les valeurs de $\sigma$.* D'après a), $\sigma \geq 2\sqrt{t}$, avec égalité seulement en $E$. De
plus $1 + t - \sigma = 1 - t_1 - t_2 + t_1t_2 = (1 - t_1)(1 - t_2) > 0$, donc $\sigma < 1 + t$.
Quand $D$ tend vers $B$, $r_1$ tend vers $0$ et $r_2$ vers $r$, donc $\sigma$ tend vers $1 + t$.
Comme $\sigma$ est une fonction continue de $D$, elle prend toutes les valeurs de
$[2\sqrt{t}, 1 + t[$ quand $D$ parcourt $]B, E]$.

- *Si $2\sqrt{t} \geq 1$.* Pour $D \neq E$, on a $\sigma > 2\sqrt{t} \geq 1$, donc
  $(\sigma - 1)^2 > (2\sqrt{t} - 1)^2$ (deux nombres positifs rangés dans cet ordre ont leurs carrés
  rangés dans le même ordre). Le minimum est atteint en $E$, et seulement en $E$.
- *Si $2\sqrt{t} < 1$.* La valeur $\sigma = 1$ appartient à $]2\sqrt{t}, 1 + t[$ : elle est atteinte
  en un point $D \neq E$, où $(\sigma - 1)^2 = 0 < (2\sqrt{t} - 1)^2$. Le point $E$ ne réalise donc
  pas le minimum.

Enfin
$$2\sqrt{t} \geq 1 \iff t \geq \frac{1}{4} \iff 1 - \frac{2r}{h} \geq \frac{1}{4} \iff \frac{2r}{h} \leq \frac{3}{4} \iff 8r \leq 3h .$$
Donc $E$ est le point où $r_1^2 + r_2^2$ est minimal si et seulement si $8r \leq 3h$.

**Bilan.** Grâce à la relation $t_1t_2 = t$, le partage d'un triangle se ramène à un point d'un arc
d'hyperbole : le point $E$ où les deux cercles inscrits sont égaux existe, il est unique, et il
rend $r_1 + r_2$ maximal. Il rend aussi $r_1^2 + r_2^2$ minimal, mais seulement si le cercle
inscrit de $ABC$ n'est pas trop gros : $8r \leq 3h$.

## Going further

- Pour quels triangles a-t-on $8r > 3h$ ? Essayer un triangle isocèle en $A$ très aplati (angle
  en $A$ proche de $180°$).
- Dans la suite du sujet, on coupait $[BC]$ en $2^n$ morceaux et on cherchait le maximum de
  $r_1 + \cdots + r_{2^n}$ : voir l'exercice 40167.
- Le même calcul apparaît dans l'exercice 40162 : avec $x = \frac{2r_1}{h}$ et
  $y = \frac{2r_2}{h}$, la relation admise devient $(1 - x)(1 - y) = t$.
