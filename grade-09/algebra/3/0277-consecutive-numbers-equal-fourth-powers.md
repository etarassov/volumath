---
id: "0277"
title: "Deux nombres qui se suivent, même puissance quatrième"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [puissances, factorisation, identites-remarquables, nombres-relatifs]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 3, задача 5"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

On sait que $a = b + 1$.

Peut-il arriver que $a^4 = b^4$ ?

## Hints

1. L'énoncé ne dit nulle part que $a$ et $b$ sont des entiers, ni qu'ils sont positifs.
2. Deux nombres différents peuvent-ils avoir le même carré ? Cherchez un exemple tout simple.
3. Pour traiter la question complètement, écrivez l'égalité sous la forme $a^4 - b^4 = 0$ et factorisez.
4. $a^4 - b^4 = (a^2 - b^2)(a^2 + b^2) = (a - b)(a + b)(a^2 + b^2)$. Un produit est nul quand l'un de ses facteurs est nul. Ici, $a - b$ vaut $1$ : ce facteur-là ne peut pas être nul.

## Solution

**Oui, c'est possible.** Et on peut même trouver tous les cas.

**Un exemple.**

Prenons $a = \dfrac{1}{2}$ et $b = -\dfrac{1}{2}$.

On a bien $b + 1 = -\dfrac{1}{2} + 1 = \dfrac{1}{2} = a$, et

$$a^4 = \left(\frac{1}{2}\right)^4 = \frac{1}{16}, \qquad b^4 = \left(-\frac{1}{2}\right)^4 = \frac{1}{16}.$$

Les deux puissances quatrièmes sont bien égales.

**Pourquoi on aurait pu le deviner.**

Le piège est de se dire : « $a$ et $b$ sont différents, donc $a^4$ et $b^4$ sont différents ». C'est faux dès qu'on sort des nombres positifs : $2$ et $-2$ sont différents mais ont le même carré, donc aussi la même puissance quatrième. Il suffit donc de chercher $a$ et $b$ **opposés**.

Si $a$ et $b$ sont opposés et que $a = b + 1$, alors les deux nombres sont à égale distance de $0$ et séparés par $1$ : ce sont $\dfrac{1}{2}$ et $-\dfrac{1}{2}$.

**La recherche complète, par factorisation.**

Cherchons maintenant **tous** les couples qui conviennent. L'égalité $a^4 = b^4$ s'écrit $a^4 - b^4 = 0$. On factorise :

$$a^4 - b^4 = (a^2 - b^2)(a^2 + b^2) = (a - b)(a + b)(a^2 + b^2).$$

Un produit est nul si et seulement si l'un de ses facteurs est nul. Examinons les trois facteurs.

- $a - b$ : comme $a = b + 1$, on a $a - b = 1$. Ce facteur n'est jamais nul.
- $a^2 + b^2$ : c'est une somme de deux carrés, donc elle est nulle seulement si $a = 0$ **et** $b = 0$. Mais alors $a - b = 0$, ce qui contredit $a - b = 1$. Ce facteur n'est jamais nul non plus.
- Il reste donc $a + b = 0$.

De $a + b = 0$ et $a = b + 1$ on tire $(b + 1) + b = 0$, c'est-à-dire $2b = -1$, donc

$$b = -\frac{1}{2}, \qquad a = \frac{1}{2}.$$

**Conclusion.** Oui, c'est possible, et c'est possible d'une seule façon : $a = \dfrac{1}{2}$ et $b = -\dfrac{1}{2}$.

## Going further

1. Même question avec $a = b + 2$ : peut-on avoir $a^4 = b^4$ ?
2. On garde $a = b + 1$. Peut-on avoir $a^3 = b^3$ ? Et $a^{2024} = b^{2024}$ ?
3. Et si on impose en plus que $a$ et $b$ soient des entiers relatifs ?
