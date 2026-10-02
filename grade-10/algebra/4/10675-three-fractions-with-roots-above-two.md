---
id: "10675"
title: "Trois fractions avec racines, au-dessus de 2 quand abc = 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, changement-de-variable, racines-carrees, produit-egal-a-un, inegalite-stricte]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 7 (repris à l'identique en exercice 14, Seniors) ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le changement de variables du corrigé, a = y/x, b = z/y, c = x/z, ne mène pas à l'inégalité qu'il écrit ensuite, et celle-ci contient des coquilles. Le bon choix est a = z/y, b = y/x, c = x/z."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs tels que $abc = 1$. Montrer que

$$\frac{1}{a\sqrt{c^2 + 1}} + \frac{1}{b\sqrt{a^2 + 1}} + \frac{1}{c\sqrt{b^2 + 1}} > 2$$

## Hints

1. Une condition $abc = 1$ se traduit souvent en écrivant les nombres comme des quotients : $a = \frac{z}{y}$, $b = \frac{y}{x}$, $c = \frac{x}{z}$. Vérifie qu'on peut trouver de tels $x$, $y$, $z$ strictement positifs (essaie $x = 1$).
2. Calcule $a\sqrt{c^2 + 1}$ avec ces nouvelles lettres. La somme devient $\frac{x}{\sqrt{y^2 + z^2}} + \frac{y}{\sqrt{z^2 + x^2}} + \frac{z}{\sqrt{x^2 + y^2}}$.
3. Écris $\frac{x}{\sqrt{y^2 + z^2}} = \frac{x^2}{x\sqrt{y^2 + z^2}}$ et majore le dénominateur grâce à $2uv \leqslant u^2 + v^2$.
4. Pour l'inégalité stricte, regarde ce qu'il faudrait pour avoir l'égalité dans les trois majorations à la fois.

## Solution

**Étape 1. Écrire $a$, $b$, $c$ comme des quotients.**

Posons $x = 1$, $y = b$ et $z = \frac{1}{c}$, trois réels strictement positifs. Alors $\frac{y}{x} = b$, $\frac{x}{z} = c$, et comme $abc = 1$, $\frac{z}{y} = \frac{1}{bc} = a$. Ainsi

$$a = \frac{z}{y}, \qquad b = \frac{y}{x}, \qquad c = \frac{x}{z}$$

**Étape 2. Transformer la somme.**

On a $c^2 + 1 = \frac{x^2}{z^2} + 1 = \frac{x^2 + z^2}{z^2}$, donc $\sqrt{c^2 + 1} = \frac{\sqrt{x^2 + z^2}}{z}$, et

$$a\sqrt{c^2 + 1} = \frac{z}{y} \times \frac{\sqrt{x^2 + z^2}}{z} = \frac{\sqrt{z^2 + x^2}}{y}$$

Le premier terme vaut donc $\frac{y}{\sqrt{z^2 + x^2}}$. Le même calcul donne $b\sqrt{a^2 + 1} = \frac{y}{x} \times \frac{\sqrt{z^2 + y^2}}{y} = \frac{\sqrt{y^2 + z^2}}{x}$ et $c\sqrt{b^2 + 1} = \frac{x}{z} \times \frac{\sqrt{y^2 + x^2}}{x} = \frac{\sqrt{x^2 + y^2}}{z}$. La somme de l'énoncé vaut donc

$$S = \frac{x}{\sqrt{y^2 + z^2}} + \frac{y}{\sqrt{z^2 + x^2}} + \frac{z}{\sqrt{x^2 + y^2}}$$

**Étape 3. Minorer chaque terme.**

*Lemme.* Pour tous réels $u$ et $v$, on a $uv \leqslant \frac{u^2 + v^2}{2}$, avec égalité seulement si $u = v$. En effet, $u^2 + v^2 - 2uv = (u - v)^2 \geqslant 0$.

Appliquons-le à $u = x$ et $v = \sqrt{y^2 + z^2}$ :

$$x\sqrt{y^2 + z^2} \leqslant \frac{x^2 + y^2 + z^2}{2}$$

Le dénominateur est plus petit, donc la fraction est plus grande :

$$\frac{x}{\sqrt{y^2 + z^2}} = \frac{x^2}{x\sqrt{y^2 + z^2}} \geqslant \frac{2x^2}{x^2 + y^2 + z^2}$$

De même pour les deux autres termes. En additionnant :

$$S \geqslant \frac{2x^2 + 2y^2 + 2z^2}{x^2 + y^2 + z^2} = 2$$

**Étape 4. L'inégalité est stricte.**

Pour avoir $S = 2$, il faudrait l'égalité dans les trois minorations, donc dans les trois lemmes : $x^2 = y^2 + z^2$, $y^2 = z^2 + x^2$ et $z^2 = x^2 + y^2$. En additionnant ces trois égalités, on obtiendrait $x^2 + y^2 + z^2 = 2\,(x^2 + y^2 + z^2)$, donc $x^2 + y^2 + z^2 = 0$. C'est impossible, car $x$, $y$, $z$ sont strictement positifs. Au moins une minoration est donc stricte, et $S > 2$.

**Conclusion : pour tous réels strictement positifs $a$, $b$, $c$ tels que $abc = 1$, la somme est strictement plus grande que $2$.**

## Going further

Le nombre $2$ ne peut pas être remplacé par un nombre plus grand. Prends $y = z = 1$ et $x$ très petit dans la somme de l'étape 2 : de quoi la somme se rapproche-t-elle ?
