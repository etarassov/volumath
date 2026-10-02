---
id: "7657"
title: "Le produit moins la somme vaut 1"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, equation-en-entiers, diviseurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'équations du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours d'algèbre, exercice sur ab − a − b = 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les couples d'entiers strictement positifs $(a, b)$ tels que

$$ab - a - b = 1 .$$

## Hints

1. L'expression $ab - a - b$ ressemble à un début de produit. Développez $(a-1)(b-1)$ pour voir ce qui manque.
2. Ajoutez la même quantité aux deux membres de l'équation pour faire apparaître ce produit.
3. Vous obtenez un produit de deux entiers égal à un petit nombre. Listez les façons de l'écrire.
4. N'oubliez pas de vérifier que les solutions trouvées sont bien des entiers strictement positifs.

## Solution

**L'astuce : faire apparaître un produit.**

Développons $(a-1)(b-1)$ :

$$(a-1)(b-1) = ab - a - b + 1 .$$

Le membre de gauche de notre équation vaut donc $(a-1)(b-1) - 1$. L'équation $ab - a - b = 1$ se réécrit ainsi :

$$(a-1)(b-1) - 1 = 1, \qquad \text{c'est-à-dire} \qquad (a-1)(b-1) = 2 .$$

**Chercher les factorisations de 2.**

Comme $a$ et $b$ sont des entiers strictement positifs, $a - 1$ et $b - 1$ sont des entiers **positifs ou nuls**. Leur produit vaut $2$, donc aucun des deux n'est nul, et tous deux sont strictement positifs.

Il n'y a que deux façons d'écrire $2$ comme produit de deux entiers strictement positifs :

$$2 = 1 \times 2 \qquad \text{ou} \qquad 2 = 2 \times 1 .$$

Cela donne deux possibilités.

- Si $a - 1 = 1$ et $b - 1 = 2$, alors $a = 2$ et $b = 3$.
- Si $a - 1 = 2$ et $b - 1 = 1$, alors $a = 3$ et $b = 2$.

**Vérification.**

- Pour $(a,b) = (2,3)$ : $ab - a - b = 6 - 2 - 3 = 1$. C'est bon.
- Pour $(a,b) = (3,2)$ : $ab - a - b = 6 - 3 - 2 = 1$. C'est bon.

**Conclusion.** Les seuls couples d'entiers strictement positifs solutions sont

$$\boxed{(a,b) = (2,3) \quad \text{et} \quad (a,b) = (3,2) .}$$

## Going further

La technique employée ici porte un nom, la **factorisation de Simon** : devant une équation du type $ab + \alpha a + \beta b = \gamma$, on ajoute la constante qui manque pour que le membre de gauche devienne $(a + \beta)(b + \alpha)$. Ici, en ajoutant $1$ des deux côtés. C'est l'analogue, pour un produit, de la mise sous forme canonique d'un trinôme.

**Essayez avec d'autres seconds membres.** Avec $ab - a - b = 5$, la même transformation donne $(a-1)(b-1) = 6$, soit quatre couples : $(2,7)$, $(3,4)$, $(4,3)$, $(7,2)$. Avec $ab - a - b = 0$, on obtient $(a-1)(b-1) = 1$, donc l'unique couple $(2,2)$.

**Une question plus délicate.** Pour quelles valeurs de $n$ l'équation $ab - a - b = n$ a-t-elle **exactement deux** solutions en entiers strictement positifs ? Il faut que $n+1$ ait exactement deux diviseurs, c'est-à-dire que $n + 1$ soit un nombre premier.
