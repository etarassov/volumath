---
id: "8188"
title: "Combien de lampes Alice doit-elle allumer ?"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [invariant, parite, denombrement, double comptage, lampes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, test final du Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 5 « Exercices d'entraînement », « Entraînement final », exercice 4. L'argument de recouvrement imprimé (« une case est commune à au plus n−2 quadruplets ») est faux pour n = 3, où une case en appartient à 2 ; la réponse 2n−4 reste correcte et le cas n = 3 est traité à part ci-dessous."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Chaque case d'un damier $n \times n$, avec $n \geq 3$, porte une lampe.

Au départ, les lampes de **deux coins opposés** sont allumées : celle de la case $(1,1)$ en
haut à gauche et celle de la case $(n,n)$ en bas à droite. Toutes les autres sont éteintes. On
note $(i,j)$ la case de la ligne $i$ et de la colonne $j$.

Une **opération** consiste à choisir une ligne entière ou une colonne entière et à changer
l'état de toutes ses lampes : celles qui étaient allumées s'éteignent, celles qui étaient
éteintes s'allument.

Avant de commencer les opérations, Alice a le droit d'allumer individuellement autant de
lampes qu'elle veut. Elle ne peut qu'**allumer**, jamais éteindre. Elle souhaite qu'ensuite une
suite finie d'opérations éteigne toutes les lampes du damier.

Combien de lampes doit-elle allumer au minimum ?

## Hints

1. Cherche d'abord une quantité que les opérations ne changent jamais. Regarde quatre cases
   formant les coins d'un rectangle.
2. Une ligne rencontre ces quatre coins en $0$ ou en $2$ cases. Une colonne aussi. Qu'en
   déduis-tu sur la parité du nombre de lampes allumées parmi les quatre ?
3. Pour que tout puisse s'éteindre, il faut donc que **chaque** quadruplet de coins de
   rectangle contienne, au départ, un nombre pair de lampes allumées.
4. Repère les quadruplets qui, au départ, en contiennent exactement une. Il y en a beaucoup.
   Alice doit allumer au moins une lampe dans chacun.
5. Compte de deux façons les couples (quadruplet, lampe allumée par Alice qui s'y trouve).
   Combien de quadruplets une même case peut-elle servir ?
6. Pour la construction, essaie d'allumer toute la ligne du haut et toute la colonne de droite,
   sauf le coin commun.

## Solution

**Réponse : $2n - 4$ lampes.**

**L'invariant : les coins d'un rectangle.**

Choisissons deux lignes $i \neq i'$ et deux colonnes $j \neq j'$. Les quatre cases
$$(i,j), \quad (i,j'), \quad (i',j), \quad (i',j')$$
forment les coins d'un rectangle. Appelons cela un *quadruplet*.

Une opération sur une ligne touche $0$ ou $2$ de ces quatre cases : $2$ si c'est la ligne $i$
ou la ligne $i'$, et $0$ sinon. Une opération sur une colonne, de même, en touche $0$ ou $2$.

Changer l'état de $0$ ou de $2$ lampes ne change pas la parité du nombre de lampes allumées
parmi les quatre. Donc :

> **pour tout quadruplet, la parité du nombre de lampes allumées est la même avant et après
> n'importe quelle suite d'opérations.**

Quand tout le damier est éteint, chaque quadruplet contient $0$ lampe allumée, un nombre pair.
Donc, pour qu'Alice puisse réussir, **chaque quadruplet doit contenir un nombre pair de lampes
allumées au moment où elle lance les opérations.**

**Les quadruplets gênants.**

Pour $1 < a < n$ et $1 < b < n$, considérons les deux quadruplets

$$Q(a,b) = \{(1,1),\ (1,b),\ (a,1),\ (a,b)\}, \qquad R(a,b) = \{(n,n),\ (n,b),\ (a,n),\ (a,b)\}.$$

Le premier est formé des lignes $1$ et $a$ et des colonnes $1$ et $b$ ; le second des lignes
$a$ et $n$ et des colonnes $b$ et $n$. Ce sont bien des quadruplets, car $1 \neq a$,
$1 \neq b$, $a \neq n$, $b \neq n$.

Au départ, les seules lampes allumées sont celles de $(1,1)$ et de $(n,n)$. Comme $a$ et $b$
sont strictement compris entre $1$ et $n$, aucune des cases $(1,b)$, $(a,1)$, $(a,b)$,
$(n,b)$, $(a,n)$ n'est l'un de ces deux coins. Donc :

- $Q(a,b)$ contient exactement une lampe allumée, celle de $(1,1)$ ;
- $R(a,b)$ contient exactement une lampe allumée, celle de $(n,n)$.

Un nombre **impair** dans chaque cas. Alice doit donc changer cette parité, et pour cela
allumer un nombre impair de cases dans chacun de ces quadruplets : **au moins une**.

Il y a $(n-2)$ choix pour $a$ et $(n-2)$ pour $b$, donc $(n-2)^2$ quadruplets $Q$ et
$(n-2)^2$ quadruplets $R$, soit
$$2(n-2)^2 \quad \text{quadruplets à couvrir.}$$

**Combien de ces quadruplets une seule case peut-elle couvrir ?**

Alice n'allume jamais $(1,1)$ ni $(n,n)$, qui sont déjà allumées. Passons en revue les autres
cases, en cherchant dans combien de $Q(a,b)$ et de $R(a,b)$ elles apparaissent.

| case allumée par Alice | dans combien de $Q$ | dans combien de $R$ | total |
|---|---|---|---|
| $(1,b)$ avec $1<b<n$ | $n-2$ (un par $a$) | $0$ | $n-2$ |
| $(a,1)$ avec $1<a<n$ | $n-2$ (un par $b$) | $0$ | $n-2$ |
| $(n,b)$ avec $1<b<n$ | $0$ | $n-2$ (un par $a$) | $n-2$ |
| $(a,n)$ avec $1<a<n$ | $0$ | $n-2$ (un par $b$) | $n-2$ |
| $(a,b)$ avec $1<a,b<n$ | $1$ (le seul $Q(a,b)$) | $1$ (le seul $R(a,b)$) | $2$ |
| $(1,n)$ et $(n,1)$ | $0$ | $0$ | $0$ |

Pour $n \geq 4$, on a $2 \leq n-2$, donc **chaque case allumée couvre au plus $n-2$
quadruplets**.

**Le double comptage.**

Notons $A$ l'ensemble des cases qu'Alice allume, et comptons de deux façons les couples
$$(\text{quadruplet},\ \text{case de } A \text{ qui s'y trouve}).$$

- Chacun des $2(n-2)^2$ quadruplets en fournit au moins $1$ : le total est au moins
  $2(n-2)^2$.
- Chaque case de $A$ en fournit au plus $n-2$ : le total est au plus $|A| \times (n-2)$.

Donc
$$|A| \times (n-2) \geq 2(n-2)^2, \qquad \text{d'où} \qquad |A| \geq 2(n-2) = 2n - 4.$$

**Le cas $n = 3$, à part.**

Pour $n = 3$, le tableau ci-dessus donne $2 > n - 2 = 1$ : l'argument précédent ne s'applique
pas. Vérifions directement que $2n - 4 = 2$ lampes sont nécessaires.

Il n'y a qu'un couple $(a,b)$ possible, à savoir $a = b = 2$, donc seulement deux quadruplets
gênants :
$$Q(2,2) = \{(1,1),(1,2),(2,1),(2,2)\}, \qquad R(2,2) = \{(3,3),(3,2),(2,3),(2,2)\}.$$
Leur seule case commune est $(2,2)$.

Si Alice n'allumait qu'une lampe, celle-ci devrait appartenir aux deux quadruplets, donc ce
serait $(2,2)$. Les lampes allumées seraient alors $(1,1)$, $(2,2)$ et $(3,3)$. Or le
quadruplet formé des lignes $1$ et $2$ et des colonnes $2$ et $3$,
$$\{(1,2),\ (1,3),\ (2,2),\ (2,3)\},$$
ne contiendrait qu'une seule lampe allumée, celle de $(2,2)$ : un nombre impair. C'est exclu.

Et $0$ lampe ne convient pas non plus, puisque $Q(2,2)$ serait impair. Il en faut donc au
moins $2$, comme annoncé.

**$2n-4$ lampes suffisent.**

Alice allume les $n-2$ cases
$$(1,2),\ (1,3),\ \ldots,\ (1,n-1)$$
de la ligne du haut, et les $n-2$ cases
$$(2,n),\ (3,n),\ \ldots,\ (n-1,n)$$
de la colonne de droite. Cela fait bien $2n-4$ lampes, et aucune n'était déjà allumée.

Les lampes allumées sont alors exactement :

- toute la ligne $1$ **sauf** la case $(1,n)$ : en effet $(1,1)$ l'était déjà et
  $(1,2), \ldots, (1,n-1)$ viennent d'être allumées ;
- toute la colonne $n$ **sauf** la case $(1,n)$ : en effet $(n,n)$ l'était déjà et
  $(2,n), \ldots, (n-1,n)$ viennent d'être allumées.

Alice effectue maintenant deux opérations.

1. Elle retourne la **ligne $1$**. Les cases $(1,1), \ldots, (1,n-1)$ s'éteignent, et $(1,n)$
   s'allume. Les lampes allumées sont désormais exactement celles de la colonne $n$, tout
   entière.
2. Elle retourne la **colonne $n$**. Tout s'éteint.

**Conclusion : le minimum est $2n-4$ lampes.**

## Going further

Pour $n = 3$ la réponse est $2$, pour $n = 4$ elle est $4$, pour $n = 10$ elle est $16$.

On peut se demander si Alice ne s'en tirerait pas mieux en ayant aussi le droit d'**éteindre**
des lampes avant de commencer. Elle n'y gagnerait rien : éteindre un seul des deux coins
laisserait une unique lampe allumée, et une telle configuration ne peut jamais être vidée. En
effet, prenons le quadruplet formé de la ligne et d'une autre ligne, de la colonne et d'une
autre colonne de cette lampe : il contient exactement une lampe allumée, un nombre impair. Il
lui faudrait donc éteindre les deux coins, soit deux changements de nouveau.

Enfin, l'invariant raconte toute l'histoire. On peut montrer que les configurations que l'on
peut éteindre sont exactement celles de la forme suivante : on décide pour chaque ligne et pour
chaque colonne une « étiquette » $0$ ou $1$, et on allume les cases dont la ligne et la colonne
portent des étiquettes différentes. Il y en a $2^{2n-1}$ en tout, à comparer aux $2^{n^2}$
configurations possibles : pour $n = 5$, cela fait $512$ configurations sur plus de $33$
millions.
