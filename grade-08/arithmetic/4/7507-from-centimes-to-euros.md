---
id: "7507"
title: "Des centimes aux euros"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [monnaie, echanges, somme, astuce, correspondance]
adapted_from: null
see_also: []
same_as: ["8149"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 63 (solution p. 248, résolu par Alexander Semenov)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On dispose de pièces de $1$, $2$, $5$, $10$, $20$ et $50$ centimes, ainsi que de pièces de $1$ euro. On en a autant qu'on veut de chaque sorte.

On suppose qu'avec $N$ pièces on peut payer exactement une facture de $M$ centimes.

Montrer qu'alors, avec $M$ pièces, on peut payer exactement une facture de $N$ euros.

(Rappel : $1$ euro $= 100$ centimes.)

## Hints

1. Fais-toi d'abord un exemple. Avec $N = 3$ pièces on peut payer $M = 7$ centimes ($5 + 1 + 1$). Arrives-tu à payer $3$ euros avec $7$ pièces ?
2. Les valeurs disponibles, en centimes, sont $1, 2, 5, 10, 20, 50, 100$. Range-les par paires dont le produit vaut $100$.
3. Si le paiement de départ utilise $x$ pièces de valeur $v$, essaie d'utiliser dans le nouveau paiement $x \cdot v$ pièces de la valeur associée à $v$.
4. Compte alors le montant total, puis le nombre total de pièces. Les deux calculs sont presque les mêmes, mais échangés.

## Solution

**Étape 1. Les valeurs vont par paires.**

Exprimons tout en centimes. Les valeurs disponibles sont

$$1,\quad 2,\quad 5,\quad 10,\quad 20,\quad 50,\quad 100.$$

Ce qui est remarquable, c'est qu'elles se rangent par paires dont le produit vaut $100$ :

$$1 \times 100, \qquad 2 \times 50, \qquad 5 \times 20, \qquad 10 \times 10.$$

Chaque valeur $v$ a donc une **valeur associée** $v' = \dfrac{100}{v}$, qui est elle aussi disponible.

**Étape 2. On écrit le paiement de départ.**

Notons $x_1$ le nombre de pièces de $1$ centime utilisées, $x_2$ celui des pièces de $2$ centimes, et ainsi de suite jusqu'à $x_{100}$ pour les pièces de $1$ euro. L'hypothèse dit deux choses :

$$x_1 + x_2 + x_5 + x_{10} + x_{20} + x_{50} + x_{100} = N \qquad \text{(le nombre de pièces)},$$

$$1\,x_1 + 2\,x_2 + 5\,x_5 + 10\,x_{10} + 20\,x_{20} + 50\,x_{50} + 100\,x_{100} = M \qquad \text{(le montant, en centimes)}.$$

**Étape 3. On fabrique le nouveau paiement.**

Voici le tas de pièces qu'on propose :

- $1 \times x_1$ pièces de $100$ centimes,
- $2 \times x_2$ pièces de $50$ centimes,
- $5 \times x_5$ pièces de $20$ centimes,
- $10 \times x_{10}$ pièces de $10$ centimes,
- $20 \times x_{20}$ pièces de $5$ centimes,
- $50 \times x_{50}$ pièces de $2$ centimes,
- $100 \times x_{100}$ pièces de $1$ centime.

Autrement dit : à chaque pièce de valeur $v$ du paiement de départ, on substitue $v$ pièces de la valeur associée $v' = 100/v$.

**Étape 4. On compte le montant.**

Chaque ligne du tas rapporte $v \cdot x_v$ pièces de valeur $100/v$, donc un montant de

$$v\,x_v \times \frac{100}{v} = 100\,x_v \text{ centimes}.$$

Chaque ligne rapporte donc $100 x_v$ centimes, et le montant total vaut

$$100\,(x_1 + x_2 + x_5 + x_{10} + x_{20} + x_{50} + x_{100}) = 100\,N \text{ centimes} = N \text{ euros}.$$

**Étape 5. On compte les pièces.**

Le nombre total de pièces du nouveau tas est

$$1\,x_1 + 2\,x_2 + 5\,x_5 + 10\,x_{10} + 20\,x_{20} + 50\,x_{50} + 100\,x_{100},$$

c'est-à-dire exactement le montant $M$ de la facture de départ.

**Conclusion.** Avec $M$ pièces on paie bien $N$ euros.

## Going further

Vérifions sur l'exemple des indications. On paie $M = 7$ centimes avec $N = 3$ pièces : $5 + 1 + 1$. La recette donne : $5$ pièces de $20$ centimes, et $2 \times 1 = 2$ pièces de $1$ euro. Cela fait $5 + 2 = 7$ pièces, pour un montant de $5 \times 20 + 2 \times 100 = 100 + 200 = 300$ centimes, soit bien $3$ euros.

Ce qui fait marcher l'exercice, c'est uniquement que la liste des valeurs est **stable** par $v \mapsto 100/v$. Si on ajoutait la pièce de $2$ euros (soit $200$ centimes), la recette tomberait en panne, car $100/200$ ne fait pas un nombre entier de centimes. Quelles autres listes de valeurs auraient la même propriété ?
