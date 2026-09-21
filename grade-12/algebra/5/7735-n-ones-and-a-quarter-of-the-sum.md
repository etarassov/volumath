---
id: "7735"
title: "n fois le nombre 1 et le quart de la somme"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [invariant, inegalite, inverses, moyennes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mardi 19 après-midi (Arsène Pierrot), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On écrit $n$ fois le nombre $1$ au tableau.

Une opération consiste à effacer deux des nombres écrits, disons $a$ et $b$, et à écrire à leur place le nombre

$$\frac{a+b}{4} .$$

Chaque opération fait donc baisser de un le nombre de nombres écrits. Au bout de $n-1$ opérations, il ne reste qu'un seul nombre, que l'on note $x$.

Montrer que, quelles que soient les opérations effectuées,

$$x \geqslant \frac{1}{n} .$$

## Hints

1. Essaie avec $n = 2$, puis $n = 3$ en variant les choix. Le résultat final change, mais il ne descend jamais trop bas.
2. Une quantité qui ne bouge pas, il n'y en a pas ici. Cherche plutôt une quantité qui ne peut que **diminuer**, ou que **augmenter**.
3. Tous les nombres écrits restent strictement positifs. Regarde la somme de leurs **inverses**.
4. Il s'agit donc de comparer $\dfrac{1}{a} + \dfrac{1}{b}$ et $\dfrac{4}{a+b}$. Multiplie la première expression par $(a+b)$ et développe.
5. Tu tomberas sur $\dfrac{a}{b} + \dfrac{b}{a}$. Que sais-tu de cette quantité pour $a, b > 0$ ?

## Solution

**L'idée : la somme des inverses des nombres écrits ne peut que diminuer.**

**Tous les nombres restent strictement positifs.** Au départ, ce sont des $1$. Et si $a > 0$ et $b > 0$, alors $\dfrac{a+b}{4} > 0$. Donc par récurrence, à chaque instant, tous les nombres écrits sont strictement positifs, et leurs inverses ont un sens.

**La quantité qu'on suit.** Notons $S$ la somme des inverses de tous les nombres écrits au tableau :

$$S = \sum \frac{1}{\text{nombre écrit}} .$$

Au départ, il y a $n$ fois le nombre $1$, donc

$$S = \underbrace{1 + 1 + \cdots + 1}_{n \text{ fois}} = n .$$

**Une opération ne peut que faire baisser $S$.** Lors d'une opération, on retire $\dfrac1a$ et $\dfrac1b$ de la somme, et on ajoute $\dfrac{4}{a+b}$. La nouvelle valeur est

$$S' = S - \frac{1}{a} - \frac{1}{b} + \frac{4}{a+b} .$$

Montrons que $S' \leqslant S$, c'est-à-dire que

$$\frac{4}{a+b} \;\leqslant\; \frac{1}{a} + \frac{1}{b} . \qquad (\star)$$

Comme $a, b > 0$, on peut multiplier les deux membres par $a+b > 0$ sans changer le sens. À gauche on obtient $4$, et à droite

$$(a+b)\left(\frac{1}{a} + \frac{1}{b}\right) = 1 + \frac{a}{b} + \frac{b}{a} + 1 = 2 + \frac{a}{b} + \frac{b}{a} .$$

Or pour deux réels strictement positifs, $\dfrac{a}{b} + \dfrac{b}{a} \geqslant 2$. En effet, cela revient à $a^2 + b^2 \geqslant 2ab$ après multiplication par $ab > 0$, c'est-à-dire à $(a-b)^2 \geqslant 0$, ce qui est toujours vrai.

Donc le membre de droite vaut au moins $2 + 2 = 4$, ce qui établit $(\star)$, et donc $S' \leqslant S$.

**On conclut.** La somme $S$ part de $n$ et ne fait que diminuer (au sens large) à chaque opération. À la fin, il ne reste qu'un nombre, $x$, donc

$$S_{\text{final}} = \frac{1}{x} \;\leqslant\; n .$$

Comme $x > 0$ et $n > 0$, on peut passer aux inverses en renversant l'inégalité :

$$x \;\geqslant\; \frac{1}{n} .$$

**Conclusion : quel que soit l'ordre des opérations, le nombre final vérifie $x \geqslant \dfrac{1}{n}$.**

## Going further

L'inégalité $(\star)$ dit que la moyenne harmonique de deux nombres est inférieure à leur moyenne arithmétique : c'est un classique qu'il vaut la peine de reconnaître, car il apparaît souvent déguisé.

La borne $\tfrac1n$ n'est pas atteinte dès que $n \geqslant 3$, car l'inégalité $(\star)$ est stricte sauf si $a = b$, et les nombres écrits cessent vite d'être tous égaux. Pour $n = 2$ en revanche, la seule opération possible donne $x = \tfrac{1+1}{4} = \tfrac12$, qui est exactement $\tfrac1n$.
