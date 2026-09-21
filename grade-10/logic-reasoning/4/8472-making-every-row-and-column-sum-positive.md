---
id: "8472"
title: "Rendre positives toutes les sommes de lignes et de colonnes"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [monovariant, tableau, changement de signe, arret d un processus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, entraînement de Groupe C"
  reference: "Poly-2021-Valbonne.pdf, Groupe C, entraînement de mi-parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On remplit un tableau de $m$ lignes et $n$ colonnes avec $mn$ nombres réels quelconques.

Aurélien a le droit de choisir une ligne ou une colonne, et de changer le signe de **tous** les nombres qu'elle contient. Il peut recommencer autant de fois qu'il le souhaite, sur les lignes et les colonnes de son choix.

Montrer qu'Aurélien peut arriver à une situation où la somme des nombres de chaque ligne et la somme des nombres de chaque colonne sont toutes positives ou nulles.

## Hints

1. Essaie sur un petit tableau, par exemple $2 \times 2$ avec les nombres $1$, $-5$, $2$, $3$. Quelle rangée as-tu envie de retourner en premier ?
2. Adopte la stratégie la plus naturelle : tant qu'il existe une rangée (ligne ou colonne) dont la somme est strictement négative, la retourner.
3. Il faut montrer que cette stratégie s'arrête. Cherche une quantité attachée à tout le tableau, qui augmente strictement à chaque retournement.
4. Que devient la somme de **tous** les nombres du tableau quand on retourne une rangée dont la somme vaut $s$ ?
5. Une quantité qui augmente strictement ne peut pas augmenter indéfiniment si elle ne prend qu'un nombre fini de valeurs. Combien de tableaux différents Aurélien peut-il atteindre ?

## Solution

### La stratégie

Elle tient en une phrase :

> **Tant qu'il existe une ligne ou une colonne dont la somme est strictement négative, la retourner.**

Il reste à montrer deux choses : que ce procédé s'arrête, et qu'à l'arrêt la conclusion voulue est atteinte.

### Étape 1. Ce qu'un retournement fait à la somme totale

Notons $S$ la somme des $mn$ nombres du tableau.

Supposons qu'Aurélien retourne une rangée dont la somme vaut $s$. Les nombres de cette rangée changent tous de signe, donc la somme de cette rangée devient $-s$. Les nombres qui ne sont pas dans cette rangée ne bougent pas.

La somme totale $S$ perd donc $s$ et gagne $-s$ :

$$S \longrightarrow S - 2s.$$

Or Aurélien ne retourne que des rangées dont la somme $s$ est **strictement négative**. Donc $-2s > 0$, et

> **à chaque retournement, la somme totale $S$ augmente strictement.**

### Étape 2. Le procédé s'arrête

Combien de tableaux différents Aurélien peut-il atteindre ? Chaque case porte toujours, au signe près, le même nombre qu'au départ : seul son signe peut changer. Il y a donc au plus $2^{mn}$ tableaux atteignables, ce qui est un nombre **fini**.

En particulier, la somme totale $S$ ne peut prendre qu'un nombre fini de valeurs.

Or $S$ augmente strictement à chaque retournement. Si Aurélien pouvait jouer indéfiniment, il obtiendrait une suite de valeurs de $S$ strictement croissante et infinie, toutes prises dans un ensemble fini : impossible, puisque deux termes d'une suite strictement croissante sont toujours différents.

Donc le procédé s'arrête au bout d'un nombre fini de retournements.

### Étape 3. À l'arrêt, c'est gagné

Le procédé ne s'arrête que pour une seule raison : il n'existe plus aucune ligne ni aucune colonne dont la somme soit strictement négative.

Autrement dit, à l'arrêt, **toutes** les sommes de lignes et **toutes** les sommes de colonnes sont positives ou nulles. C'est exactement ce qu'il fallait obtenir.

$$\boxed{\text{Aurélien y arrive toujours.}}$$

## Going further

La démonstration est courte, mais elle contient les deux ingrédients d'un argument par **monovariant** :

- une quantité qui évolue toujours dans le même sens (ici $S$, qui ne fait qu'augmenter) ;
- une raison pour laquelle elle ne peut pas le faire éternellement (ici, elle ne prend qu'un nombre fini de valeurs).

Sans le second ingrédient, l'argument ne prouve rien : une quantité peut très bien augmenter indéfiniment. C'est le caractère fini de l'ensemble des tableaux atteignables qui ferme la démonstration.

On notera que la solution ne dit rien du **nombre** de retournements nécessaires, ni de l'ordre dans lequel les faire. Peu importe : Aurélien retourne n'importe quelle rangée de somme négative, dans n'importe quel ordre, et il finit toujours par s'arrêter au bon endroit.

Un détail mérite attention : on obtient des sommes **positives ou nulles**, pas strictement positives. Une somme nulle est possible, par exemple sur une ligne contenant $1$ et $-1$ ; la retourner ne changerait rien, et le procédé la laisse donc tranquille.
