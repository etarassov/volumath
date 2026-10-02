---
id: "10669"
title: "(ab + c)(ac + 4b) ≥ 8 quand abc = 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, produit-egal-a-un, racine-carree, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 1 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. L'inégalité arithmético-géométrique citée par le corrigé est démontrée ici avec un carré."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs tels que $abc = 1$. Montrer que

$$(ab + c)(ac + 4b) \geqslant 8$$

Quand a-t-on l'égalité ?

## Hints

1. Pour deux réels $x, y \geqslant 0$, développe $\left(\sqrt{x} - \sqrt{y}\right)^2$. Tu obtiens une minoration de $x + y$ à l'aide de $\sqrt{xy}$.
2. Applique-la à chacune des deux parenthèses. Que vaut le produit $ab \times c$ ? Et $ac \times 4b$ ?
3. Pour l'égalité, il faut l'égalité dans les deux minorations. Traduis-la par deux équations, puis utilise $abc = 1$.

## Solution

**Un lemme.** *Pour tous réels $x, y \geqslant 0$, on a $x + y \geqslant 2\sqrt{xy}$, avec égalité seulement si $x = y$.*

En effet, $x + y - 2\sqrt{xy} = \left(\sqrt{x}\right)^2 - 2\sqrt{x}\sqrt{y} + \left(\sqrt{y}\right)^2 = \left(\sqrt{x} - \sqrt{y}\right)^2 \geqslant 0$. Ce carré est nul seulement si $\sqrt{x} = \sqrt{y}$, c'est-à-dire $x = y$.

**Étape 1. Minorer chaque parenthèse.**

Par le lemme, et comme $abc = 1$ :

$$ab + c \geqslant 2\sqrt{ab \times c} = 2\sqrt{abc} = 2$$

$$ac + 4b \geqslant 2\sqrt{ac \times 4b} = 2\sqrt{4abc} = 2 \times 2 = 4$$

Ces deux inégalités portent sur des nombres positifs, on peut donc les multiplier membre à membre :

$$(ab + c)(ac + 4b) \geqslant 2 \times 4 = 8$$

**Étape 2. Si l'égalité a lieu.**

Si le produit vaut $8$, aucune des deux minorations ne peut être stricte : si par exemple $ab + c > 2$, alors le produit serait strictement plus grand que $2 \times 4$. Donc $ab + c = 2$ et $ac + 4b = 4$, et le cas d'égalité du lemme donne

$$ab = c \qquad \text{et} \qquad ac = 4b$$

- En multipliant la première par $c$ : $c^2 = abc = 1$, donc $c = 1$ car $c > 0$.
- En multipliant la seconde par $a$ : $a^2 c = 4ab$, c'est-à-dire $a^2 = 4ab$. Comme $c = 1$, on a $ab = c = 1$, donc $a^2 = 4$ et $a = 2$.
- Enfin $b = \frac{1}{ac} = \frac{1}{2}$.

**Étape 3. Vérification.**

Pour $a = 2$, $b = \frac{1}{2}$, $c = 1$, on a bien $abc = 1$, et

$$(ab + c)(ac + 4b) = (1 + 1)(2 + 2) = 8$$

**Conclusion : on a toujours $(ab + c)(ac + 4b) \geqslant 8$, avec égalité seulement pour $a = 2$, $b = \frac{1}{2}$ et $c = 1$.**
