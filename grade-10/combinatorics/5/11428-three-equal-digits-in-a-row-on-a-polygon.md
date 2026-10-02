---
id: "11428"
title: "Trois chiffres égaux à la suite sur un polygone"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [jeu, strategie, polygone, parite, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Juniors, exercice 8 ; corrigé 2022-04_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Xavier et Yaël jouent sur un polygone à $n$ sommets, vides au départ. Chacun à son tour, en
commençant par Xavier, un joueur choisit un sommet encore vide et y écrit un $0$ ou un $1$, au choix.

Xavier gagne si, juste après l'un de **ses** coups, il existe trois sommets consécutifs du polygone,
tous remplis, dont la somme des nombres est un multiple de $3$. Yaël gagne s'il réussit à empêcher
cela jusqu'à ce que tous les sommets soient remplis.

Lequel des deux joueurs a une stratégie gagnante :

1. pour $n = 2019$ ?
2. pour $n = 2020$ ?
3. pour $n = 2021$ ?

## Hints

1. Trois nombres qui valent chacun $0$ ou $1$ ont une somme comprise entre $0$ et $3$. Quand est-elle
   un multiple de $3$ ?
2. Si, après un coup de Yaël, on voit $x\,x\,\_$ ou $x\,\_\,x$ sur trois sommets consécutifs, avec un
   sommet vide, que fait Xavier ? Que doit donc faire Yaël quand Xavier crée une telle menace ?
3. Pour $n$ pair : Yaël peut toujours répondre juste à côté du coup de Xavier, avec l'autre chiffre.
   De quel côté ? Pense à la parité des groupes de sommets vides.
4. Pour $n$ impair : Xavier joue $0$ sur un sommet. Où Yaël est-il obligé de répondre ? Ensuite,
   Xavier peut créer une menace à chaque coup et faire le tour du polygone.
5. Le reste de $n$ dans la division par $4$ compte : $2021 = 4 \times 505 + 1$ et
   $2019 = 4 \times 504 + 3$.

## Solution

**Réponse : Xavier gagne pour $n = 2019$ et $n = 2021$, Yaël gagne pour $n = 2020$.**

On numérote les sommets $s_0, s_1, \ldots, s_{n-1}$ en tournant autour du polygone ; après $s_{n-1}$
vient de nouveau $s_0$.

### Ce que veut Xavier

Trois nombres égaux à $0$ ou $1$ ont une somme égale à $0$, $1$, $2$ ou $3$. Elle est un multiple de
$3$ seulement si elle vaut $0$ ou $3$, c'est-à-dire si **les trois nombres sont égaux**. Xavier veut
donc trois chiffres égaux sur trois sommets consécutifs.

**Les menaces.** Supposons qu'après un coup de Yaël on voie, sur trois sommets consécutifs, deux
chiffres égaux $x$ et un sommet vide (les dispositions $x\,x\,\_$ et $x\,\_\,x$). Xavier écrit $x$
sur le sommet vide et gagne. Disons alors que ce sommet vide est **menacé**.

Donc quand Xavier crée un sommet menacé, Yaël est **obligé** d'écrire l'autre chiffre sur ce sommet.
S'il joue ailleurs, Xavier gagne au coup suivant. S'il y écrit $x$, les trois chiffres égaux sont sur
le polygone, et Xavier gagne juste après son coup suivant, quel qu'il soit. Et si Xavier crée **deux**
sommets menacés à la fois, Yaël ne peut en boucher qu'un : Xavier gagne.

Pour $n$ impair, Xavier joue le premier et le dernier coup, donc il a toujours un coup suivant.

### Pour $n = 2020$ : Yaël gagne

Appelons **plage** un groupe de sommets vides consécutifs, entouré de deux sommets remplis. Yaël
s'arrange pour que, après chacun de ses coups, les deux propriétés suivantes soient vraies :

- **(P1)** chaque plage contient un nombre **pair** de sommets ;
- **(P2)** chaque sommet rempli a un voisin rempli qui porte **l'autre chiffre**.

**Le premier coup.** Xavier écrit un chiffre sur un sommet $v$. Yaël écrit l'autre chiffre sur un
voisin de $v$. Il reste une seule plage de $2020 - 2 = 2018$ sommets, nombre pair, et $v$ et son
voisin portent des chiffres différents. (P1) et (P2) sont vraies.

**Les coups suivants.** Xavier écrit sur un sommet vide $v$, qui est dans une plage de $L$ sommets,
avec $L$ pair d'après (P1), donc $L \geqslant 2$. Les $L - 1$ autres sommets de la plage sont coupés
par $v$ en deux morceaux, l'un à gauche de $v$ et l'autre à droite (l'un des deux peut être vide).
Leurs longueurs ont pour somme $L - 1$, qui est impair : **une seule** des deux est impaire, donc au
moins égale à $1$.

Yaël écrit alors l'autre chiffre sur le voisin de $v$ situé du côté impair. Ce côté perd un sommet et
devient pair, l'autre côté était déjà pair : (P1) reste vraie. Le sommet $v$ et le sommet de Yaël sont
voisins avec des chiffres différents, et les autres sommets remplis gardent leur voisin : (P2) reste
vraie. Yaël peut ainsi répondre à chaque coup de Xavier.

**Pourquoi Xavier ne gagne jamais.** Regardons la situation juste après un coup de Xavier sur le sommet
$v$. Juste avant, (P1) et (P2) étaient vraies. Prenons trois sommets consécutifs $A$, $B$, $C$, tous
remplis, et montrons qu'ils ne portent pas trois chiffres égaux.

- Si $v$ n'est aucun des trois, ils étaient déjà remplis avant. D'après (P2), le sommet du milieu $B$
  a un voisin, $A$ ou $C$, qui porte l'autre chiffre.
- $v$ ne peut pas être le sommet du milieu $B$ : la plage de $v$ avait au moins $2$ sommets, donc l'un
  des deux voisins de $v$ est encore vide.
- Si $v = A$, alors $B$ était déjà rempli, et son voisin $A$ était vide. D'après (P2), c'est donc $C$
  qui porte l'autre chiffre que $B$. De même si $v = C$.

Il n'y a jamais trois chiffres égaux à la suite juste après un coup de Xavier. Ni après un coup de
Yaël, d'ailleurs, puisque (P2) est alors vraie pour tous les sommets remplis. Le polygone finit par
être rempli sans que Xavier ait gagné : **Yaël gagne pour $n = 2020$.**

Le raisonnement marche de la même façon pour tout $n$ pair.

### Le début de partie quand $n$ est impair

Xavier commence par écrire $0$ sur $s_0$. **Yaël doit répondre $1$ sur un voisin de $s_0$**, c'est-à-dire
sur $s_1$ ou sur $s_{n-1}$. En effet :

- s'il écrit $0$ sur $s_1$, alors $s_0$, $s_1$ portent $0\,0$ et $s_2$ est menacé : Xavier gagne ;
  de même s'il écrit $0$ sur $s_{n-1}$ ;
- s'il joue ailleurs que sur $s_1$, $s_2$ et $s_{n-1}$, Xavier écrit $0$ sur $s_1$ : les sommets $s_2$
  et $s_{n-1}$ sont menacés tous les deux, et Xavier gagne ;
- s'il joue sur $s_2$, Xavier écrit $0$ sur $s_{n-1}$ : les sommets $s_1$ et $s_{n-2}$ sont menacés
  tous les deux (ils sont différents de $s_2$ car $n \geqslant 5$), et Xavier gagne.

### Pour $n = 2021$ : Xavier gagne

On écrit $n = 4k + 1$, avec $k = 505$. Quitte à numéroter les sommets dans l'autre sens, Yaël a
répondu $1$ sur $s_1$.

Xavier écrit $1$ sur $s_2$. Les sommets $s_1$, $s_2$ portent $1\,1$, donc $s_3$ est menacé, et Yaël
doit écrire $0$ sur $s_3$. Xavier écrit $0$ sur $s_4$ : maintenant $s_5$ est menacé, et Yaël doit
écrire $1$ sur $s_5$. Et ainsi de suite : à chaque fois, Xavier recopie sur le sommet suivant le
chiffre que Yaël vient d'écrire, ce qui menace le sommet d'après, et Yaël est obligé d'y écrire
l'autre chiffre.

Les chiffres sur $s_0, s_1, s_2, \ldots$ sont alors

$$0, 1, 1, 0, \; 0, 1, 1, 0, \; 0, 1, 1, 0, \; \ldots$$

Ce motif de longueur $4$ se répète : $s_j$ porte $0$ quand $j$ a pour reste $0$ ou $3$ dans la division
par $4$, et $1$ quand le reste est $1$ ou $2$.

Le dernier sommet est $s_{4k}$, et c'est Xavier qui y joue. Juste avant, Yaël a écrit sur
$s_{4k-1}$ le chiffre $0$ (reste $3$). Xavier recopie ce $0$ sur $s_{4k}$. Or le voisin suivant de
$s_{4k}$ est $s_0$, qui porte aussi $0$. Les trois sommets consécutifs $s_{4k-1}$, $s_{4k}$, $s_0$
portent $0\,0\,0$ : **Xavier gagne pour $n = 2021$**, au plus tard au dernier coup.

### Pour $n = 2019$ : Xavier gagne aussi

On écrit $n = 4k + 3$, avec $k = 504$. Le même plan ne marche pas tel quel : en recopiant à partir de
$s_1$, le motif arriverait en bout de course sur $1\,1$ à côté du $0$ de $s_0$, sans gagner. Xavier
décale donc son motif.

Quitte à numéroter les sommets dans l'autre sens, Yaël a répondu $1$ sur $s_{n-1} = s_{4k+2}$.

- Xavier écrit $0$ sur $s_2$. On voit $0\,\_\,0$ sur $s_0$, $s_1$, $s_2$ : le sommet $s_1$ est menacé,
  et Yaël doit y écrire $1$.
- Xavier écrit $0$ sur $s_3$. Les sommets $s_2$, $s_3$ portent $0\,0$, donc $s_4$ est menacé, et Yaël
  doit y écrire $1$.
- Puis, comme pour $2021$, Xavier recopie chaque fois sur le sommet suivant le chiffre que Yaël vient
  d'écrire, et Yaël est obligé de boucher le sommet d'après avec l'autre chiffre.

À partir de $s_2$, les chiffres sont

$$\underbrace{0, 0}_{s_2,\, s_3}, \; \underbrace{1, 1}_{s_4,\, s_5}, \; \underbrace{0, 0}_{s_6,\, s_7}, \; \underbrace{1, 1}_{s_8,\, s_9}, \; \ldots$$

Le sommet $s_j$ porte $1$ quand $j$ a pour reste $0$ ou $1$ dans la division par $4$. Yaël écrit
donc $1$ sur $s_{4k}$, puis Xavier recopie ce $1$ sur $s_{4k+1}$. Or le sommet suivant est $s_{4k+2}$,
où Yaël a écrit $1$ au tout début. Les trois sommets $s_{4k}$, $s_{4k+1}$, $s_{4k+2}$ portent
$1\,1\,1$ : **Xavier gagne pour $n = 2019$.**

**Conclusion.** Xavier a une stratégie gagnante pour $n = 2019$ et pour $n = 2021$, et Yaël en a une
pour $n = 2020$. Plus généralement, pour $n \geqslant 4$, Xavier gagne quand $n$ est impair et Yaël
gagne quand $n$ est pair.

## Going further

Pour $n = 3$, les stratégies de Xavier ci-dessus ne peuvent pas démarrer, et c'est Yaël qui gagne :
il lui suffit d'écrire au deuxième coup l'autre chiffre que Xavier. Les trois sommets sont alors les
seuls trois sommets consécutifs, et ils ne porteront jamais trois chiffres égaux. Le résultat
« Xavier gagne quand $n$ est impair » demande donc bien $n \geqslant 5$.
