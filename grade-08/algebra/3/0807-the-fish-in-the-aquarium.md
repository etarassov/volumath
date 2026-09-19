---
id: "0807"
title: "Les poissons de l'aquarium"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [fractions, mise-en-equation, comparaison]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 7, d'après Mathematical Olympiads for Middle School (Moscou), 2015"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Dans un aquarium il y a des poissons de trois couleurs : rouge, jaune et argent.

Si un chat mange tous les poissons jaunes, le nombre de poissons restants sera **un de moins** que les deux tiers du nombre initial.

Si le chat mange tous les poissons rouges, il en restera **quatre de plus** que les deux tiers du nombre initial.

Quels poissons sont les plus nombreux : les jaunes ou les argentés, et de combien ?

## Hints

1. Comme on parle sans arrêt des deux tiers du nombre de poissons, ce nombre est un multiple de $3$. Appelle $t$ son tiers : il y a donc $3t$ poissons en tout, et les deux tiers font $2t$.
2. Si le chat mange tous les jaunes, le nombre de poissons restants est $3t$ moins le nombre de jaunes. Écris l'égalité donnée par l'énoncé.
3. De $3t - (\text{jaunes}) = 2t - 1$, tire le nombre de poissons jaunes.
4. Fais la même chose pour les rouges, puis obtiens le nombre d'argentés en retranchant les jaunes et les rouges du total.
5. Ne cherche pas à trouver $t$ : l'énoncé ne demande qu'une comparaison, et $t$ va disparaître tout seul.

## Solution

**Réponse : les poissons argentés sont les plus nombreux, il y en a exactement $2$ de plus que de jaunes.**

**Étape 1. Une bonne inconnue.**

Les deux tiers du nombre de poissons doivent être un nombre entier de poissons, donc le nombre total est un multiple de $3$. Appelons $t$ le tiers de ce nombre :

- nombre total de poissons : $3t$ ;
- les deux tiers du nombre initial : $2t$.

**Étape 2. Les poissons jaunes.**

Si le chat mange tous les jaunes, il reste $3t - (\text{nombre de jaunes})$ poissons, et l'énoncé dit que ce nombre vaut $2t - 1$ :
$$3t - (\text{jaunes}) = 2t - 1.$$

Donc
$$\text{jaunes} = 3t - (2t - 1) = t + 1.$$

**Étape 3. Les poissons rouges.**

De la même façon, si le chat mange tous les rouges, il reste $2t + 4$ poissons :
$$3t - (\text{rouges}) = 2t + 4, \qquad \text{donc} \qquad \text{rouges} = t - 4.$$

**Étape 4. Les poissons argentés.**

Les argentés sont tous les autres :
$$\text{argentés} = 3t - (t+1) - (t-4) = 3t - t - 1 - t + 4 = t + 3.$$

**Étape 5. Comparer.**

$$\text{argentés} - \text{jaunes} = (t + 3) - (t + 1) = 2.$$

Le nombre $t$ disparaît : la comparaison ne dépend pas du nombre total de poissons.

**Vérification.** Prenons par exemple $t = 10$, donc $30$ poissons : $11$ jaunes, $6$ rouges et $13$ argentés, ce qui fait bien $30$.

- Sans les jaunes, il reste $19$ poissons, et les deux tiers de $30$ font $20$ : c'est bien un de moins. ✓
- Sans les rouges, il reste $24$ poissons, soit quatre de plus que $20$. ✓
- Et $13 - 11 = 2$. ✓

**Conclusion.** Il y a $2$ poissons argentés de plus que de poissons jaunes.

## Going further

1. L'énoncé ne permet pas de connaître le nombre total de poissons. Quelles valeurs de $t$ sont malgré tout possibles, si l'on veut que chaque couleur soit présente ?
2. Avec les mêmes données, combien y a-t-il de poissons argentés de plus que de rouges ?
