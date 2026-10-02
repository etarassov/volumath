---
id: "8709"
title: "Cent opérations pour peindre un échiquier"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [grille, minimum, comptage, construction, echiquier]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices lycéens, exercice 13"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

On dispose d'une grille $100 \times 100$ dont toutes les cases sont blanches.

Une **opération** consiste à choisir une ligne ou une colonne, puis à changer la couleur de $99$ des $100$ cases de cette ligne ou de cette colonne (on choisit librement laquelle des $100$ cases on laisse tranquille). Changer la couleur, c'est faire passer une case blanche au noir, ou une case noire au blanc.

On veut arriver à un **coloriage d'échiquier** : un coloriage où deux cases voisines par un côté n'ont jamais la même couleur.

Quel est le plus petit nombre d'opérations nécessaire ?

## Hints

1. Comme toujours quand on demande un minimum, il y a deux choses à faire, et elles sont indépendantes : trouver une façon d'y arriver en un certain nombre d'opérations, et prouver qu'on ne peut pas faire moins.
2. Pour la borne inférieure, compte les cases qui doivent changer de couleur. Combien y a-t-il de cases noires dans l'échiquier final ?
3. Combien de cases noires (de l'échiquier final) une seule opération peut-elle au maximum faire changer de couleur ? Compte les cases noires de l'échiquier final qui se trouvent sur une même ligne.
4. Pour la construction, $100 = 50 + 50$ : essaie $50$ opérations sur des colonnes, puis $50$ opérations sur des lignes. La case laissée tranquille à chaque fois est celle de la grande diagonale.

## Solution

**Réponse : $100$ opérations, et c'est le minimum.**

Numérotons les lignes de $1$ à $100$ de haut en bas et les colonnes de $1$ à $100$ de gauche à droite. La case de la ligne $i$ et de la colonne $j$ est notée $(i,j)$.

Dans un coloriage d'échiquier, deux cases voisines ont des couleurs différentes, donc la couleur de $(i,j)$ ne dépend que de la parité de $i+j$. Fixons celui des deux échiquiers où

$$(i,j) \text{ est noire} \iff i+j \text{ est impair} .$$

(Le raisonnement est identique pour l'autre.)

### Partie 1 : on ne peut pas faire moins de 100 opérations

**Combien de cases noires dans l'échiquier final ?**

Sur chaque ligne, les cases alternent noir et blanc, il y en a $100$, donc exactement $50$ sont noires. Avec $100$ lignes, cela fait

$$100 \times 50 = 5000 \text{ cases noires.}$$

De la même manière, chaque **colonne** contient exactement $50$ cases noires.

**Chaque case noire doit être touchée au moins une fois.**

Au départ toutes les cases sont blanches. Une case qui doit finir noire a donc forcément changé de couleur à un moment : elle a été touchée par au moins une opération.

**Une opération touche au plus 50 de ces cases noires.**

Une opération porte sur une ligne, ou sur une colonne. Elle change la couleur de $99$ cases de cette ligne (ou colonne). Or cette ligne (ou colonne) ne contient que $50$ cases destinées à être noires. L'opération en touche donc **au plus $50$**.

**On conclut par un comptage.**

Il y a $5000$ cases à faire changer de couleur, et chaque opération en traite au plus $50$. Il faut donc au moins

$$\frac{5000}{50} = 100 \quad \text{opérations.}$$

### Partie 2 : 100 opérations suffisent

Appelons **diagonale** l'ensemble des cases $(i,i)$, de la case en haut à gauche à la case en bas à droite. La case laissée tranquille sera toujours la case de la diagonale.

**Les 50 premières opérations : les colonnes impaires.**

Pour chaque colonne $j$ **impaire** (il y en a $50$ : $j = 1, 3, 5, \ldots, 99$), on effectue une opération sur cette colonne en laissant tranquille la case $(j,j)$ de la diagonale.

Après ces $50$ opérations :

- une case $(i,j)$ avec $j$ impair et $i \neq j$ est devenue **noire** ;
- toutes les autres cases sont restées **blanches**, y compris les cases $(j,j)$ de la diagonale.

**Les 50 opérations suivantes : les lignes impaires.**

Pour chaque ligne $i$ **impaire** (il y en a $50$), on effectue une opération sur cette ligne en laissant tranquille la case $(i,i)$.

Regardons ce que devient une ligne $i$ impaire. Juste avant, dans cette ligne :

- les cases $(i,j)$ avec $j$ impair et $j \neq i$ sont noires ;
- la case $(i,i)$ est blanche ;
- les cases $(i,j)$ avec $j$ pair sont blanches.

L'opération change la couleur de tout sauf de $(i,i)$. Donc après :

- les cases $(i,j)$ avec $j$ impair, $j \neq i$, redeviennent **blanches** ;
- la case $(i,i)$ reste **blanche** (et $i+i$ est pair, elle doit bien être blanche) ;
- les cases $(i,j)$ avec $j$ pair deviennent **noires**.

Dans une ligne $i$ impaire, une case est donc noire exactement quand $j$ est pair, c'est-à-dire exactement quand $i+j$ est impair. C'est ce qu'on voulait.

Les lignes $i$ **paires** n'ont pas été touchées par la seconde série. Il y reste l'état laissé par la première série : la case $(i,j)$ est noire exactement quand $j$ est impair (la condition « $i \neq j$ » est automatique puisque $i$ est pair et $j$ impair). Et comme $i$ est pair, « $j$ impair » signifie « $i+j$ impair ». C'est encore ce qu'on voulait.

Toutes les lignes sont donc correctes : on a bien obtenu l'échiquier, en

$$50 + 50 = 100 \quad \text{opérations.}$$

### Conclusion

Le plus petit nombre d'opérations est $\boxed{100}$.

## Going further

1. **Une autre démonstration de la borne inférieure.** Supposons par l'absurde qu'on y arrive en au plus $99$ opérations. Alors au moins une ligne $r$ n'a subi aucune opération, et au moins une colonne $c$ non plus. La case $(r,c)$ n'a donc jamais été touchée : elle est restée blanche. Les $50$ cases noires de la ligne $r$ ont chacune dû être traitées par une opération sur **leur propre colonne**, ce qui fait $50$ opérations sur des colonnes toutes différentes ; de même les $50$ cases noires de la colonne $c$ exigent $50$ opérations sur des lignes toutes différentes. Cela fait $100$ opérations, contradiction. Écris cette démonstration proprement.

2. Que devient la réponse si la grille est $n \times n$ avec $n$ pair et que l'opération change $n-1$ cases ? Et si $n$ est impair ?

3. Et si l'opération changeait la couleur des $100$ cases d'une ligne ou d'une colonne, au lieu de $99$ ? Pourrait-on encore obtenir un échiquier ?
