---
id: "7927"
title: "Une règle sur les congruences qui n'existe pas"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [congruences, contre-exemple, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, évaluation initiale"
  reference: "stage_ete_2016.pdf, « Evaluation initiale », rubrique Arithmétique, question sur les congruences (p. 34)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des entiers naturels et $n$ un entier supérieur ou égal à $2$. On suppose

$$a \equiv b \pmod n \qquad \text{et} \qquad c \equiv d \pmod n .$$

1. Montrer que $a + c \equiv b + d \pmod n$ et que $ac \equiv bd \pmod n$.
2. A-t-on toujours $a^c \equiv b^d \pmod n$ ? Justifier la réponse.

## Hints

1. Pour la question 1, écris $a - b = kn$ et $c - d = \ell n$, puis calcule $(a+c) - (b+d)$ et $ac - bd$.
2. Pour la question 2, essaie de trouver un contre-exemple plutôt que de chercher une démonstration.
3. Prends $n$ tout petit, par exemple $n = 3$, et choisis des exposants $c$ et $d$ très différents l'un de l'autre, même s'ils sont congrus modulo $3$.

## Solution

**1. Les deux règles qui, elles, sont vraies.**

Écrivons $a - b = kn$ et $c - d = \ell n$ avec $k$ et $\ell$ entiers.

- **Somme :** $(a + c) - (b + d) = (a - b) + (c - d) = kn + \ell n = (k + \ell)n$, qui est un multiple de $n$. Donc $a + c \equiv b + d \pmod n$.
- **Produit :** en écrivant $a = b + kn$ et $c = d + \ell n$,
  $$ac = (b + kn)(d + \ell n) = bd + n\left(b\ell + dk + k\ell n\right) .$$
  La différence $ac - bd$ est donc un multiple de $n$, et $ac \equiv bd \pmod n$.

**2. La règle pour les exposants est fausse.**

La réponse est **non**. Voici un contre-exemple.

Prenons $n = 3$, puis

$$a = 2, \quad b = 5, \quad c = 4, \quad d = 1 .$$

Les hypothèses sont bien vérifiées :

$$2 \equiv 5 \pmod 3 \quad (\text{car } 5 - 2 = 3) , \qquad 4 \equiv 1 \pmod 3 \quad (\text{car } 4 - 1 = 3) .$$

Mais

$$a^c = 2^4 = 16 \qquad \text{et} \qquad b^d = 5^1 = 5 ,$$

et $16 - 5 = 11$ n'est pas un multiple de $3$. Donc $16 \not\equiv 5 \pmod 3$.

**Conclusion.** Les congruences se comportent bien vis-à-vis de l'addition et de la multiplication, mais **pas** vis-à-vis des exposants : on n'a pas le droit de remplacer un exposant par un autre sous prétexte qu'ils sont congrus.

## Going further

Pourquoi cela échoue-t-il ? Parce que la base et l'exposant ne jouent pas le même rôle. On peut remplacer la base par n'importe quel entier congru à elle : $a \equiv b$ entraîne bien $a^c \equiv b^c \pmod n$ (c'est la règle du produit appliquée $c$ fois).

En revanche l'exposant vit dans un autre monde. Pour $n$ premier et $a$ non divisible par $n$, le petit théorème de Fermat donne $a^{n-1} \equiv 1 \pmod n$ : les exposants se comparent alors modulo $n - 1$, et non modulo $n$. Dans notre exemple, $n = 3$ et $n - 1 = 2$ : les exposants $4$ et $1$ ne sont pas congrus modulo $2$, ce qui explique l'échec.
