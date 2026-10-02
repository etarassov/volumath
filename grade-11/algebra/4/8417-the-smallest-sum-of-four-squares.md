---
id: "8417"
title: "La plus petite somme de quatre carrés"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [minimum, somme-de-carres, contrainte-lineaire, cas-degalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Inégalités et manipulations algébriques » (Auguste De Lambilly), exercice 4 (la solution imprimée utilise Cauchy-Schwarz ; ici, uniquement une somme de carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des nombres réels vérifiant

$$a + 2b + 3c + 4d = 12.$$

Quelle est la plus petite valeur possible de $a^2 + b^2 + c^2 + d^2$ ? Pour quels $a$, $b$, $c$, $d$ est-elle atteinte ?

## Hints

1. Commence par **deviner** la réponse. Cherche un candidat parmi les quadruplets de la forme $(t, 2t, 3t, 4t)$ : la contrainte détermine alors $t$.
2. Deviner ne suffit pas : il faut ensuite démontrer qu'aucun autre quadruplet ne fait mieux.
3. Appelle $\alpha, \beta, \gamma, \delta$ les écarts entre $a, b, c, d$ et le candidat trouvé. Que devient la contrainte, écrite avec ces écarts ?
4. Développe $a^2 + b^2 + c^2 + d^2$ en fonction des écarts. Les termes de degré $1$ se regroupent en un seul bloc, et ce bloc est justement ce que la contrainte annule.

## Solution

**Étape 1. Chercher un bon candidat.**

Essayons un quadruplet proportionnel aux coefficients de la contrainte, c'est-à-dire de la forme

$$(a, b, c, d) = (t, 2t, 3t, 4t).$$

La contrainte s'écrit alors

$$t + 2 \times 2t + 3 \times 3t + 4 \times 4t = (1 + 4 + 9 + 16)\,t = 30\,t = 12,$$

d'où $t = \dfrac{12}{30} = \dfrac{2}{5}$. Le candidat est donc

$$(a, b, c, d) = \left( \frac{2}{5}, \; \frac{4}{5}, \; \frac{6}{5}, \; \frac{8}{5} \right),$$

et il donne

$$a^2 + b^2 + c^2 + d^2 = 30\,t^2 = 30 \times \frac{4}{25} = \frac{24}{5}.$$

Rien ne dit encore que c'est le minimum. Démontrons-le.

**Étape 2. Mesurer l'écart au candidat.**

Posons

$$\alpha = a - \frac{2}{5}, \qquad \beta = b - \frac{4}{5}, \qquad \gamma = c - \frac{6}{5}, \qquad \delta = d - \frac{8}{5}.$$

Ce sont quatre réels quelconques, et $a = \alpha + \frac{2}{5}$, $b = \beta + \frac{4}{5}$, et ainsi de suite.

**Étape 3. Traduire la contrainte.**

$$a + 2b + 3c + 4d = (\alpha + 2\beta + 3\gamma + 4\delta) + \left( \frac{2}{5} + \frac{8}{5} + \frac{18}{5} + \frac{32}{5} \right) = (\alpha + 2\beta + 3\gamma + 4\delta) + 12.$$

Comme cette somme vaut $12$, la contrainte devient simplement

$$\alpha + 2\beta + 3\gamma + 4\delta = 0. \qquad (\star)$$

**Étape 4. Développer la quantité à minimiser.**

$$a^2 = \left(\alpha + \frac{2}{5}\right)^2 = \alpha^2 + \frac{4}{5}\,\alpha + \frac{4}{25},$$

et de même

$$b^2 = \beta^2 + \frac{8}{5}\,\beta + \frac{16}{25}, \qquad c^2 = \gamma^2 + \frac{12}{5}\,\gamma + \frac{36}{25}, \qquad d^2 = \delta^2 + \frac{16}{5}\,\delta + \frac{64}{25}.$$

En additionnant, les termes de degré $1$ se regroupent :

$$\frac{4}{5}\,\alpha + \frac{8}{5}\,\beta + \frac{12}{5}\,\gamma + \frac{16}{5}\,\delta = \frac{4}{5}\,\big(\alpha + 2\beta + 3\gamma + 4\delta\big) = 0$$

d'après $(\star)$. Et les constantes donnent

$$\frac{4 + 16 + 36 + 64}{25} = \frac{120}{25} = \frac{24}{5}.$$

Il reste donc

$$a^2 + b^2 + c^2 + d^2 = \alpha^2 + \beta^2 + \gamma^2 + \delta^2 + \frac{24}{5}.$$

**Étape 5. Conclure.**

Une somme de carrés est positive ou nulle, donc

$$a^2 + b^2 + c^2 + d^2 \geqslant \frac{24}{5}.$$

Il y a égalité exactement lorsque $\alpha = \beta = \gamma = \delta = 0$, c'est-à-dire pour

$$(a, b, c, d) = \left( \frac{2}{5}, \; \frac{4}{5}, \; \frac{6}{5}, \; \frac{8}{5} \right),$$

quadruplet qui vérifie bien la contrainte, comme on l'a vu à l'étape 1.

**Réponse :** la plus petite valeur est $\boxed{\dfrac{24}{5}}$, atteinte en un unique point.

## Going further

La méthode est générale et ne dépend pas des nombres choisis. Pour minimiser $x_1^2 + \cdots + x_n^2$ sous la contrainte $c_1 x_1 + \cdots + c_n x_n = S$, on devine le point $x_k = t\,c_k$, on trouve $t = \dfrac{S}{c_1^2 + \cdots + c_n^2}$, et le même développement montre que le minimum vaut

$$\frac{S^2}{c_1^2 + \cdots + c_n^2}.$$

Géométriquement, la contrainte décrit un plan (ou un hyperplan) et la quantité $a^2+b^2+c^2+d^2$ est le carré de la distance à l'origine : on cherche donc le point du plan le plus proche de l'origine, et ce point est le pied de la perpendiculaire.
