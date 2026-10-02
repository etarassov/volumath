---
id: "3018"
title: "Trois étoiles, neuf chiffres, un multiple de 37"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [divisibilite, restes, chiffres, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Fermat's Thm"
  reference: "Handout-3291-2885.pdf, exercice 8 (réponse dans Handout-3328-2885.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3291-2885.pdf"
---

## Statement

Combien y a-t-il de nombres de neuf chiffres de la forme

$$\ast\,2\,3\,1\,\ast\,3\,1\,2\,\ast$$

qui soient divisibles par $37$ ?

Chaque $\ast$ représente un seul chiffre, et les trois étoiles peuvent être différentes. Le
premier chiffre ne peut pas être $0$, sinon le nombre n'aurait pas neuf chiffres.

## Hints

1. $111 = 3 \times 37$. Qu'en déduis-tu sur $999$, puis sur le reste de $1000$ dans la division par $37$ ?
2. Si $1000 \equiv 1 \pmod{37}$, on peut découper le nombre en tranches de trois chiffres **à partir de la droite** et simplement les additionner.
3. Nomme les trois étoiles $a$, $b$, $c$. Écris les trois tranches en fonction de $a$, $b$, $c$, puis leur somme.
4. Tu vas tomber sur une condition portant uniquement sur le nombre de trois chiffres $\overline{abc}$. Il reste à compter les nombres de trois chiffres ayant un reste donné modulo $37$.

## Solution

**La clé : 1000 laisse le reste 1.**

$111 = 3 \times 37$, donc $999 = 9 \times 111 = 27 \times 37$ est un multiple de $37$. Par
conséquent

$$1000 \equiv 1 \pmod{37}.$$

Cela veut dire qu'on peut découper un nombre en tranches de trois chiffres à partir de la
droite et remplacer le nombre par la somme de ses tranches, sans changer le reste modulo
$37$.

**On découpe.**

Notons $a$, $b$, $c$ les trois chiffres cachés. Le nombre est

$$N = \overline{a\,2\,3\,1\,b\,3\,1\,2\,c},$$

et ses trois tranches de trois chiffres, en partant de la droite, sont
$\overline{a23}$, $\overline{1b3}$ et $\overline{12c}$ :

$$N = \overline{a23} \times 1000^2 + \overline{1b3} \times 1000 + \overline{12c}
\equiv \overline{a23} + \overline{1b3} + \overline{12c} \pmod{37}.$$

**On additionne.**

$$\overline{a23} = 100a + 23, \qquad \overline{1b3} = 100 + 10b + 3, \qquad \overline{12c} = 120 + c.$$

La somme vaut

$$100a + 10b + c + (23 + 103 + 120) = 100a + 10b + c + 246.$$

Or $246 = 6 \times 37 + 24$, donc $246 \equiv 24 \pmod{37}$. La condition $37 \mid N$
devient

$$100a + 10b + c + 24 \equiv 0 \pmod{37},$$

c'est-à-dire

$$100a + 10b + c \equiv -24 \equiv 13 \pmod{37}.$$

**On compte.**

Le nombre $100a + 10b + c$ n'est autre que le nombre de trois chiffres $\overline{abc}$, et
quand $a$ parcourt $1$ à $9$ et $b$, $c$ parcourent $0$ à $9$, il parcourt **exactement une
fois** chaque entier de $100$ à $999$.

Il reste donc à compter les entiers de $100$ à $999$ congrus à $13$ modulo $37$. Ils
s'écrivent $37k + 13$ avec

$$100 \leq 37k + 13 \leq 999, \qquad \text{soit} \qquad 87 \leq 37k \leq 986.$$

Comme $\dfrac{87}{37} \approx \text{2,35}$ et $\dfrac{986}{37} \approx \text{26,6}$, on a
$3 \leq k \leq 26$, ce qui fait

$$26 - 3 + 1 = 24$$

valeurs.

**Conclusion.**

Il y a exactement $24$ tels nombres.

Par exemple, $k = 3$ donne $\overline{abc} = 124$, donc $a = 1$, $b = 2$, $c = 4$ et le
nombre $123\,123\,124$. On vérifie : $123\,123\,124 = 37 \times 3\,327\,652$.
