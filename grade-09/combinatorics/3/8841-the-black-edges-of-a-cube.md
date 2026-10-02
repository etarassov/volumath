---
id: "8841"
title: "Les arêtes noires du cube"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [minimum, double-comptage, cube, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 13, p. 117"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On colorie chacune des $12$ arêtes d'un cube, soit en rouge, soit en noir, de façon que **chaque face du cube possède au moins une arête noire**.

Quel est le nombre minimal d'arêtes noires ?

## Hints

1. Comme toujours pour un minimum : il faut une borne (« il en faut au moins tant ») et une construction (« et ce nombre suffit »).
2. Pour la borne, compte les couples (face, arête noire de cette face). Chaque face en fournit au moins un. Et chaque arête noire, combien en fournit-elle ?
3. Une arête d'un cube appartient à exactement deux faces.
4. Pour la construction, essaie de choisir trois arêtes « éloignées les unes des autres », dans trois directions différentes.

## Solution

### Partie 1 : il faut au moins $3$ arêtes noires

Comptons de deux façons le nombre de couples
$$(\text{face } F, \; \text{arête noire } a \text{ de la face } F).$$

- **Par les faces.** Le cube a $6$ faces, et chacune possède au moins une arête noire. Il y a donc au moins $6$ tels couples.
- **Par les arêtes.** Chaque arête du cube appartient à exactement $2$ faces. Une arête noire fournit donc exactement $2$ couples. Si $N$ désigne le nombre d'arêtes noires, il y a exactement $2N$ couples.

En rassemblant :
$$2N \geqslant 6, \qquad \text{donc} \qquad N \geqslant 3 .$$

### Partie 2 : trois arêtes noires suffisent

Repérons les sommets du cube par leurs coordonnées $(a, b, c)$ avec $a, b, c \in \{0, 1\}$. Colorions en noir les trois arêtes suivantes :

- $e_1$, de $(0,0,0)$ à $(1,0,0)$ ;
- $e_2$, de $(1,1,0)$ à $(1,1,1)$ ;
- $e_3$, de $(0,0,1)$ à $(0,1,1)$.

Vérifions que chaque face en contient une. Les six faces sont données par $a=0$, $a=1$, $b=0$, $b=1$, $c=0$, $c=1$.

| Face | Arête noire qu'elle contient |
|---|---|
| $a = 0$ | $e_3$ (ses deux extrémités ont $a = 0$) |
| $a = 1$ | $e_2$ (ses deux extrémités ont $a = 1$) |
| $b = 0$ | $e_1$ (ses deux extrémités ont $b = 0$) |
| $b = 1$ | $e_2$ (ses deux extrémités ont $b = 1$) |
| $c = 0$ | $e_1$ (ses deux extrémités ont $c = 0$) |
| $c = 1$ | $e_3$ (ses deux extrémités ont $c = 1$) |

Chacune des six faces contient bien une arête noire, et il n'y a que trois arêtes noires.

### Conclusion

$$\boxed{\text{Le nombre minimal d'arêtes noires est } 3 .}$$

### Le mécanisme à retenir

Le comptage double (« je compte la même chose de deux façons ») donne la borne sans aucun effort de construction. C'est un réflexe très général : chaque fois qu'un objet doit « couvrir » plusieurs autres, comptez les couples.

## Going further

1. Même question avec un **tétraèdre** régulier : combien d'arêtes noires faut-il au minimum pour que chacune des $4$ faces en contienne une ?
2. Même question avec un **octaèdre** régulier ($12$ arêtes, $8$ faces).
