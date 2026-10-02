---
id: "12873"
title: "Plus de la moitié des parties sont jolies"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, sous-ensembles, progression-arithmetique, complementaire, principe-multiplicatif, proportion, majoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 janvier 2025"
  reference: "2025-10_Sujet-Test-2-2024-2025.pdf, test junior, exercice 3 ; corrigé 2025-10_Corrige-Test-2-2024-2025.pdf (on suit l'idée de la solution alternative n° 1, trois entiers consécutifs, mais avec seulement six blocs, ce qui évite l'inégalité de Bernoulli ; au passage, le corrigé écrit 7⁶⁷³ × 4 au lieu de 7⁶⁷⁴ × 4, sans effet sur la conclusion)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-2-2024-2025.pdf"
---

## Statement

On dit que trois nombres $a < b < c$ sont **en progression arithmétique** si $b - a = c - b$. Par exemple, $3$, $7$, $11$ sont en progression arithmétique.

Un ensemble d'entiers est dit **joli** s'il contient trois éléments en progression arithmétique.

On note $N$ le nombre de parties de l'ensemble $\{1, 2, \ldots, 2024\}$ (en comptant l'ensemble vide et l'ensemble tout entier), et $M$ le nombre de ces parties qui sont jolies. Montrer que

$$\frac{M}{N} \geq \frac{51}{100}.$$

## Hints

1. Combien vaut $N$ ? Pour former une partie, on décide, pour chaque entier de $1$ à $2024$, s'il est dedans ou non.
2. Il est plus facile de compter les parties qui ne sont **pas** jolies, ou du moins d'en majorer le nombre.
3. Trois entiers consécutifs sont en progression arithmétique. Découpez le début de $\{1, \ldots, 2024\}$ en blocs $\{1, 2, 3\}$, $\{4, 5, 6\}$, ...
4. Une partie qui n'est pas jolie ne contient aucun de ces blocs en entier. Combien de choix cela laisse-t-il dans chaque bloc ? Combien de blocs faut-il pour conclure ?

## Solution

### Le nombre de parties

Pour former une partie de $\{1, 2, \ldots, 2024\}$, on décide, pour chacun des $2024$ entiers, s'il est dans la partie ou non. Cela fait $2$ choix pour chaque entier, et les choix sont indépendants, donc

$$N = 2 \times 2 \times \cdots \times 2 = 2^{2024}.$$

Il suffit de montrer que la proportion $(N - M)/N$ des parties qui ne sont **pas** jolies est au plus égale à $49/100$.

### Six blocs de trois entiers consécutifs

On considère les six blocs

$$B_1 = \{1, 2, 3\}, \quad B_2 = \{4, 5, 6\}, \quad B_3 = \{7, 8, 9\}, \quad B_4 = \{10, 11, 12\}, \quad B_5 = \{13, 14, 15\}, \quad B_6 = \{16, 17, 18\}.$$

Chacun est formé de trois entiers consécutifs, qui sont en progression arithmétique (de raison $1$). Une partie qui contient l'un de ces blocs en entier est donc jolie.

Par conséquent, **une partie qui n'est pas jolie ne contient aucun des six blocs en entier.**

### On compte les parties qui ne contiennent aucun bloc en entier

Pour former une telle partie $X$, on choisit :

- pour chaque bloc $B_k$, la partie $X \cap B_k$ des éléments de $B_k$ qui sont dans $X$. Le bloc $B_k$ a $2^3 = 8$ parties, et on doit seulement exclure $B_k$ tout entier : il reste $7$ choix ;
- pour chacun des $2024 - 18 = 2006$ autres entiers, s'il est dans $X$ ou non : $2$ choix.

Ces choix sont indépendants, donc il y a exactement $7^6 \times 2^{2006}$ parties qui ne contiennent aucun bloc en entier. Les parties qui ne sont pas jolies en font partie, donc

$$N - M \leq 7^6 \times 2^{2006}.$$

### La proportion

En divisant par $N = 2^{2024} = 2^{2006} \times 2^{18}$, on obtient

$$\frac{N - M}{N} \leq \frac{7^6}{2^{18}} = \frac{7^6}{8^6} = \frac{117\,649}{262\,144}.$$

Or $\text{0,45} \times 262\,144 = \text{117 964,8}$, qui est plus grand que $117\,649$. Donc

$$\frac{N - M}{N} < \text{0,45}, \qquad \text{puis} \qquad \frac{M}{N} = 1 - \frac{N - M}{N} > \text{0,55}.$$

### Conclusion

On a même $M/N > \text{0,55}$, donc a fortiori $M/N \geq 51/100$.

## Going further

1. En prenant $36$ blocs au lieu de $6$, montrez que $M/N > \text{0,99}$. (Remarquez que $(7/8)^{36} = \left((7/8)^6\right)^6$.)
2. Vérifiez que les parties $\{1, 2, 5, 6\}$ et $\{3, 4, 7, 8\}$ ne sont pas jolies : on peut couper $\{1, \ldots, 8\}$ en deux parties dont aucune n'est jolie. Montrez au contraire que, si l'on coupe $\{1, \ldots, 9\}$ en deux parties, l'une des deux est jolie. Déduisez-en, sans calcul, qu'au moins la moitié des parties de $\{1, \ldots, 2024\}$ sont jolies. (Associez chaque partie à la partie formée des entiers qui ne sont pas dedans.)
