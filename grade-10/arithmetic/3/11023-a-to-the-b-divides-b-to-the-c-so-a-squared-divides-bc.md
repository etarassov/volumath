---
id: "11023"
title: "Si aᵇ divise bᶜ et aᶜ divise cᵇ, alors a² divise bc"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, decomposition-en-facteurs-premiers, inegalite, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 3 (repris tel quel en exercice 10 des Seniors) ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Soient $a$, $b$ et $c$ des entiers supérieurs ou égaux à $1$ tels que

$$a^b \text{ divise } b^c \qquad \text{et} \qquad a^c \text{ divise } c^b .$$

Montrer que $a^2$ divise $bc$.

## Hints

1. Regarde un nombre premier $p$ à la fois, et compare les exposants de $p$ dans $a$, dans $b$ et dans $c$.
2. Note $x$, $y$ et $z$ ces trois exposants. Traduis chacune des deux hypothèses par une inégalité entre $x$, $y$, $z$ (et $b$, $c$), puis multiplie les deux inégalités.
3. Tu dois obtenir $x^2 \leqslant yz$, et tu veux $2x \leqslant y + z$. Pense à $(y - z)^2 \geqslant 0$.

## Solution

Pour un nombre premier $p$ et un entier $N \geqslant 1$, notons $e_p(N)$ l'exposant de $p$ dans la
décomposition de $N$ en facteurs premiers ($e_p(N) = 0$ si $p$ ne divise pas $N$). On utilise deux
règles :

- $e_p(XY) = e_p(X) + e_p(Y)$, et donc $e_p(X^k) = k \, e_p(X)$ ;
- $X$ divise $Y$ si et seulement si $e_p(X) \leqslant e_p(Y)$ pour **tout** nombre premier $p$.

Fixons un nombre premier $p$ et posons $x = e_p(a)$, $y = e_p(b)$, $z = e_p(c)$. Ce sont des entiers
positifs ou nuls. Il suffit de montrer que $e_p(a^2) \leqslant e_p(bc)$, c'est-à-dire

$$2x \leqslant y + z .$$

**Les hypothèses en exposants.** Comme $a^b$ divise $b^c$, on a $e_p(a^b) \leqslant e_p(b^c)$,
c'est-à-dire $bx \leqslant cy$. De même, $a^c$ divise $c^b$ donne $cx \leqslant bz$.

**On multiplie.** Les quatre nombres $bx$, $cy$, $cx$, $bz$ sont positifs ou nuls, on peut donc
multiplier les deux inégalités membre à membre :

$$bx \cdot cx \leqslant cy \cdot bz, \qquad \text{soit} \qquad bc\, x^2 \leqslant bc\, yz .$$

Comme $bc > 0$, on obtient $x^2 \leqslant yz$.

**On conclut.** Pour tous réels $y$ et $z$, on a $(y - z)^2 \geqslant 0$, ce qui s'écrit
$(y + z)^2 \geqslant 4yz$. Donc

$$4x^2 \leqslant 4yz \leqslant (y + z)^2 .$$

Les nombres $2x$ et $y + z$ sont positifs ou nuls, et le carré du premier est inférieur ou égal au carré
du second. Donc $2x \leqslant y + z$.

Ceci est vrai pour tout nombre premier $p$, donc $a^2$ divise $bc$.

## Going further

Une seule des deux hypothèses ne suffit pas. Avec $a = 4$, $b = 2$, $c = 4$, on a bien
$a^b = 16$ qui divise $b^c = 16$, mais $a^2 = 16$ ne divise pas $bc = 8$. (Ici, c'est la seconde
hypothèse qui manque : $a^c = 256$ ne divise pas $c^b = 16$.)

Attention aussi à une erreur fréquente : « $a$ divise $b^c$, donc $a$ divise $b$ » est faux. Par exemple,
$25$ divise $10^2$ mais ne divise pas $10$.
