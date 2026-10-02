---
id: "8024"
title: "On ajoute son plus grand chiffre"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [chiffres, parite, retenues, recherche-de-cas, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath du 6 juin 2017, énoncés communs, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On écrit un nombre entier positif au tableau. À chaque étape, on ajoute au dernier nombre écrit
le plus grand de ses chiffres, et on écrit le résultat.

Par exemple, si le nombre écrit est $142$, le suivant sera $142 + 4 = 146$.

Quel est le plus grand nombre d'entiers impairs que l'on puisse écrire les uns à la suite des
autres en procédant ainsi ?

## Hints

1. Pour passer d'un nombre impair à un nombre impair, que faut-il ajouter ?
2. Le plus grand chiffre doit donc être pair. Note-le $c$, et note $d$ le chiffre des unités,
   qui lui est impair. Compare $c$ et $d$.
3. Sépare deux situations : l'addition $d + c$ provoque une retenue, ou bien non. Que devient
   le plus grand chiffre s'il n'y a pas de retenue ?
4. Quand il y a une retenue, le chiffre des unités passe de $d$ à $d + c - 10$. De combien
   a-t-il baissé ? Combien de fois peut-on répéter cela ?
5. Cherche ensuite un exemple. Un nombre dont le plus grand chiffre est $8$ et qui se termine
   par $7$ est un bon point de départ.

## Solution

Appelons $c$ le plus grand chiffre du nombre écrit, et $d$ son chiffre des unités.

**Première remarque : $c$ doit être pair.** Si le nombre écrit est impair et qu'on lui ajoute
$c$, le résultat est impair seulement si $c$ est pair. Donc dès que le plus grand chiffre d'un
nombre impair est impair, le nombre suivant est pair et la série s'arrête.

**Deuxième remarque : $d < c$.** Le chiffre des unités est l'un des chiffres, donc
$d \leqslant c$. Comme $d$ est impair et $c$ pair, ils sont différents : $d < c$. En
particulier $c \neq 0$.

**Troisième remarque : sans retenue, c'est fini tout de suite.** Supposons $d + c \leqslant 9$,
c'est-à-dire que l'addition ne provoque pas de retenue. Alors seul le chiffre des unités
change : il passe de $d$ à $d + c$. Comme $d \geqslant 1$, on a $d + c > c$, donc le nouveau
plus grand chiffre est $d + c$, qui est impair (pair $+$ impair). D'après la première remarque,
le nombre d'après est pair.

**Donc pour continuer, il faut une retenue à chaque fois.** Il faut $d + c \geqslant 10$, avec
$c$ pair et $d$ impair, $d < c$ :

- $c = 2$ : alors $d = 1$ et $d + c = 3$. Jamais de retenue.
- $c = 4$ : alors $d \leqslant 3$ et $d + c \leqslant 7$. Jamais de retenue.
- $c = 6$ : il faut $d \geqslant 4$, donc $d = 5$.
- $c = 8$ : il faut $d \geqslant 2$, donc $d \in \{3, 5, 7\}$.

**Ce que fait une retenue.** Comme $c$ est le plus grand chiffre et que $c \leqslant 8$, le
nombre ne contient aucun $9$. La retenue s'arrête donc à la dizaine : un seul chiffre augmente
de $1$, et le chiffre des unités devient

$$d' = d + c - 10 = d - (10 - c).$$

Le chiffre des unités **baisse de $10 - c$** à chaque étape.

De plus, le chiffre qui augmente de $1$ valait au plus $c$, donc le nouveau plus grand chiffre
vaut $c$ ou $c + 1$. S'il vaut $c + 1$, il est impair et la série s'arrête à l'étape suivante.
Pour aller le plus loin possible, on veut qu'il reste égal à $c$.

**Le cas $c = 6$.** Le chiffre des unités baisse de $4$ à chaque étape, et la seule valeur de
départ possible est $d = 5$. Après une étape, $d = 1$ : il n'y a plus de retenue possible, donc
d'après la troisième remarque, on écrit encore un impair puis un pair. Cela donne au plus
$3$ nombres impairs.

**Le cas $c = 8$.** Le chiffre des unités baisse de $2$ à chaque étape. En partant de $d = 7$,
il passe par

$$7 \ \longrightarrow\ 5 \ \longrightarrow\ 3 \ \longrightarrow\ 1,$$

soit quatre nombres impairs. Arrivé à $d = 1$, il n'y a plus de retenue : on écrit un cinquième
impair (son chiffre des unités devient $1 + 8 = 9$, qui devient aussi le plus grand chiffre),
et le sixième nombre est pair.

**Donc on ne peut pas écrire six impairs de suite : le maximum possible est $5$.**

**Un exemple qui atteint $5$.** Partons de $807$ : son plus grand chiffre est $8$ et il se
termine par $7$.

$$807 \ \xrightarrow{\ +8\ }\ 815 \ \xrightarrow{\ +8\ }\ 823 \ \xrightarrow{\ +8\ }\ 831 \ \xrightarrow{\ +8\ }\ 839 .$$

À chaque étape le plus grand chiffre est bien $8$ (les chiffres sont $8$, $0$ ou $1$, $2$ ou
$3$...), et les cinq nombres $807$, $815$, $823$, $831$, $839$ sont impairs. Le suivant est
$839 + 9 = 848$, qui est pair.

**On peut écrire au plus $5$ entiers impairs de suite, et ce nombre est atteint.**

## Going further

Le cœur de la preuve tient en une phrase : tant qu'il y a une retenue, le chiffre des unités
baisse de $10 - c$, et il ne peut pas descendre en dessous de $1$. C'est donc la taille du pas
de descente qui limite tout, et $c = 8$ donne le plus petit pas possible, $2$.

Si l'on cherchait le plus grand nombre de **pairs** consécutifs, la question serait très
différente : un nombre pair dont le plus grand chiffre est pair reste pair, et la série peut
alors durer très longtemps.
