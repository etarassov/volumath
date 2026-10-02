---
id: "1817"
title: "Quand b dépasse a + c"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [second-degre, discriminant, inegalite, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic Equations IV"
  reference: "Handout-1631-1520.pdf, nouveaux problèmes, exercice 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1631-1520.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels avec $a \neq 0$. On suppose que

$$b > a + c > 0.$$

L'équation $ax^2 + bx + c = 0$ a-t-elle forcément deux solutions réelles distinctes ?

## Hints

1. La question revient à déterminer le signe de $\Delta = b^2 - 4ac$.
2. L'hypothèse dit que $b$ et $a+c$ sont tous les deux strictement positifs, et que $b$ est le plus grand des deux. Que peut-on en déduire sur $b^2$ et $(a+c)^2$ ?
3. Attention : élever une inégalité au carré n'est permis que si les deux membres sont positifs. Vérifie que c'est bien le cas ici, et dis pourquoi c'est exactement à cela que sert la condition $a+c>0$.
4. Compare maintenant $(a+c)^2$ et $4ac$. Calcule leur différence : une identité remarquable apparaît.
5. Enchaîne les deux comparaisons.

## Solution

La réponse est **oui**.

**Le discriminant.** Il s'agit de montrer que

$$\Delta = b^2 - 4ac > 0.$$

**Première étape : comparer $b^2$ et $(a+c)^2$.**

Par hypothèse, $b > a+c$ et $a+c > 0$. Les deux nombres $b$ et $a+c$ sont donc strictement positifs, avec $b$ le plus grand. La fonction carré étant strictement croissante sur $[0\,;+\infty[$, on peut élever au carré :

$$b^2 > (a+c)^2.$$

(C'est ici que sert la condition $a+c>0$ : sans elle, par exemple avec $b = 1$ et $a+c = -5$, on aurait bien $b > a+c$ mais $b^2 < (a+c)^2$.)

**Deuxième étape : comparer $(a+c)^2$ et $4ac$.**

$$(a+c)^2 - 4ac = a^2 + 2ac + c^2 - 4ac = a^2 - 2ac + c^2 = (a-c)^2 \ge 0.$$

Donc $(a+c)^2 \ge 4ac$, et cela **quels que soient** les réels $a$ et $c$.

**Conclusion.**

En enchaînant les deux étapes :

$$b^2 > (a+c)^2 \ge 4ac,$$

donc $b^2 > 4ac$, c'est-à-dire

$$\Delta = b^2 - 4ac > 0.$$

L'équation $ax^2+bx+c=0$ admet donc toujours **deux solutions réelles distinctes** sous l'hypothèse $b > a+c > 0$.

**Un exemple.** $a = 1$, $c = 3$, $b = 5$ : on a bien $5 > 4 > 0$. Et $\Delta = 25 - 12 = 13 > 0$. Les racines sont $\dfrac{-5 \pm \sqrt{13}}{2}$.

**Un exemple avec $a$ et $c$ de signes contraires.** $a = -1$, $c = 3$, $b = 3$ : on a $3 > 2 > 0$. Et $\Delta = 9 + 12 = 21 > 0$. Là, d'ailleurs, le résultat était clair d'avance : si $ac < 0$, alors $-4ac > 0$ et $\Delta$ est positif sans autre hypothèse.

## Going further

1. Que se passe-t-il si l'on remplace l'hypothèse par $b \ge a+c > 0$ ? Le résultat tient-il encore ? Cherche un cas d'égalité.
2. Et si l'on suppose seulement $b > a+c$, sans demander $a+c>0$ ? Trouve un contre-exemple.
