---
id: "11821"
title: "Trois fractions et la somme des carrés"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, methode-de-la-tangente, factorisation, homogeneite, derivee]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 8 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois réels strictement positifs. Montrer que

$$\frac{a^3 + 5b^3}{3a + b} + \frac{b^3 + 5c^3}{3b + c} + \frac{c^3 + 5a^3}{3c + a} \geqslant \frac{3}{2}\left(a^2 + b^2 + c^2\right).$$

## Hints

1. Que se passe-t-il pour $a = b = c$ ? L'inégalité est alors une égalité, ce qui guide la suite.
2. Chercher à minorer chaque fraction séparément par une expression simple $\alpha a^2 + \beta b^2$, avec $\alpha + \beta = \frac{3}{2}$, pour qu'en additionnant on retrouve le membre de droite.
3. Pour que la minoration soit encore une égalité quand $a = b$, et qu'elle « colle » au voisinage, poser $t = \frac{a}{b}$ et choisir $\alpha t^2 + \beta$ tangente en $t = 1$ à la courbe de $t \mapsto \frac{t^3 + 5}{3t + 1}$.

## Solution

**Idée.** Le membre de droite est une somme de trois termes, un par lettre, et chaque fraction ne fait intervenir que deux lettres. On cherche donc une minoration de la forme

$$\frac{a^3 + 5b^3}{3a + b} \geqslant \alpha a^2 + \beta b^2 \qquad (\ast)$$

valable pour tous $a, b > 0$. En l'écrivant aussi pour $(b, c)$ et $(c, a)$ et en additionnant, on obtiendra $(\alpha + \beta)(a^2 + b^2 + c^2)$ à droite. Il faut donc $\alpha + \beta = \frac{3}{2}$.

**Comment trouver $\alpha$ et $\beta$.** En divisant par $b^2$ et en posant $t = \frac{a}{b} > 0$, la minoration $(\ast)$ devient

$$f(t) = \frac{t^3 + 5}{3t + 1} \geqslant \alpha t^2 + \beta.$$

Pour $t = 1$, on a $f(1) = \frac{6}{4} = \frac{3}{2} = \alpha + \beta$ : les deux membres sont égaux. Pour que la courbe de $f$ reste au-dessus de celle de $t \mapsto \alpha t^2 + \beta$ des deux côtés de $t = 1$, il faut que les deux courbes y soient tangentes, c'est-à-dire que leurs dérivées soient égales en $1$. Or

$$f'(t) = \frac{3t^2(3t + 1) - 3(t^3 + 5)}{(3t + 1)^2} = \frac{6t^3 + 3t^2 - 15}{(3t + 1)^2}, \qquad f'(1) = \frac{-6}{16} = -\frac{3}{8}.$$

La dérivée de $\alpha t^2 + \beta$ en $1$ vaut $2\alpha$, d'où $\alpha = -\frac{3}{16}$, puis $\beta = \frac{3}{2} + \frac{3}{16} = \frac{27}{16}$.

**Preuve de la minoration.** Montrons que pour tous $a, b > 0$,

$$\frac{a^3 + 5b^3}{3a + b} \geqslant \frac{27 b^2 - 3a^2}{16}.$$

Comme $16(3a + b) > 0$, cela revient à montrer que $16(a^3 + 5b^3) - (27b^2 - 3a^2)(3a + b) \geqslant 0$. On développe :

$$16a^3 + 80b^3 - \left(81ab^2 + 27b^3 - 9a^3 - 3a^2 b\right) = 25a^3 + 3a^2 b - 81ab^2 + 53b^3.$$

Ce polynôme s'annule pour $a = b$, et même « deux fois » (c'est le sens de la tangence). On vérifie en développant le membre de droite que

$$25a^3 + 3a^2 b - 81ab^2 + 53b^3 = (a - b)^2 (25a + 53b).$$

Ce produit est positif ou nul car $a, b > 0$, ce qui prouve la minoration.

**Conclusion.** En écrivant la minoration pour les couples $(a, b)$, $(b, c)$ et $(c, a)$, puis en additionnant :

$$\frac{a^3 + 5b^3}{3a + b} + \frac{b^3 + 5c^3}{3b + c} + \frac{c^3 + 5a^3}{3c + a} \geqslant \frac{27 - 3}{16}\left(a^2 + b^2 + c^2\right) = \frac{3}{2}\left(a^2 + b^2 + c^2\right).$$

Il y a égalité exactement lorsque $a = b = c$.

## Going further

- La même méthode permet-elle de montrer $\frac{a^3 + 2b^3}{a + 2b} + \frac{b^3 + 2c^3}{b + 2c} + \frac{c^3 + 2a^3}{c + 2a} \geqslant a^2 + b^2 + c^2$ ?
