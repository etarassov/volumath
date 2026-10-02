---
id: "13040"
title: "x³ = x + 4 et une relation entre les puissances de x"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [polynomes, irrationnel, nombres premiers, coefficients, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire lycéens"
  reference: "2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 2 ; corrigé 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf (l'énoncé d'origine demande seulement la valeur de ac/bd en supposant qu'elle est unique, comme le reconnaît le corrigé ; la question 2 ici demande de le démontrer)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_lycee.pdf"
---

## Statement

Soit $x$ un nombre réel tel que $x^3 = x + 4$.

1. Trouver des entiers relatifs $a$, $b$, $c$, $d$, tous non nuls, tels que
$$a + b\,x^2 + c\,x^3 + d\,x^4 = 0 .$$
2. Montrer que, pour tous les entiers relatifs non nuls $a$, $b$, $c$, $d$ qui vérifient cette égalité, le quotient $\dfrac{ac}{bd}$ prend toujours la même valeur, et donner cette valeur.

## Hints

1. Grâce à $x^3 = x + 4$, écris $x^4$ sous la forme d'une somme de termes en $x^2$, en $x$ et d'une constante.
2. Remplace $x^3$ et $x^4$ dans $a + b\,x^2 + c\,x^3 + d\,x^4$ et regroupe : tu obtiens $(\ldots) + (\ldots)\,x + (\ldots)\,x^2$. Pour la question 1, il suffit que les trois parenthèses soient nulles.
3. Pour la question 2, il faut montrer que les trois parenthèses sont **forcément** nulles. Commence par montrer que $x$ n'est pas un nombre rationnel : écris $x = \dfrac{u}{v}$ sous forme irréductible et cherche une contradiction.
4. Suppose ensuite $p\,x^2 + q\,x + r = 0$ avec $p$, $q$, $r$ entiers. Multiplie cette égalité par $x$, remplace $x^3$, puis combine les deux égalités pour faire disparaître $x^2$.

## Solution

**On ramène tout à $1$, $x$ et $x^2$.** On a $x^3 = x + 4$, et en multipliant par $x$,
$$x^4 = x^2 + 4x .$$
Donc, pour tous nombres $a$, $b$, $c$, $d$,
$$a + b\,x^2 + c\,x^3 + d\,x^4 = a + b\,x^2 + c\,(x + 4) + d\,(x^2 + 4x) = (a + 4c) + (c + 4d)\,x + (b + d)\,x^2 . \qquad (\star)$$

**Question 1.** Il suffit de choisir $a$, $b$, $c$, $d$ tels que $b + d = 0$, $c + 4d = 0$ et $a + 4c = 0$. En prenant $d = 1$, on trouve $b = -1$, puis $c = -4$, puis $a = 16$. Vérifions :
$$16 - x^2 - 4x^3 + x^4 = 16 - x^2 - 4\,(x + 4) + (x^2 + 4x) = 0 .$$
Le quadruplet $(a, b, c, d) = (16, -1, -4, 1)$ convient, et pour lui
$$\frac{ac}{bd} = \frac{16 \times (-4)}{(-1) \times 1} = 64 .$$

**Question 2, première étape : $x$ n'est pas rationnel.** Supposons que $x = \dfrac{u}{v}$ avec $u$ et $v$ entiers, $v \geqslant 1$, et la fraction irréductible. En multipliant $x^3 = x + 4$ par $v^3$, on obtient
$$u^3 = u\,v^2 + 4\,v^3 = v\,(u\,v + 4\,v^2) .$$
Donc $v$ divise $u^3$. Si $v \geqslant 2$, un nombre premier qui divise $v$ divise aussi $u^3$, donc divise $u$ : la fraction ne serait pas irréductible. Ainsi $v = 1$ et $x$ est un entier.

Mais alors $x\,(x^2 - 1) = 4$, donc $x$ divise $4$, et $x$ est l'un des nombres $\pm 1$, $\pm 2$, $\pm 4$. Aucun ne convient : $x^3 - x$ vaut $0$ pour $x = \pm 1$, $\pm 6$ pour $x = \pm 2$, et $\pm 60$ pour $x = \pm 4$, jamais $4$.

Donc $x$ n'est pas un nombre rationnel. On s'en servira ainsi : si $\alpha$ et $\beta$ sont des entiers tels que $\alpha\,x + \beta = 0$, alors $\alpha = 0$ (sinon $x = -\dfrac{\beta}{\alpha}$ serait rationnel), puis $\beta = 0$.

**Question 2, deuxième étape : une relation de degré $2$ est forcément nulle.** Soient $p$, $q$, $r$ des entiers tels que
$$p\,x^2 + q\,x + r = 0 . \qquad (1)$$
En multipliant par $x$ et en remplaçant $x^3$ par $x + 4$ :
$$p\,(x + 4) + q\,x^2 + r\,x = 0, \qquad \text{soit} \qquad q\,x^2 + (p + r)\,x + 4p = 0 . \qquad (2)$$
Faisons $q \times (1) - p \times (2)$ pour faire disparaître $x^2$ :
$$(q^2 - p^2 - pr)\,x + (qr - 4p^2) = 0 .$$
D'après la première étape, $q^2 = p^2 + pr$ et $qr = 4p^2$.

- Si $p \neq 0$, alors $qr = 4p^2 \neq 0$, donc $q \neq 0$ et $r = \dfrac{4p^2}{q}$. En reportant, $q^2 = p^2 + \dfrac{4p^3}{q}$, soit $q^3 = p^2 q + 4p^3$. En divisant par $p^3$, le nombre rationnel $t = \dfrac{q}{p}$ vérifie $t^3 = t + 4$. Mais la première étape s'applique à tout réel qui vérifie cette égalité, et montre qu'il n'est pas rationnel. C'est impossible.
- Donc $p = 0$. Alors $q^2 = 0$, donc $q = 0$, et l'égalité $(1)$ donne $r = 0$.

**Question 2, conclusion.** Soient $a$, $b$, $c$, $d$ des entiers non nuls tels que $a + b\,x^2 + c\,x^3 + d\,x^4 = 0$. D'après $(\star)$, la deuxième étape s'applique avec $p = b + d$, $q = c + 4d$, $r = a + 4c$. Donc
$$b = -d, \qquad c = -4d, \qquad a = -4c = 16d .$$
Par conséquent
$$\frac{ac}{bd} = \frac{16d \times (-4d)}{(-d) \times d} = \frac{-64\,d^2}{-d^2} = 64 .$$

**Conclusion.** Le quotient $\dfrac{ac}{bd}$ vaut toujours $64$. Les quadruplets qui conviennent sont exactement les multiples $(16d, -d, -4d, d)$ de $(16, -1, -4, 1)$, avec $d$ entier non nul.

## Going further

1. Montrer que l'équation $x^3 = x + 4$ a une seule solution réelle, et l'encadrer entre deux décimaux qui diffèrent de $\text{0,1}$.
2. Reprendre l'exercice avec $x^3 = x + 1$ et la relation $a + b\,x^2 + c\,x^3 + d\,x^4 = 0$. Que vaut alors $\dfrac{ac}{bd}$ ?
