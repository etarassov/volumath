---
id: "13620"
title: "Qui a raison sur l'addition des fractions ?"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [fractions, egalite, contre-exemple, equivalence, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2012 (test de sélection du stage olympique de Montpellier, 5 juin 2012)"
  reference: "2017-09_coupe_printemps_2012_3.pdf, épreuve collège, exercice 4 (aussi exercice 4 des épreuves de seconde et de première, 2017-09_coupe_printemps_2012_2.pdf et 2017-09_coupe_printemps_2012_1.pdf) ; corrigé 2017-09_coupe_printemps_2012_corrige.pdf, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2012_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2012_3.pdf"
---

## Statement

Soient $b$ et $d$ deux nombres réels non nuls, tels que $b + d$ soit lui aussi non nul. On s'intéresse à l'égalité

$$\frac{a}{b} + \frac{c}{d} = \frac{a + c}{b + d} ,$$

que quelqu'un a baptisée « additivité des fractions ».

- Mathias affirme que cette égalité est vraie pour tous les nombres réels $a$ et $c$.
- Mathilde pense qu'elle est vraie si et seulement s'il existe un nombre réel $m$ tel que $a = mb^2$ et $c = -md^2$.
- Leur professeur rappelle qu'on peut additionner deux fractions de cette façon si et seulement si elles ont le même dénominateur, c'est-à-dire si $b = d$.
- Un inspecteur affirme que cette égalité est toujours fausse.

Qui a raison : Mathias, Mathilde, le professeur, l'inspecteur, ou aucun des quatre ? Justifie soigneusement ta réponse.

## Hints

1. Pour montrer qu'une affirmation générale est fausse, un seul exemple suffit. Essaie $a = b = c = d = 1$.
2. Pour montrer que l'inspecteur a tort, il suffit de trouver un seul cas où l'égalité est vraie. Essaie avec $a$ et $c$ nuls.
3. Pour Mathilde, chasse les dénominateurs en multipliant les deux membres par $bd(b + d)$, puis simplifie.
4. Attention, Mathilde dit « si et seulement si » : il y a deux sens à démontrer.

## Solution

On examine les quatre affirmations l'une après l'autre.

**Mathias a tort.** Il affirme que l'égalité est vraie pour **tous** les nombres $a$ et $c$. Un seul contre-exemple suffit pour le contredire. Avec $a = b = c = d = 1$ :

$$\frac{1}{1} + \frac{1}{1} = 2, \qquad \text{alors que} \qquad \frac{1 + 1}{1 + 1} = 1 .$$

**Le professeur a tort.** Dans l'exemple précédent, $b = d$, et pourtant l'égalité est fausse. Donc avoir le même dénominateur ne suffit pas. (Il se trompe aussi dans l'autre sens, comme on le verra plus bas : l'égalité peut être vraie avec $b \ne d$.)

**L'inspecteur a tort.** Il affirme que l'égalité est **toujours** fausse. Il suffit de trouver un cas où elle est vraie. Avec $a = c = 0$ et $b = d = 1$ :

$$\frac{0}{1} + \frac{0}{1} = 0 = \frac{0 + 0}{1 + 1} .$$

**Mathilde a raison.** On commence par transformer l'égalité. Comme $b$, $d$ et $b + d$ ne sont pas nuls, on peut multiplier les deux membres par $bd(b + d)$ sans changer le fait qu'ils sont égaux ou non, puisqu'on pourra ensuite rediviser. L'égalité

$$\frac{a}{b} + \frac{c}{d} = \frac{a + c}{b + d}$$

équivaut donc à

$$ad(b + d) + cb(b + d) = (a + c)bd .$$

On développe : $abd + ad^2 + b^2c + bcd = abd + bcd$. On retire $abd + bcd$ des deux côtés. L'égalité de départ équivaut donc à

$$ad^2 + cb^2 = 0 .$$

Mathilde affirme deux choses, et il faut démontrer les deux.

*Premier sens : si $a = mb^2$ et $c = -md^2$, l'égalité est vraie.* En effet,

$$ad^2 + cb^2 = mb^2d^2 - md^2b^2 = 0 .$$

*Second sens : si l'égalité est vraie, un tel nombre $m$ existe.* On suppose $ad^2 + cb^2 = 0$. On pose $m = \frac{a}{b^2}$, ce qui est possible car $b \ne 0$. Alors $a = mb^2$. De plus, $cb^2 = -ad^2 = -mb^2d^2$, et en divisant par $b^2$ on obtient $c = -md^2$.

**Un exemple où $b \ne d$.** Avec $m = 1$, $b = 1$ et $d = 2$, Mathilde propose $a = 1$ et $c = -4$. On vérifie :

$$\frac{1}{1} + \frac{-4}{2} = 1 - 2 = -1 \qquad \text{et} \qquad \frac{1 - 4}{1 + 2} = \frac{-3}{3} = -1 .$$

L'égalité est vraie alors que les dénominateurs sont différents : c'est la deuxième erreur du professeur.

**Conclusion.** Seule Mathilde a raison. Mathias, le professeur et l'inspecteur ont tort.

## Going further

Quand $b = d$, pour quelles valeurs de $a$ et de $c$ l'égalité est-elle vraie ? Retrouve ce résultat de deux façons : directement, puis à partir de la condition de Mathilde.
