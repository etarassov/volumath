---
id: "7046"
title: "Ne jamais laisser un seul jeton"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [jeu, strategie gagnante, positions perdantes, puissances de deux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Combinatoire », TD stratégies, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Il y a $1999$ jetons sur la table.

Chacun à leur tour, Albert puis Barbara enlèvent des jetons. Un joueur doit en enlever **au
moins un**, et **au plus la moitié** de ceux qui sont sur la table au moment où il joue.

Le joueur qui laisse **exactement un** jeton sur la table a perdu.

Albert commence. Lequel des deux peut être sûr de gagner, et comment doit-il jouer ?

## Hints

1. Comme toujours, commence petit. Avec $2$ jetons sur la table et à toi de jouer, que
   peux-tu faire ? Avec $3$ ? Avec $4$ ? Avec $5$ ?
2. Appelle une quantité **perdante** quand le joueur dont c'est le tour perd à coup sûr.
   Trouve les premières : $2$, puis…
3. Tu devrais trouver $2$, $5$, $11$, $23$. Que vaut le double du précédent, plus un ?
4. Montre la règle générale : si $k$ est perdante, alors $k+1, k+2, \ldots, 2k$ sont
   gagnantes, et $2k+1$ est perdante.
5. Écris la liste des positions perdantes jusqu'à dépasser $1999$. Où se situe $1999$ ?

## Solution

**Le vocabulaire.**

Appelons **perdante** une quantité de jetons telle que le joueur dont c'est le tour perde à
coup sûr, face à un adversaire qui joue bien. **Gagnante** dans le cas contraire.

**Les premières positions.**

$1$ **est gagnante** : s'il reste un seul jeton quand c'est à toi de jouer, c'est que
l'adversaire vient de le laisser, donc il a perdu.

$2$ **est perdante** : la moitié de $2$ vaut $1$, donc tu n'as pas le choix, tu enlèves un
jeton et tu en laisses un. Tu perds.

$3$ **et** $4$ **sont gagnantes** : depuis $3$, tu peux enlever $1$ et laisser $2$ ; depuis
$4$, tu peux enlever $2$ et laisser $2$. Dans les deux cas, l'adversaire hérite de la
position perdante $2$.

$5$ **est perdante** : la moitié de $5$ vaut $\text{2,5}$, donc tu enlèves $1$ ou $2$, et tu
laisses $4$ ou $3$, deux positions gagnantes pour l'adversaire.

**La règle générale.**

Supposons que $k$ soit perdante. Montrons deux choses.

*Les positions $k+1, k+2, \ldots, 2k$ sont gagnantes.* Soit $m$ avec $k < m \leq 2k$. Le
joueur enlève $m - k$ jetons, ce qui est permis : d'une part $m - k \geq 1$, d'autre part
$$m - k \leq \frac m2 \iff \frac m2 \leq k \iff m \leq 2k ,$$
ce qui est vrai. Il laisse donc $k$ jetons, une position perdante pour l'adversaire.

*La position $2k + 1$ est perdante.* Le joueur peut enlever de $1$ à
$\left\lfloor \dfrac{2k+1}{2} \right\rfloor = k$ jetons. Il laisse donc entre $2k+1-k = k+1$
et $2k+1-1 = 2k$ jetons, c'est-à-dire l'une des positions $k+1, \ldots, 2k$, toutes
gagnantes. Il perd.

**La liste des positions perdantes.**

On part de $2$ et on applique la règle « la suivante est le double plus un » :
$$2, \quad 5, \quad 11, \quad 23, \quad 47, \quad 95, \quad 191, \quad 383, \quad 767,
\quad 1535, \quad 3071, \quad \ldots$$

On reconnaît la formule
$$3 \times 2^n - 1 : \qquad 3 \times 1 - 1 = 2, \quad 3 \times 2 - 1 = 5,
\quad 3 \times 4 - 1 = 11, \quad 3 \times 8 - 1 = 23, \quad \ldots$$

**Conclusion.**

$1999$ n'est pas dans cette liste : il est compris strictement entre $1535$ et $3071$. C'est
donc une position **gagnante**, et **Albert**, qui commence, gagne.

Sa stratégie : à son premier coup, il enlève
$$1999 - 1535 = 464 \text{ jetons},$$
ce qui est permis puisque $464 \leq \dfrac{1999}{2}$. Il laisse $1535$ jetons, position
perdante.

Ensuite, à chaque tour, Barbara laisse une quantité $m$ comprise entre $k+1$ et $2k$ pour un
certain $k$ perdant, et Albert enlève $m - k$ jetons pour la ramener à $k$. De proche en
proche, Barbara reçoit $1535$, puis $767$, puis $383$, $191$, $95$, $47$, $23$, $11$, $5$,
$2$, et enfin, depuis $2$, elle est obligée de laisser un seul jeton. Elle perd.

$$\boxed{\text{Albert gagne, en laissant } 1535 \text{ jetons à son premier coup.}}$$

## Going further

Le fait que les positions perdantes soient les $3 \times 2^n - 1$ se démontre par récurrence :
c'est vrai pour $n = 0$ puisque $2$ est perdante, et si $k = 3 \times 2^n - 1$ est perdante,
alors la suivante est
$$2k + 1 = 2(3 \times 2^n - 1) + 1 = 3 \times 2^{n+1} - 1 .$$

Essaie cette variante, avec la même contrainte « au plus la moitié » : le joueur qui **ne
peut plus jouer** perd. Avec un seul jeton sur la table, on ne peut rien enlever, puisque la
moitié de $1$ est inférieure à $1$ : celui à qui c'est le tour est donc bloqué.

Refais l'analyse. Tu devrais trouver que les positions perdantes sont cette fois
$$1, \quad 3, \quad 7, \quad 15, \quad 31, \quad 63, \quad \ldots$$
c'est-à-dire les nombres de la forme $2^n - 1$. Un tout petit changement de règle, et la
réponse bascule.
