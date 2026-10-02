---
id: "10451"
title: "Trois quotients (ab + 1)/(a + b)² dont la somme dépasse 3"
grade: 10
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite, identites-remarquables, somme-de-carres, minoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices communs, exercice 6 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf (qui conclut par l'inégalité arithmético-géométrique ; ici elle est remplacée par l'identité u³ + v³ + w³ − 3uvw, démontrée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs tels que

$$a^2 + b^2 + c^2 + (a + b + c)^2 \leqslant 4 .$$

Montrer que

$$\frac{ab + 1}{(a + b)^2} + \frac{bc + 1}{(b + c)^2} + \frac{ca + 1}{(c + a)^2} \geqslant 3 .$$

## Hints

1. Développe $(a + b + c)^2$ et simplifie l'hypothèse. Tu dois obtenir $a^2 + b^2 + c^2 + ab + bc + ca \leqslant 2$.
2. Écris le premier quotient sous la forme $(2ab + 2) / (2(a + b)^2)$, et remplace le $2$ du numérateur par la quantité de l'indice 1, qui est plus petite.
3. Le numérateur obtenu se factorise en $(a + b)^2 + (c + a)(c + b)$. Il reste à montrer qu'une somme de trois quotients de produits est au moins $3$.
4. Pose $p = a + b$, $q = b + c$, $r = c + a$, puis $u = qr$, $v = rp$, $w = pq$. La somme à minorer s'écrit $(u^3 + v^3 + w^3) / (uvw)$. Factorise $u^3 + v^3 + w^3 - 3uvw$ par $u + v + w$.

## Solution

**Étape 1 : simplifier l'hypothèse.** On a $(a + b + c)^2 = a^2 + b^2 + c^2 + 2ab + 2bc + 2ca$. L'hypothèse s'écrit donc $2(a^2 + b^2 + c^2 + ab + bc + ca) \leqslant 4$, c'est-à-dire

$$a^2 + b^2 + c^2 + ab + bc + ca \leqslant 2 . \qquad (1)$$

**Étape 2 : minorer chaque quotient.** D'après $(1)$,

$$2ab + 2 \geqslant 2ab + a^2 + b^2 + c^2 + ab + bc + ca .$$

Regroupons le membre de droite : $a^2 + 2ab + b^2 = (a + b)^2$, et $c^2 + bc + ca + ab = (c + a)(c + b)$, comme on le vérifie en développant. Donc

$$2(ab + 1) \geqslant (a + b)^2 + (c + a)(c + b) .$$

En divisant par $2(a + b)^2 > 0$, on obtient

$$\frac{ab + 1}{(a + b)^2} \geqslant \frac{1}{2} + \frac{1}{2} \cdot \frac{(c + a)(c + b)}{(a + b)^2} .$$

Le même calcul, en faisant tourner les lettres $a \to b \to c \to a$, minore les deux autres quotients.

**Étape 3 : nouvelles notations.** Posons $p = a + b$, $q = b + c$, $r = c + a$, qui sont strictement positifs. Les trois minorations de l'étape 2 donnent

$$\frac{ab + 1}{(a + b)^2} + \frac{bc + 1}{(b + c)^2} + \frac{ca + 1}{(c + a)^2} \geqslant \frac{3}{2} + \frac{1}{2}\,T, \qquad \text{où} \qquad T = \frac{qr}{p^2} + \frac{rp}{q^2} + \frac{pq}{r^2} .$$

Il suffit donc de montrer que $T \geqslant 3$.

**Étape 4 : écrire $T$ autrement.** Posons $u = qr$, $v = rp$, $w = pq$. Alors $vw = p^2 qr = p^2 u$, donc $p^2 = vw / u$, et le premier terme de $T$ vaut

$$\frac{qr}{p^2} = \frac{u^2}{vw} = \frac{u^3}{uvw} .$$

De même pour les deux autres termes, si bien que

$$T = \frac{u^3 + v^3 + w^3}{uvw} .$$

**Étape 5 : une identité.** En développant, on vérifie que

$$u^3 + v^3 + w^3 - 3uvw = (u + v + w)(u^2 + v^2 + w^2 - uv - vw - wu) ,$$

et que

$$u^2 + v^2 + w^2 - uv - vw - wu = \frac{1}{2} \left( (u - v)^2 + (v - w)^2 + (w - u)^2 \right) .$$

Comme $u + v + w > 0$ et qu'une somme de carrés est positive, on obtient $u^3 + v^3 + w^3 \geqslant 3uvw$. En divisant par $uvw > 0$, on trouve $T \geqslant 3$.

**Conclusion.** La somme de l'énoncé est au moins $3/2 + (1/2) \times 3 = 3$.

**Cas d'égalité.** Pour $a = b = c = 1 / \sqrt{3}$, l'hypothèse est une égalité, car $12a^2 = 4$, et chaque quotient vaut

$$\frac{a^2 + 1}{4a^2} = \frac{1/3 + 1}{4/3} = 1 ,$$

donc la somme vaut exactement $3$.

## Going further

1. Montrer qu'on ne peut pas remplacer le $4$ de l'hypothèse par un nombre $M > 4$. (Essayer $a = b = c$ avec $12a^2 = M$.)
2. Montrer que l'égalité n'a lieu que pour $a = b = c = 1 / \sqrt{3}$.
