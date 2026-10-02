---
id: "8049"
title: "Le message caché dans l'échiquier"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [strategie, parite, base-deux, information, echiquier]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017, La muraille"
  reference: "stage_ete_2017.pdf, chapitre X « La muraille », exercice 57 (solution d'élèves par Thomas Soulignac, Rémy Défossez, Théodore Radu et Samuel Berrebi)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Sur chacune des $64$ cases d'un échiquier est posée une pièce de monnaie, côté pile ou côté
face, n'importe comment.

Alice et Bob jouent ensemble contre Ève. La partie se déroule ainsi.

1. Au début, seuls Ève et Bob sont dans la salle. Alice attend dehors et ne voit rien.
2. Ève choisit une case de l'échiquier et retourne la pièce qui s'y trouve. Bob la regarde
   faire : il sait donc quelle case Ève a choisie.
3. Ève s'en va.
4. Bob a le droit de retourner **au plus une** pièce, celle qu'il veut. Puis il sort.
5. Alice entre. Elle voit l'échiquier, et rien d'autre. Elle doit annoncer la case qu'Ève
   avait choisie.

Alice et Bob ont pu convenir d'une stratégie avant le début de la partie, mais ils ne peuvent
plus communiquer une fois qu'elle a commencé.

Montrer qu'ils peuvent s'organiser pour qu'Alice trouve à coup sûr la case d'Ève.

## Hints

1. Alice ne voit qu'une chose : la position finale des $64$ pièces. Et Bob ne peut la modifier
   qu'à un seul endroit. Pourtant il doit lui désigner une case parmi $64$. Combien de
   réponses « oui / non » cela représente-t-il ?
2. $64 = 2^6$. Bob doit donc réussir à transmettre six informations binaires en retournant une
   seule pièce. Une seule pièce, mais elle peut appartenir à plusieurs « paquets » de cases à
   la fois.
3. Choisis six ensembles de cases, appelés zones. Pour chaque zone, Alice peut compter les
   pièces montrant face et regarder si ce nombre est pair ou impair : cela fait bien six
   informations. Que fait, à ces six parités, le fait de retourner une pièce ?
4. Numérote les lignes de $0$ à $7$ et les colonnes de $0$ à $7$, et écris ces numéros en base
   $2$ sur trois chiffres. Construis les six zones à partir de ces six chiffres, et vérifie
   qu'aucune case n'appartient exactement aux mêmes zones qu'une autre.
5. Bob compare les six parités qu'il lit sur l'échiquier aux six chiffres de la case d'Ève. Il
   sait donc quelles zones doivent changer de parité et lesquelles ne doivent pas bouger. Quelle
   case retourner pour obtenir exactement cela ?

## Solution

Oui, ils peuvent réussir à coup sûr. Voici la stratégie.

### Les six zones

Numérotons les lignes de $0$ à $7$ du haut vers le bas et les colonnes de $0$ à $7$ de la
gauche vers la droite. Chaque numéro s'écrit en base $2$ avec exactement trois chiffres :

$$0 = 000, \quad 1 = 001, \quad 2 = 010, \quad \ldots, \quad 7 = 111 .$$

On définit six zones, c'est-à-dire six ensembles de cases, qui se chevauchent largement :

| Zone | Ce qu'elle contient | Chiffre lu |
|---|---|---|
| $Z_1$ | les cases des lignes $4, 5, 6, 7$ | premier chiffre du numéro de ligne |
| $Z_2$ | les cases des lignes $2, 3, 6, 7$ | deuxième chiffre du numéro de ligne |
| $Z_3$ | les cases des lignes $1, 3, 5, 7$ | troisième chiffre du numéro de ligne |
| $Z_4$ | les cases des colonnes $4, 5, 6, 7$ | premier chiffre du numéro de colonne |
| $Z_5$ | les cases des colonnes $2, 3, 6, 7$ | deuxième chiffre du numéro de colonne |
| $Z_6$ | les cases des colonnes $1, 3, 5, 7$ | troisième chiffre du numéro de colonne |

Chaque zone occupe exactement la moitié de l'échiquier, soit $32$ cases.

La propriété qui fait tout marcher est la suivante :

> **Une case est entièrement déterminée par la liste des zones auxquelles elle appartient.**

En effet, appartenir ou non à $Z_1$, $Z_2$, $Z_3$ donne les trois chiffres binaires du numéro
de ligne, donc la ligne ; de même $Z_4$, $Z_5$, $Z_6$ donnent la colonne. Réciproquement, il y
a $2^6 = 64$ listes possibles et $64$ cases : à chaque liste correspond une case et une seule.

Par exemple, la case de la ligne $0$ et de la colonne $0$ n'appartient à aucune zone, et la
case de la ligne $7$, colonne $7$, appartient aux six.

### Ce qu'Alice lit

Pour chaque zone $Z_i$, Alice compte le nombre de pièces montrant **face** à l'intérieur de
$Z_i$, et pose

$$s_i = \begin{cases} 0 & \text{si ce nombre est pair,} \\ 1 & \text{si ce nombre est impair.} \end{cases}$$

Elle obtient six chiffres $s_1 s_2 s_3 s_4 s_5 s_6$, chacun valant $0$ ou $1$. D'après la
propriété ci-dessus, ces six chiffres désignent une case et une seule : celle dont le numéro
de ligne s'écrit $s_1 s_2 s_3$ en base $2$ et le numéro de colonne $s_4 s_5 s_6$.

**La règle convenue d'avance est : Alice annonce cette case.**

Tout le travail de Bob consiste donc à faire en sorte que les six parités soient les bons
chiffres.

### Ce que fait Bob

Observons d'abord l'effet d'un seul geste. Si l'on retourne la pièce posée sur une case $c$,
le nombre de faces d'une zone augmente ou diminue de $1$ si $c$ appartient à cette zone, et ne
change pas sinon. Autrement dit :

> **Retourner la pièce de la case $c$ change la parité exactement des zones qui contiennent
> $c$, et d'aucune autre.**

Bob, après le passage d'Ève, calcule les six parités $s_1, \ldots, s_6$ de l'échiquier tel
qu'il est. Il connaît par ailleurs les six chiffres $e_1, \ldots, e_6$ de la case choisie par
Ève (trois pour sa ligne, trois pour sa colonne).

Il pose, pour chaque $i$,

$$d_i = \begin{cases} 1 & \text{si } s_i \neq e_i \ \text{(cette zone doit changer de parité)}, \\
                      0 & \text{si } s_i = e_i \ \text{(cette zone ne doit pas bouger)}. \end{cases}$$

Il considère alors la case $c$ dont le numéro de ligne s'écrit $d_1 d_2 d_3$ en base $2$ et le
numéro de colonne $d_4 d_5 d_6$. Cette case appartient exactement aux zones $Z_i$ pour
lesquelles $d_i = 1$, c'est-à-dire exactement aux zones qui doivent changer de parité.

**Bob retourne la pièce de la case $c$.**

Après ce geste, la parité de la zone $Z_i$ a changé si $d_i = 1$ et est restée la même si
$d_i = 0$. Dans les deux cas, la nouvelle parité vaut $e_i$. Alice lit donc
$e_1 e_2 e_3 e_4 e_5 e_6$ et annonce la case d'Ève.

### Le cas où Bob n'a rien à corriger

Si les six parités sont déjà les bonnes, tous les $d_i$ valent $0$ et la case $c$ est celle de
la ligne $0$, colonne $0$. Or cette case n'appartient à aucune zone : retourner sa pièce ne
change aucune parité. Bob peut donc appliquer la même règle sans réfléchir, ou, ce qui revient
au même, ne rien faire. C'est bien pour cela que l'énoncé autorise « au plus une » pièce.

La stratégie fonctionne donc dans tous les cas, quelle que soit la position de départ des
pièces et quelle que soit la case choisie par Ève.

## Going further

Rien dans le raisonnement n'utilise le nombre $8$ : seul compte le fait que le nombre de cases
soit une puissance de $2$. La même stratégie marche telle quelle sur un plateau de $2^m$
cases, avec $m$ zones.

Deux questions à creuser ensuite.

1. Que se passe-t-il si le plateau a $63$ cases au lieu de $64$ ? Avec six zones, Alice lit
   toujours six parités, donc $64$ messages possibles pour seulement $63$ cases à désigner :
   il y a de la place. Mais Bob, lui, n'a plus que $63$ pièces à retourner, plus l'option de
   ne rien faire. Arrive-t-il encore à obtenir toutes les corrections dont il peut avoir
   besoin ?
2. Et si Bob était **obligé** de retourner une pièce, sans avoir le droit de s'abstenir ? Sur
   l'échiquier de $64$ cases, la stratégie ci-dessus tient-elle toujours ?

Pour la deuxième question, la réponse est oui, et elle ne demande aucune modification : la
case $c$ construite par Bob existe dans tous les cas, y compris quand elle est celle de la
ligne $0$, colonne $0$. Bob retourne alors cette pièce-là, ce qui ne change aucune parité.
