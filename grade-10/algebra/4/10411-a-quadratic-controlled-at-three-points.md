---
id: "10411"
title: "Un trinôme contrôlé en trois points"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [trinome, valeur-absolue, inegalite-triangulaire, interpolation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels. On pose $P(x) = ax^2 + bx + c$, et on suppose que

$$-1 \leqslant P(x) \leqslant 1 \qquad \text{pour } x = -1, \; x = 0 \text{ et } x = 1 .$$

Montrer que

$$-\frac{5}{4} \leqslant P(x) \leqslant \frac{5}{4} \qquad \text{pour tout réel } x \in [-1, 1] .$$

## Hints

1. Note $u = P(-1)$, $v = P(0)$ et $w = P(1)$. Exprime $a$, $b$ et $c$ en fonction de $u$, $v$ et $w$.
2. Remplace dans $P(x)$ et regroupe selon $u$, $v$ et $w$. Tu dois obtenir $P(x) = \frac{x(x+1)}{2}\,w + \frac{x(x-1)}{2}\,u + (1 - x^2)\,v$.
3. On sait seulement que $|u|$, $|v|$ et $|w|$ sont au plus $1$. Utilise $|A + B + C| \leqslant |A| + |B| + |C|$, en faisant attention au signe de chaque coefficient quand $0 \leqslant x \leqslant 1$.
4. Pour $-1 \leqslant x \leqslant 0$, remarque que $Q(x) = P(-x)$ vérifie les mêmes hypothèses que $P$.

## Solution

Notons $u = P(-1)$, $v = P(0)$ et $w = P(1)$. Par hypothèse, $|u| \leqslant 1$, $|v| \leqslant 1$ et $|w| \leqslant 1$. Il faut montrer que $|P(x)| \leqslant \frac{5}{4}$ pour tout $x \in [-1, 1]$.

**Étape 1 : écrire $P$ à l'aide de $u$, $v$, $w$.** On a

$$u = a - b + c, \qquad v = c, \qquad w = a + b + c .$$

Donc $c = v$, puis $w - u = 2b$ et $w + u = 2a + 2c$, d'où

$$b = \frac{w - u}{2}, \qquad a = \frac{w + u}{2} - v .$$

En remplaçant dans $P(x) = ax^2 + bx + c$ et en regroupant selon $u$, $v$ et $w$ :

$$P(x) = \frac{x^2 + x}{2}\,w + \frac{x^2 - x}{2}\,u + (1 - x^2)\,v = \frac{x(x+1)}{2}\,w + \frac{x(x-1)}{2}\,u + (1 - x^2)\,v .$$

(On peut vérifier cette formule en $x = -1$, $0$ et $1$ : elle redonne bien $u$, $v$ et $w$.)

**Étape 2 : le cas $0 \leqslant x \leqslant 1$.** Pour ces valeurs de $x$, on a $\frac{x(x+1)}{2} \geqslant 0$, $\frac{x(x-1)}{2} \leqslant 0$ et $1 - x^2 \geqslant 0$. La valeur absolue d'une somme est au plus la somme des valeurs absolues, donc

$$|P(x)| \leqslant \frac{x(x+1)}{2}\,|w| + \frac{x(1-x)}{2}\,|u| + (1 - x^2)\,|v| \leqslant \frac{x(x+1)}{2} + \frac{x(1-x)}{2} + (1 - x^2) .$$

Le membre de droite se simplifie :

$$\frac{x^2 + x + x - x^2}{2} + 1 - x^2 = -x^2 + x + 1 = \frac{5}{4} - \left(x - \frac{1}{2}\right)^2 \leqslant \frac{5}{4} .$$

Donc $|P(x)| \leqslant \frac{5}{4}$ pour tout $x \in [0, 1]$.

**Étape 3 : le cas $-1 \leqslant x \leqslant 0$.** Posons $Q(x) = P(-x) = ax^2 - bx + c$. C'est encore un polynôme de la même forme, et $Q(-1) = w$, $Q(0) = v$, $Q(1) = u$ sont aussi compris entre $-1$ et $1$. L'étape 2 appliquée à $Q$ montre que $|Q(t)| \leqslant \frac{5}{4}$ pour tout $t \in [0, 1]$. Si $x \in [-1, 0]$, alors $t = -x \in [0, 1]$ et $|P(x)| = |Q(t)| \leqslant \frac{5}{4}$.

**Conclusion.** Pour tout $x \in [-1, 1]$, on a $-\frac{5}{4} \leqslant P(x) \leqslant \frac{5}{4}$.

La borne $\frac{5}{4}$ ne peut pas être améliorée : $P(x) = -x^2 + x + 1$ vérifie $P(-1) = -1$, $P(0) = 1$, $P(1) = 1$, et $P\!\left(\frac{1}{2}\right) = \frac{5}{4}$.

## Going further

1. Sous les mêmes hypothèses, montrer que $|P(x)| \leqslant 7$ pour tout $x \in [-2, 2]$. Cette borne est-elle atteinte ?
2. Sous les mêmes hypothèses, que peut-on dire de $|a|$, de $|b|$ et de $|c|$ ?
