---
id: "0790"
title: "La carpette et l'éponge de Sierpinski"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 25
tags: [puissances, fractions, aire, volume, comparaison]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 16, d'après Olympiades académiques de Versailles, 2011"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

**1. La carpette de Sierpinski.** On part d'un carré gris de côté $27$. À chaque étape, on partage chaque carré gris en neuf carrés identiques et on enlève celui du milieu. À l'étape $1$ il reste donc huit carrés gris de côté $9$ ; à l'étape $2$ on recommence dans chacun de ces huit carrés, et ainsi de suite.

À quelle étape l'aire de la carpette devient-elle inférieure à la moitié de l'aire initiale ?

**2. L'éponge de Sierpinski.** On part d'un cube plein d'arête $a$. À chaque étape, on partage chaque cube plein en $27$ petits cubes identiques et on en évide sept : celui du centre et les six qui touchent le centre de chacune des faces. Il en reste donc vingt.

À quelle étape le volume de l'éponge devient-il inférieur à la moitié du volume initial ?

## Hints

1. Ne calcule pas les aires en vraie grandeur. Demande-toi seulement : par combien l'aire est-elle multipliée à chaque étape ?
2. Un carré gris devient huit carrés neuf fois plus petits en aire. L'aire de la carpette est donc multipliée par $\dfrac{8}{9}$ à chaque étape.
3. Après $n$ étapes, l'aire vaut $\left(\dfrac{8}{9}\right)^n$ fois l'aire de départ. Calcule ces fractions l'une après l'autre.
4. Pour comparer $\left(\dfrac{8}{9}\right)^n$ et $\dfrac{1}{2}$ sans passer par les décimales, compare les deux entiers $2 \times 8^n$ et $9^n$.
5. Pour l'éponge, la même méthode marche : il reste $20$ cubes sur $27$ à chaque étape.

## Solution

### 1. La carpette

**Par combien l'aire est-elle multipliée à chaque étape ?**

Chaque carré gris est partagé en neuf carrés identiques, et un seul est enlevé. Il en reste huit, donc l'aire grise est multipliée par $\dfrac{8}{9}$. Comme tous les carrés gris subissent le même sort, **l'aire totale de la carpette est multipliée par $\dfrac{8}{9}$ à chaque étape**.

Si $A$ est l'aire de départ ($A = 27^2 = 729$), l'aire après $n$ étapes vaut donc

$$A_n = \left(\frac{8}{9}\right)^n \times A$$

**Quand cette aire passe-t-elle sous la moitié ?**

Il faut trouver le plus petit entier $n$ tel que

$$\left(\frac{8}{9}\right)^n < \frac{1}{2}$$

Cette inégalité revient à $2 \times 8^n < 9^n$, ce qui se vérifie avec des entiers, sans aucune valeur approchée :

| $n$ | $2 \times 8^n$ | $9^n$ | $2 \times 8^n < 9^n$ ? |
| --- | --- | --- | --- |
| $1$ | $16$ | $9$ | non |
| $2$ | $128$ | $81$ | non |
| $3$ | $1024$ | $729$ | non |
| $4$ | $8192$ | $6561$ | non |
| $5$ | $65\,536$ | $59\,049$ | non |
| $6$ | $524\,288$ | $531\,441$ | **oui** |

À l'étape $5$, l'aire vaut encore $\dfrac{32\,768}{59\,049} \approx \text{0,555}$ fois l'aire initiale, donc plus de la moitié. À l'étape $6$, elle vaut $\dfrac{262\,144}{531\,441} \approx \text{0,493}$ fois l'aire initiale, donc moins de la moitié.

**C'est à l'étape $6$ que l'aire de la carpette devient inférieure à la moitié de l'aire initiale.**

(On remarque que la construction ne s'arrête pas quand les carrés deviennent petits : le carré de départ a pour côté $27 = 3^3$, donc à l'étape $3$ les carrés gris ont déjà pour côté $1$. Rien n'empêche de continuer avec des carrés de côté $\frac{1}{3}$, puis $\frac{1}{9}$.)

### 2. L'éponge

**Par combien le volume est-il multiplié à chaque étape ?**

Chaque cube plein est partagé en $27$ petits cubes et sept sont évidés : il en reste $20$. Le volume est donc multiplié par $\dfrac{20}{27}$ à chaque étape, et après $n$ étapes il vaut

$$V_n = \left(\frac{20}{27}\right)^n \times V$$

où $V = a^3$ est le volume initial.

**Quand ce volume passe-t-il sous la moitié ?**

On cherche le plus petit entier $n$ tel que $\left(\dfrac{20}{27}\right)^n < \dfrac{1}{2}$, c'est-à-dire $2 \times 20^n < 27^n$ :

| $n$ | $2 \times 20^n$ | $27^n$ | $2 \times 20^n < 27^n$ ? |
| --- | --- | --- | --- |
| $1$ | $40$ | $27$ | non |
| $2$ | $800$ | $729$ | non |
| $3$ | $16\,000$ | $19\,683$ | **oui** |

À l'étape $2$ le volume vaut $\dfrac{400}{729} \approx \text{0,549}$ fois le volume initial, à l'étape $3$ il vaut $\dfrac{8000}{19\,683} \approx \text{0,406}$ fois le volume initial.

**C'est à l'étape $3$ que le volume de l'éponge devient inférieur à la moitié du volume initial.**

**Conclusion.** La carpette met $6$ étapes à perdre la moitié de son aire, l'éponge n'en met que $3$ pour perdre la moitié de son volume : on creuse beaucoup plus vite en volume qu'en aire.

## Going further

À chaque étape, l'aire de la carpette est multipliée par $\frac{8}{9}$, qui est un nombre strictement inférieur à $1$ mais strictement positif. L'aire finit-elle par devenir nulle ? Par devenir plus petite que n'importe quel nombre choisi à l'avance ?
