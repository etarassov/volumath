---
id: "8211"
title: "Six quotients dont la somme ne descend jamais sous 6"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalites, identites remarquables, minimum, cas d egalite]
adapted_from: null
see_also: ["0880"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 6"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

1. Montrer que pour tout réel $x$ strictement positif : $\ x + \dfrac{1}{x} \ge 2$. Pour quelles valeurs de $x$ y a-t-il égalité ?

2. En déduire que pour tous réels $a$ et $b$ strictement positifs : $\ \dfrac{a}{b} + \dfrac{b}{a} \ge 2$. Quand y a-t-il égalité ?

3. Soient $a$ et $b$ deux réels non nuls. Déterminer le minimum de

$$\frac{a^6}{b^6} + \frac{a^4}{b^4} + \frac{a^2}{b^2} + \frac{b^6}{a^6} + \frac{b^4}{a^4} + \frac{b^2}{a^2}$$

et dire pour quels couples $(a, b)$ il est atteint.

## Hints

1. Pour la question 1, tout se passe bien parce que $x > 0$ : multiplie l'inégalité par $x$ sans changer son sens, puis range tout du même côté.
2. Tu devrais tomber sur $x^2 - 2x + 1 \ge 0$. Reconnais-tu cette expression ?
3. Pour la question 2, il n'y a rien à refaire : applique la question 1 à un $x$ bien choisi.
4. Pour la question 3, ne te laisse pas impressionner par les six termes. Cherche à les **regrouper par paires**. Quels termes vont naturellement ensemble ?
5. Pose $t = \dfrac{a^2}{b^2}$. Réécris les six termes en fonction de $t$ seulement. Combien de paires du type « quelque chose $+$ son inverse » vois-tu apparaître ?
6. Attention à la dernière question : les six termes ont tous des exposants **pairs**, donc le signe de $a$ et de $b$ n'intervient pas. Le cas d'égalité n'est pas « $a = b$ » tout court.

## Solution

**Question 1.**

Soit $x > 0$. Comme $x$ est strictement positif, multiplier par $x$ ne change pas le sens d'une inégalité. Donc

$$x + \frac1x \ge 2 \quad \Longleftrightarrow \quad x^2 + 1 \ge 2x \quad \Longleftrightarrow \quad x^2 - 2x + 1 \ge 0 \quad \Longleftrightarrow \quad (x-1)^2 \ge 0 .$$

Cette dernière inégalité est toujours vraie : un carré est toujours positif ou nul. L'inégalité de départ est donc vraie pour tout $x > 0$.

Il y a égalité exactement quand $(x-1)^2 = 0$, c'est-à-dire quand

$$x = 1 .$$

**Question 2.**

Soient $a, b > 0$. Posons $x = \dfrac{a}{b}$ : c'est un réel strictement positif, et son inverse est $\dfrac{b}{a}$. La question 1 donne directement

$$\frac{a}{b} + \frac{b}{a} \ge 2 ,$$

avec égalité exactement quand $\dfrac{a}{b} = 1$, c'est-à-dire quand $a = b$.

**Question 3.**

Soient $a$ et $b$ non nuls. Posons

$$t = \frac{a^2}{b^2} .$$

Comme $a \ne 0$ et $b \ne 0$, le nombre $t$ est bien défini et **strictement positif** (c'est un quotient de deux carrés non nuls). Son inverse est $\dfrac1t = \dfrac{b^2}{a^2}$.

Réécrivons les six termes :

$$\frac{a^6}{b^6} = t^3, \qquad \frac{a^4}{b^4} = t^2, \qquad \frac{a^2}{b^2} = t,$$
$$\frac{b^6}{a^6} = \frac{1}{t^3}, \qquad \frac{b^4}{a^4} = \frac{1}{t^2}, \qquad \frac{b^2}{a^2} = \frac{1}{t} .$$

La somme à étudier vaut donc

$$E = \left(t^3 + \frac{1}{t^3}\right) + \left(t^2 + \frac{1}{t^2}\right) + \left(t + \frac{1}{t}\right) .$$

Trois paires, chacune de la forme « un nombre positif $+$ son inverse ». On applique trois fois la question 1, avec $x = t^3$, puis $x = t^2$, puis $x = t$ (tous strictement positifs) :

$$t^3 + \frac{1}{t^3} \ge 2, \qquad t^2 + \frac{1}{t^2} \ge 2, \qquad t + \frac{1}{t} \ge 2 .$$

En additionnant les trois :

$$E \ge 6 .$$

**Le minimum est atteint.**

Il y a égalité dans les trois inégalités simultanément si et seulement si $t^3 = 1$, $t^2 = 1$ et $t = 1$, c'est-à-dire simplement $t = 1$ (les deux autres conditions en découlent). Et pour $t = 1$ on a bien $E = 2 + 2 + 2 = 6$.

Reste à traduire $t = 1$ en termes de $a$ et $b$ :

$$t = 1 \iff \frac{a^2}{b^2} = 1 \iff a^2 = b^2 \iff |a| = |b| \iff a = b \ \text{ ou } \ a = -b .$$

**Conclusion.**

$$\boxed{\text{Le minimum vaut } 6, \text{ atteint exactement pour } a = b \text{ et pour } a = -b .}$$

**Attention au piège.** Comme tous les exposants sont pairs, remplacer $a$ par $-a$ ne change rien à l'expression. Le cas d'égalité ne peut donc pas être « $a = b$ » seulement : $a = -b$ marche tout aussi bien. Par exemple $a = 5$, $b = -5$ donne bien $E = 6$.

## Going further

Reprendre la question 3 avec la somme des $2k$ termes
$$\frac{a^2}{b^2} + \frac{a^4}{b^4} + \cdots + \frac{a^{2k}}{b^{2k}} + \frac{b^2}{a^2} + \frac{b^4}{a^4} + \cdots + \frac{b^{2k}}{a^{2k}} .$$
Quel est son minimum ? Et que se passe-t-il si l'on remplace tous les exposants pairs par des exposants impairs ?
