---
id: "3213"
title: "Cinq logarithmes emboîtés"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 45
tags: [logarithme, ensemble-de-definition, fonction-decroissante, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4800-4981.pdf, section 2.2, exercice 12, d'après AMC 12A 2014, problème 18 (réponse dans Handout-4805-4981.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4800-4981.pdf"
---

## Statement

Pour un réel $b > 0$ avec $b \ne 1$, on note $\log_b$ le logarithme de base $b$, défini par

$$\log_b(t) = \frac{\ln t}{\ln b} \qquad \text{pour } t > 0 .$$

On rappelle que $\log_b$ est croissante si $b > 1$ et **décroissante** si $0 < b < 1$, et que $\log_b(t) = s$ équivaut à $t = b^{s}$.

On considère

$$f(x) = \log_{1/2}\Big( \log_{4}\Big( \log_{1/4}\Big( \log_{16}\Big( \log_{1/16}(x) \Big) \Big) \Big) \Big) .$$

L'ensemble de définition de $f$ est un intervalle. Déterminer cet intervalle, puis sa longueur.

## Hints

1. Cinq logarithmes emboîtés, donc cinq conditions. Donne un nom à chaque étage pour ne pas te perdre :
   $$a = \log_{1/16}(x), \quad b = \log_{16}(a), \quad c = \log_{1/4}(b), \quad d = \log_{4}(c).$$
2. Pars du **dehors** et remonte vers l'intérieur. La toute première condition est $d > 0$.
3. À chaque étage, traduis une inégalité sur un logarithme en une inégalité sur son argument. C'est là qu'il faut faire attention : une base plus petite que $1$ **renverse** le sens de l'inégalité.
4. Par exemple, $\log_{1/4}(b) > 1$ équivaut à $0 < b < \left( \tfrac14 \right)^1$, et non à $b > \tfrac14$.
5. Écris à chaque étage un encadrement, pas seulement une minoration : la condition « le logarithme est défini » impose déjà que l'argument soit strictement positif.

## Solution

Posons, de l'intérieur vers l'extérieur,

$$a = \log_{1/16}(x), \quad b = \log_{16}(a), \quad c = \log_{1/4}(b), \quad d = \log_{4}(c),$$

de sorte que $f(x) = \log_{1/2}(d)$.

On remonte maintenant **de l'extérieur vers l'intérieur**, en traduisant chaque condition.

**Étage 1 : $\log_{1/2}(d)$ doit exister.**

$$d > 0 .$$

**Étage 2 : $d = \log_4(c) > 0$.**

La base $4$ est plus grande que $1$, donc $\log_4$ est croissante et $\log_4(c) > 0 = \log_4(1)$ équivaut à

$$c > 1 .$$

**Étage 3 : $c = \log_{1/4}(b) > 1$.**

Ici la base $\tfrac14$ est plus petite que $1$, donc $\log_{1/4}$ est **décroissante**. L'inégalité $\log_{1/4}(b) > 1 = \log_{1/4}\!\left( \tfrac14 \right)$ se renverse :

$$b < \frac14 .$$

Et il faut de plus $b > 0$ pour que $\log_{1/4}(b)$ existe. Donc

$$0 < b < \frac14 .$$

**Étage 4 : $b = \log_{16}(a)$ avec $0 < b < \tfrac14$.**

La base $16$ est plus grande que $1$, donc $\log_{16}$ est croissante et l'encadrement se transporte tel quel sur $a$ :

$$16^{0} < a < 16^{1/4}, \qquad \text{c'est-à-dire} \qquad 1 < a < 2 ,$$

puisque $16^{1/4} = \sqrt[4]{16} = 2$.

**Étage 5 : $a = \log_{1/16}(x)$ avec $1 < a < 2$.**

La base $\tfrac{1}{16}$ est plus petite que $1$, donc $\log_{1/16}$ est décroissante et l'encadrement se **renverse** :

$$\left( \frac{1}{16} \right)^{2} < x < \left( \frac{1}{16} \right)^{1},$$

c'est-à-dire

$$\frac{1}{256} < x < \frac{1}{16} .$$

(La condition $x > 0$, nécessaire pour que $\log_{1/16}(x)$ existe, est alors automatiquement vérifiée.)

**Conclusion.**

L'ensemble de définition de $f$ est l'intervalle ouvert

$$\Big] \ \frac{1}{256} \ ; \ \frac{1}{16} \ \Big[ \ ,$$

et sa longueur vaut

$$\frac{1}{16} - \frac{1}{256} = \frac{16}{256} - \frac{1}{256} = \frac{15}{256} .$$

**Contrôle rapide.** Prenons $x = \text{0,02}$, qui est bien entre $\tfrac{1}{256} \approx \text{0,0039}$ et $\tfrac{1}{16} = \text{0,0625}$. On calcule successivement $a \approx \text{1,410}$, $b \approx \text{0,1240}$, $c \approx \text{1,506}$, $d \approx \text{0,2955}$, et $f(x) \approx \text{1,76}$ : tout est défini. En revanche pour $x = \text{0,07}$, on trouve déjà $a \approx \text{0,959} < 1$, donc $b < 0$ et $c$ n'existe pas.

## Going further

1. Reprendre le calcul avec $g(x) = \log_{1/2}\big( \log_4 ( \log_{1/4} (x) ) \big)$ : quel est son ensemble de définition ?
2. Dans la solution, à quels étages l'inégalité a-t-elle été renversée ? Compter, et vérifier que cela correspond exactement aux bases plus petites que $1$.
3. Que se passerait-il si l'on remplaçait la base $16$ du quatrième étage par $\tfrac{1}{16}$ ? L'ensemble de définition serait-il encore un intervalle ?
