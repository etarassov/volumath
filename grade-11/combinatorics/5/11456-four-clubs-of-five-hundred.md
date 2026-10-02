---
id: "11456"
title: "Quatre clubs de 500 membres"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [ensembles, maximum, majoration, construction, double-comptage, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Juniors, exercice 9 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf (le cas |W| > 0 du corrigé applique son lemme sans vérifier son hypothèse ; la majoration est refaite ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

Un lycée compte $N$ élèves et quatre clubs, $A_1$, $A_2$, $A_3$ et $A_4$. Chaque club a exactement
$500$ membres, et un élève peut faire partie de plusieurs clubs. On sait que deux élèves quelconques
sont toujours membres d'au moins un même club, et que chaque élève est membre d'au moins un club.

Quelle est la plus grande valeur possible de $N$ ?

## Hints

1. Si un élève n'est membre que d'un seul club, que peut-on dire de ce club ? Déduis-en que, si
   $N > 500$, chaque élève est membre d'au moins deux clubs.
2. Range les élèves selon les clubs $A_1$ et $A_2$ : $Z$ pour ceux qui sont dans les deux, $X$ pour
   ceux qui ne sont que dans $A_1$, $Y$ pour ceux qui ne sont que dans $A_2$, et $W$ pour ceux qui ne
   sont dans aucun des deux. Exprime $N$ avec $z$, le nombre d'élèves de $Z$, et $w$, celui de $W$.
3. Un élève de $X$ et un élève de $Y$ ne sont ensemble ni dans $A_1$, ni dans $A_2$. Montre que l'un des
   clubs $A_3$, $A_4$ contient tous les élèves de $X$ et de $Y$, ou bien que tous les élèves de $X$
   (ou tous ceux de $Y$) sont à la fois dans $A_3$ et dans $A_4$.
4. Dans chaque cas, compte les places des clubs $A_3$ et $A_4$ : il y en a $1000$ en tout.
5. Pour l'exemple, essaie $z = 167$ et $W$ vide.

## Solution

La réponse est $N = 833$.

**Un exemple avec $833$ élèves.** Formons trois groupes : $Z$ de $167$ élèves, $X$ de $333$ élèves et
$Y$ de $333$ élèves, soit $833$ élèves en tout. Choisissons un élève $y_0$ de $Y$ et partageons les
$332$ autres élèves de $Y$ en deux groupes $Y'$ et $Y''$ de $166$ élèves. On pose

- $A_1 = Z \cup X$, qui a $167 + 333 = 500$ membres ;
- $A_2 = Z \cup Y$, qui a $167 + 333 = 500$ membres ;
- $A_3 = X \cup \{y_0\} \cup Y'$, qui a $333 + 1 + 166 = 500$ membres ;
- $A_4 = X \cup \{y_0\} \cup Y''$, qui a $333 + 1 + 166 = 500$ membres.

Deux élèves de $Z \cup X$ sont ensemble dans $A_1$. Deux élèves de $Z \cup Y$ sont ensemble dans $A_2$.
Il reste un élève de $X$ avec un élève de $Y$ : ils sont ensemble dans $A_3$ si ce dernier est $y_0$
ou dans $Y'$, et dans $A_4$ s'il est dans $Y''$. Toutes les conditions sont respectées.

**Il ne peut pas y avoir plus de $833$ élèves.** Supposons $N > 500$ (sinon il n'y a rien à montrer).

*Chaque élève est dans au moins deux clubs.* Si un élève $e$ n'était membre que du club $A_1$, par
exemple, alors chaque autre élève devrait être avec $e$ dans un club, donc dans $A_1$. Le club $A_1$
contiendrait tout le monde, et on aurait $N \leqslant 500$.

*Quatre groupes.* Notons $Z$ les élèves membres de $A_1$ et de $A_2$, $X$ ceux qui sont dans $A_1$ mais
pas dans $A_2$, $Y$ ceux qui sont dans $A_2$ mais pas dans $A_1$, et $W$ ceux qui ne sont ni dans $A_1$
ni dans $A_2$. Notons $z$ et $w$ les nombres d'élèves de $Z$ et de $W$. Comme $A_1$ et $A_2$ ont
$500$ membres, $X$ et $Y$ ont tous les deux $500 - z$ élèves, et

$$N = z + 2(500 - z) + w = 1000 - z + w. \qquad (1)$$

Voici trois remarques.

- Un élève de $W$ est dans au moins deux clubs, mais ni dans $A_1$ ni dans $A_2$ : il est donc dans
  $A_3$ **et** dans $A_4$.
- Si $W$ n'est pas vide, chaque élève de $Z$ doit être dans un même club qu'un élève de $W$, et ce club
  ne peut être que $A_3$ ou $A_4$. Donc chaque élève de $Z$ est dans $A_3$ ou dans $A_4$.
- Un élève de $X$ et un élève de $Y$ ne sont ensemble ni dans $A_1$ (celui de $Y$ n'y est pas), ni dans
  $A_2$ (celui de $X$ n'y est pas). Ils sont donc ensemble dans $A_3$ ou dans $A_4$.

*Le cas où $X$ et $Y$ sont vides.* Alors $z = 500$ et $N = 500 + w$. Si $w > 0$, les clubs $A_3$ et
$A_4$ contiennent chacun tout $W$, et chaque élève de $Z$ est dans l'un d'eux, donc
$1000 \geqslant 2w + 500$, soit $w \leqslant 250$ et $N \leqslant 750$.

*Le lemme.* Supposons maintenant $X$ et $Y$ non vides. Alors l'une de ces situations se produit :

- (L1) l'un des clubs $A_3$ ou $A_4$ contient tous les élèves de $X$ et de $Y$ ;
- (L2) tous les élèves de $X$, ou tous ceux de $Y$, sont à la fois dans $A_3$ et dans $A_4$.

En effet, supposons que $A_4$ ne contienne pas tous les élèves de $X$ et de $Y$, et prenons un élève
$e$ qui manque à $A_4$, disons dans $X$ (s'il est dans $Y$, on échange les rôles de $X$ et de $Y$).
Chaque élève de $Y$ doit être avec $e$ dans $A_3$ ou $A_4$ ; comme $e$ n'est pas dans $A_4$, c'est
$A_3$. Donc tout $Y$ est dans $A_3$. Si $A_3$ contient aussi tout $X$, on est dans le cas (L1). Sinon,
un élève $f$ de $X$ manque à $A_3$, et le même raisonnement montre que tout $Y$ est dans $A_4$. Alors
tout $Y$ est à la fois dans $A_3$ et dans $A_4$ : c'est le cas (L2).

De plus, chaque élève de $X$ ou de $Y$ est dans $A_3$ ou dans $A_4$, puisqu'il doit y retrouver
un élève de l'autre groupe.

*Cas (L1) : par exemple, $A_3$ contient $X$ et $Y$.* Il contient aussi $W$, donc

$$500 \geqslant 2(500 - z) + w, \qquad \text{d'où} \qquad z \geqslant 250 + \frac{w}{2}.$$

Avec $(1)$, on obtient $N \leqslant 750 + \frac{w}{2}$. Si $w = 0$, alors $N \leqslant 750$. Si
$w > 0$, chaque élève de $Z$ est dans $A_3$ ou $A_4$. Comptons les places des deux clubs : $A_3$
contient $X$, $Y$ et $W$, $A_4$ contient $W$, et chaque élève de $Z$ occupe au moins une place. Donc

$$1000 \geqslant 2(500 - z) + 2w + z = N + w, \qquad \text{d'où} \qquad w \leqslant 1000 - N.$$

En reportant dans $N \leqslant 750 + \frac{w}{2}$, on trouve $2N \leqslant 1500 + 1000 - N$, soit
$3N \leqslant 2500$, et donc $N \leqslant 833$ puisque $N$ est entier.

*Cas (L2) : par exemple, tout $X$ est dans $A_3$ et dans $A_4$.* Chaque élève de $X$ occupe deux
places dans ces clubs, chaque élève de $Y$ au moins une, et chaque élève de $W$ deux.

- Si $w = 0$ : $1000 \geqslant 2(500 - z) + (500 - z)$, donc $3z \geqslant 500$, soit $z \geqslant 167$
  puisque $z$ est entier. Avec $(1)$, $N = 1000 - z \leqslant 833$.
- Si $w > 0$ : les élèves de $Z$ occupent aussi au moins une place chacun, donc
  $1000 \geqslant 3(500 - z) + 2w + z$, soit $z \geqslant 250 + w$. Avec $(1)$, $N \leqslant 750$.

Dans tous les cas, $N \leqslant 833$.

**Conclusion.** Le lycée compte au plus $833$ élèves, et l'exemple montre que $833$ est possible.
La plus grande valeur de $N$ est $833$.

## Going further

Avec quatre clubs de $s$ membres au lieu de $500$, le même raisonnement donne au plus
$\frac{5s}{3}$ élèves, et l'exemple s'adapte en prenant pour $z$ le plus petit entier supérieur ou
égal à $\frac{s}{3}$. Pour $s = 3$, par exemple, on trouve $5$ élèves : retrouve un exemple à la main.
(Une solution : $Z = \{1\}$, $X = \{2, 3\}$, $Y = \{4, 5\}$, $A_1 = \{1, 2, 3\}$, $A_2 = \{1, 4, 5\}$,
$A_3 = \{2, 3, 4\}$, $A_4 = \{2, 3, 5\}$.)
