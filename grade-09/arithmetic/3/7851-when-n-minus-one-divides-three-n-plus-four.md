---
id: "7851"
title: "Quand n − 1 divise 3n + 4"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, combinaison lineaire, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 matin (Julien Portier), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les entiers $n$ strictement positifs tels que $n - 1$ divise $3n + 4$.

## Hints

1. Ne teste pas les valeurs une par une : il y en a une infinité. Le but est de faire
   **disparaître le $n$**.
2. Si $n-1$ divise $3n + 4$, il divise aussi tout multiple de $n-1$, par exemple $3(n-1)$. Et
   donc il divise la différence.
3. Calcule $(3n + 4) - 3(n-1)$. Tu obtiens un nombre qui ne dépend plus de $n$ du tout.
4. Il reste à lister les diviseurs de ce nombre. N'oublie pas de vérifier à la fin que les
   valeurs trouvées conviennent vraiment.

## Solution

**Étape 1 : on fait disparaître le $n$.**

Le nombre $n - 1$ se divise lui-même, donc il divise $3(n-1) = 3n - 3$.

Si en plus $n-1$ divise $3n + 4$, alors il divise la différence :
$$(3n + 4) - (3n - 3) = 7 .$$

Donc $n - 1$ est un diviseur de $7$.

**Étape 2 : on liste les possibilités.**

Comme $n$ est un entier strictement positif, $n - 1$ est un entier positif ou nul. Le cas
$n - 1 = 0$ est exclu (on ne divise pas par zéro, et $0$ ne divise que $0$, or $3n+4 = 7 \neq 0$).

Les diviseurs positifs de $7$ sont $1$ et $7$, donc
$$n - 1 = 1 \quad \text{ou} \quad n - 1 = 7 ,$$
c'est-à-dire
$$n = 2 \quad \text{ou} \quad n = 8 .$$

**Étape 3 : on vérifie.**

- $n = 2$ : $n - 1 = 1$ et $3n + 4 = 10$. Et $1$ divise $10$. Cela convient.
- $n = 8$ : $n - 1 = 7$ et $3n + 4 = 28 = 7 \times 4$. Cela convient.

**Conclusion.** Les seuls entiers strictement positifs qui conviennent sont
$$\boxed{n = 2 \quad \text{et} \quad n = 8}.$$

*La méthode à retenir.* Face à « $A(n)$ divise $B(n)$ » avec $A$ et $B$ de degré $1$, on combine
les deux pour éliminer $n$ : le diviseur doit alors diviser une constante, ce qui ne laisse
qu'un nombre fini de cas.
