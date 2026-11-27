---
id: "40964"
title: "Tout entier est une somme de carrés consécutifs signés"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 45
tags: [construction, signes, carres, cubes, restes, unicite, developpement]
adapted_from: null
see_also: ["40965", "40966", "40967"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 2 « Sommes consécutives signées », partie 1 « Introduction » (question 1) et partie 2 « Deux premiers cas, k = 1 et k = 2 » (questions 2 à 6)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

On écrit au tableau les cubes des entiers successifs à partir de $1$, par exemple
$1^3, 2^3, 3^3, \ldots, 15^3$, puis on place un signe $+$ ou un signe $-$ devant chacun d'eux.
On obtient une *somme de cubes consécutifs signés à partir de 1*, par exemple

$$+1^3 + 2^3 + 3^3 - 4^3 + 5^3 - 6^3 - 7^3 + 8^3 + 9^3 - 10^3 + 11^3 + 12^3 - 13^3 + 14^3 - 15^3 = 10.$$

Après quelques essais, on trouve aussi

$$1 = +1^3,$$

$$4 = -1^3 - 2^3 + 3^3 + 4^3 - 5^3 + 6^3 + 7^3 - 8^3,$$

$$6 = +1^3 - 2^3 + 3^3 + 4^3 - 5^3 + 6^3 + 7^3 - 8^3.$$

1. Écrire $7$ comme somme de cubes consécutifs signés à partir de $1$.

On se demande plus généralement quels entiers $M \geqslant 1$ s'écrivent
$M = \pm 1^k \pm 2^k \pm \cdots \pm n^k$, pour un entier $n \geqslant 1$ et un choix de signes. On
commence par les puissances $k = 1$ et $k = 2$.

2. Démontrer que, pour tout entier $M \geqslant 1$, il existe un entier $n \geqslant 1$ et des
   signes tels que
$$M = \pm 1 \pm 2 \pm 3 \pm \cdots \pm n.$$
3. Existe-t-il un entier $M \geqslant 1$ pour lequel une écriture comme celle de la question 2
   est unique ?
4. Trouver quatre signes $u_0$, $u_1$, $u_2$, $u_3$, chacun égal à $+1$ ou à $-1$, et un entier
   $R_2 \geqslant 0$ tels que, pour tout entier $n \geqslant 1$,
$$u_0\,n^2 + u_1\,(n+1)^2 + u_2\,(n+2)^2 + u_3\,(n+3)^2 = R_2.$$
5. À l'aide de la question 4, démontrer que, pour tout entier $M \geqslant 1$, il existe un entier
   $n \geqslant 1$ et des signes tels que
$$M = \pm 1^2 \pm 2^2 \pm 3^2 \pm \cdots \pm n^2.$$
6. Existe-t-il un entier $M \geqslant 1$ pour lequel une écriture comme celle de la question 5
   est unique ?

## Hints

1. **Question 1.** Il n'est pas nécessaire d'aller loin : regarder les deux premiers cubes.
2. **Question 2.** Que vaut $-n + (n+1)$ ? Peut-on ajouter $1$ autant de fois qu'on veut à la fin
   d'une somme ?
3. **Question 3.** Trouver quatre entiers consécutifs qui, avec des signes bien choisis, donnent
   une somme nulle.
4. **Question 4.** Développer les quatre carrés et regarder séparément les termes en $n^2$, en
   $n$ et les constantes. Il faut deux signes $+$ et deux signes $-$.
5. **Question 5.** La question 4 permet d'ajouter $4$ à la fin d'une somme, aussi souvent qu'on
   veut. Il suffit donc d'écrire les petits entiers $1$, $2$, $3$ et $4$.
6. **Question 6.** Mettre bout à bout deux blocs de la question 4, le second avec tous ses signes
   changés.

## Solution

**1.** $7 = -1^3 + 2^3$, puisque $-1 + 8 = 7$.

**2.** Pour tout entier $j \geqslant 1$, on a $-j + (j + 1) = 1$. Donc, à la fin de n'importe
quelle somme qui s'arrête en $n$, on peut ajouter $-(n+1) + (n+2)$ : la somme augmente de $1$.

On part de $1 = +1$, et on ajoute $M - 1$ fois le bloc « $-$ puis $+$ » :

$$M = 1 + (-2 + 3) + (-4 + 5) + \cdots + (-(2M-2) + (2M-1)).$$

Il y a $M - 1$ parenthèses, chacune vaut $1$, donc la somme vaut bien $M$. Par exemple,
$3 = 1 - 2 + 3 - 4 + 5$.

**3.** Non. Pour tout entier $j$,

$$j - (j+1) - (j+2) + (j+3) = 0.$$

Si $M = \pm 1 \pm 2 \pm \cdots \pm n$ est une écriture de $M$, alors

$$M = \pm 1 \pm 2 \pm \cdots \pm n + (n+1) - (n+2) - (n+3) + (n+4)$$

en est une autre, plus longue. Aucun entier n'a donc une écriture unique : chacun en a même une
infinité.

**4.** Développons :

$$(n+1)^2 = n^2 + 2n + 1, \qquad (n+2)^2 = n^2 + 4n + 4, \qquad (n+3)^2 = n^2 + 6n + 9.$$

Prenons $u_0 = +1$, $u_1 = -1$, $u_2 = -1$, $u_3 = +1$ :

$$n^2 - (n^2 + 2n + 1) - (n^2 + 4n + 4) + (n^2 + 6n + 9).$$

Les termes en $n^2$ donnent $1 - 1 - 1 + 1 = 0$, les termes en $n$ donnent $-2 - 4 + 6 = 0$, et
les constantes donnent $-1 - 4 + 9 = 4$.

**Conclusion :** avec les signes $+, -, -, +$, on obtient $R_2 = 4$ pour tout $n$.

**5.** D'après la question 4, on peut ajouter $4$ à la fin d'une somme qui s'arrête en $n$, en
lui ajoutant $(n+1)^2 - (n+2)^2 - (n+3)^2 + (n+4)^2$.

Écrivons d'abord les entiers de $1$ à $4$ :

$$1 = +1^2, \qquad 2 = -1^2 - 2^2 - 3^2 + 4^2, \qquad 3 = -1^2 + 2^2, \qquad 4 = +1^2 - 2^2 - 3^2 + 4^2.$$

(On vérifie : $-1 - 4 - 9 + 16 = 2$, $-1 + 4 = 3$, $1 - 4 - 9 + 16 = 4$.)

Soit maintenant $M \geqslant 1$. On peut écrire $M = r + 4q$ avec $r \in \{1, 2, 3, 4\}$ et $q$ un
entier positif ou nul : $r$ est le reste de $M$ dans la division par $4$, remplacé par $4$ quand ce
reste est nul. On part de l'écriture de $r$ ci-dessus et on ajoute $q$ blocs de quatre carrés
consécutifs avec les signes $+, -, -, +$. Chaque bloc ajoute $4$, donc la somme vaut $r + 4q = M$.

Par exemple, $11 = 3 + 2 \times 4$ s'écrit
$-1^2 + 2^2 + 3^2 - 4^2 - 5^2 + 6^2 + 7^2 - 8^2 - 9^2 + 10^2$.

**6.** Non. Deux blocs consécutifs, le premier avec les signes $+, -, -, +$ et le second avec les
signes $-, +, +, -$, donnent $4 - 4 = 0$ :

$$(n+1)^2 - (n+2)^2 - (n+3)^2 + (n+4)^2 - (n+5)^2 + (n+6)^2 + (n+7)^2 - (n+8)^2 = 0.$$

En ajoutant ces huit termes à la fin d'une écriture de $M$, on en obtient une autre. Aucun entier
n'a donc une écriture unique.

**Bilan.** Tout entier $M \geqslant 1$ s'écrit $\pm 1 \pm 2 \pm \cdots \pm n$ et aussi
$\pm 1^2 \pm 2^2 \pm \cdots \pm n^2$, et jamais d'une seule façon. Le moteur des deux preuves est
un petit bloc de termes consécutifs dont la somme signée ne dépend pas de l'endroit où il commence.

## Going further

- Trouver huit signes tels que
  $\pm n^3 \pm (n+1)^3 \pm \cdots \pm (n+7)^3$ ne dépende pas de $n$. Indication : partir du bloc
  $+, -, -, +$ et le faire suivre du même bloc avec tous les signes changés. Que vaut cette
  constante ?
- Dans la suite du sujet, on montrait que le résultat reste vrai pour toutes les puissances
  $k$ : tout entier $M \geqslant 1$ s'écrit $\pm 1^k \pm 2^k \pm \cdots \pm n^k$. Voir les
  exercices 40965 et 40966.
