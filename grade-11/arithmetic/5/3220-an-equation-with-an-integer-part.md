---
id: "3220"
title: "Une équation avec une partie entière"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [partie entiere, racine carree, inequation du second degre, entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Number theory review"
  reference: "Handout-4813-5008.pdf, exercice 17, d'après AMC 10B 2020, problème 24 (réponse dans Handout-4815-5008.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4813-5008.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa **partie entière**, c'est-à-dire le plus grand entier inférieur ou égal à $x$. Par exemple $\lfloor \text{3,7} \rfloor = 3$ et $\lfloor 5 \rfloor = 5$.

Combien y a-t-il d'entiers $n \ge 1$ tels que

$$\frac{n + 1000}{70} = \left\lfloor \sqrt{n} \right\rfloor \ ?$$

Les donner tous.

## Hints

1. Donne un nom à la partie entière : pose $m = \lfloor \sqrt n \rfloor$. C'est un entier.
2. L'égalité donne directement $n$ en fonction de $m$. Laquelle ?
3. Traduis $m = \lfloor \sqrt n \rfloor$ par un encadrement de $n$ entre deux carrés consécutifs.
4. Tu obtiens $m^2 \le n < (m+1)^2$. Remplace $n$ par son expression en $m$ : tu tombes sur deux inéquations du second degré en $m$.
5. Résous-les séparément, puis intersecte les deux ensembles de solutions entières.

## Solution

**Changement d'inconnue.**

Posons $m = \left\lfloor \sqrt{n} \right\rfloor$. Comme $n \ge 1$, $m$ est un entier positif. L'équation devient

$$\frac{n+1000}{70} = m, \qquad \text{c'est-à-dire} \qquad n = 70m - 1000 .$$

Réciproquement, un entier $n$ est solution si et seulement s'il s'écrit $n = 70m - 1000$ pour un entier $m$ qui est effectivement la partie entière de $\sqrt n$.

**Traduire la partie entière.**

Dire que $m = \left\lfloor \sqrt n \right\rfloor$ signifie

$$m \le \sqrt{n} < m+1,$$

ce qui, en élevant au carré (tout est positif), équivaut à

$$m^2 \le n < (m+1)^2 = m^2 + 2m + 1 .$$

**On remplace $n$ par $70m - 1000$.**

*Inéquation de gauche :*

$$m^2 \le 70m - 1000 \quad \Longleftrightarrow \quad m^2 - 70m + 1000 \le 0 .$$

Le discriminant vaut $70^2 - 4 \times 1000 = 4900 - 4000 = 900 = 30^2$, donc les racines sont

$$\frac{70 - 30}{2} = 20 \qquad \text{et} \qquad \frac{70 + 30}{2} = 50 .$$

Le trinôme est négatif entre ses racines :

$$20 \le m \le 50 .$$

*Inéquation de droite :*

$$70m - 1000 < m^2 + 2m + 1 \quad \Longleftrightarrow \quad 0 < m^2 - 68m + 1001 .$$

Le discriminant vaut $68^2 - 4 \times 1001 = 4624 - 4004 = 620$. Comme $24^2 = 576 < 620 < 625 = 25^2$, on a $24 < \sqrt{620} < 25$, donc les racines

$$m_- = \frac{68 - \sqrt{620}}{2} \qquad \text{et} \qquad m_+ = \frac{68 + \sqrt{620}}{2}$$

vérifient

$$\frac{68-25}{2} = \text{21,5} < m_- < \frac{68-24}{2} = 22 \qquad \text{et} \qquad 46 = \frac{68+24}{2} < m_+ < \frac{68+25}{2} = \text{46,5} .$$

Le trinôme est **positif à l'extérieur** de ses racines, donc la condition s'écrit $m < m_-$ ou $m > m_+$. Pour un entier $m$, cela revient à

$$m \le 21 \qquad \text{ou} \qquad m \ge 47 .$$

**On croise les deux conditions.**

$$\big( 20 \le m \le 50 \big) \ \text{et} \ \big( m \le 21 \ \text{ou} \ m \ge 47 \big) \quad \Longleftrightarrow \quad m \in \{20,\ 21,\ 47,\ 48,\ 49,\ 50\} .$$

Il y a donc **six** valeurs possibles de $m$, et chacune donne exactement un $n$.

**Les six solutions.**

| $m$ | $n = 70m - 1000$ | $m^2$ | $(m+1)^2$ | vérification $m^2 \le n < (m+1)^2$ |
|---|---|---|---|---|
| $20$ | $400$ | $400$ | $441$ | oui |
| $21$ | $470$ | $441$ | $484$ | oui |
| $47$ | $2290$ | $2209$ | $2304$ | oui |
| $48$ | $2360$ | $2304$ | $2401$ | oui |
| $49$ | $2430$ | $2401$ | $2500$ | oui |
| $50$ | $2500$ | $2500$ | $2601$ | oui |

**Conclusion.** Il y a exactement **six** entiers solutions :

$$n = 400,\ 470,\ 2290,\ 2360,\ 2430,\ 2500 .$$

## Going further

1. Pourquoi les six solutions se regroupent-elles en deux paquets très éloignés l'un de l'autre ? Regarder où la droite $y = \frac{x+1000}{70}$ croise la courbe $y = \sqrt{x}$.
2. Combien de solutions aurait l'équation $\dfrac{n+1000}{70} = \sqrt{n}$ **sans** partie entière ?
3. Reprendre le problème avec $\dfrac{n + 500}{50} = \left\lfloor \sqrt n \right\rfloor$.
