---
id: "11206"
title: "Le digicode à quatre chiffres"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [graphe, maths-expertes, construction, denombrement, chemin-eulerien]
adapted_from: null
see_also: ["1021"]
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2012-2013-envoi2.pdf, Exercices Olympiques, exercice 8 ; corrigé 2017-10_ofm-2012-2013-envoi2-corrige.pdf (le corrigé cite le théorème d'Euler sans le démontrer ; il est démontré ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi2.pdf"
---

## Statement

Le code d'un digicode est formé de $4$ chiffres, qui peuvent se répéter (par exemple $0012$ ou
$7777$). Le digicode n'a pas de touche « valider » : il s'ouvre dès que **les quatre derniers
chiffres tapés** forment le code. Par exemple, si l'on tape $0\,0\,0\,1\,2\,5$, le digicode
s'ouvre si le code est $0001$, $0012$ ou $0125$.

Pierre ne connaît pas le code. Combien de chiffres doit-il taper, au minimum, pour être **sûr**
d'ouvrir le digicode ?

## Hints

1. Une suite de $N$ chiffres contient combien de « fenêtres » de quatre chiffres consécutifs ?
   Combien de codes faut-il essayer ? Déduis-en un minimum.
2. Pour montrer que ce minimum suffit, vois chaque code $abcd$ comme un passage de $abc$ à $bcd$.
   Dessine les $1\,000$ suites de trois chiffres comme des points, et chaque code comme une flèche
   d'un point vers un autre.
3. Taper une suite de chiffres revient alors à se promener en suivant les flèches. Il faut une
   promenade qui emprunte chaque flèche une fois et une seule.
4. De chaque point partent $10$ flèches et en arrivent $10$. Si tu te promènes en n'empruntant que
   des flèches encore jamais utilisées, en quel point peux-tu rester bloqué ?

## Solution

La réponse est $10\,003$ chiffres.

**Étape 1. Il faut au moins $10\,003$ chiffres.**

Il y a $10^4 = 10\,000$ codes possibles, et Pierre doit tous les essayer pour être sûr de tomber
sur le bon.

Une suite de $N$ chiffres contient $N - 3$ « fenêtres » de quatre chiffres consécutifs : une
fenêtre se termine au quatrième chiffre, une au cinquième, et ainsi de suite jusqu'au dernier.
Chaque fenêtre essaie un seul code. Il faut donc $N - 3 \geqslant 10\,000$, c'est-à-dire
$N \geqslant 10\,003$.

Il reste à trouver une suite de $10\,003$ chiffres dans laquelle **chacun** des $10\,000$ codes
apparaît comme une fenêtre. Il faut pour cela que deux fenêtres ne soient jamais égales.

**Étape 2. Les points et les flèches.**

Dessinons $1\,000$ points, un pour chaque suite de trois chiffres, de $000$ à $999$. Pour chaque
code $abcd$, traçons une flèche du point $abc$ vers le point $bcd$. Par exemple, le code $2009$
donne une flèche de $200$ vers $009$, et le code $7777$ une flèche qui part de $777$ et y revient.
Il y a $10\,000$ flèches, une par code.

Supposons qu'on ait une promenade qui part d'un point, suit les flèches, et emprunte **chaque
flèche exactement une fois**. On en déduit une suite de chiffres : on tape les trois chiffres du
point de départ, puis, à chaque flèche empruntée, le dernier chiffre du point d'arrivée. Quand on
passe de $abc$ à $bcd$, on tape $d$, et les quatre derniers chiffres tapés sont $abcd$ : la
fenêtre qui vient de se former est exactement le code de la flèche. La suite obtenue a
$3 + 10\,000 = 10\,003$ chiffres et essaie chacun des $10\,000$ codes.

Il reste à prouver qu'une telle promenade existe. On utilise deux propriétés du dessin.

- **Autant d'arrivées que de départs.** Du point $abc$ partent $10$ flèches, vers $bc0$, $bc1$,
  ..., $bc9$. Vers le point $abc$ arrivent $10$ flèches, depuis $0ab$, $1ab$, ..., $9ab$.
- **On peut aller de n'importe quel point à n'importe quel autre.** Du point $abc$, on va au point
  $def$ par les trois flèches $abc \to bcd \to cde \to def$.

**Étape 3. Le lemme d'Euler.**

> **Lemme.** On considère un dessin formé d'un nombre fini de points et de flèches. On suppose
> qu'en chaque point arrivent autant de flèches qu'il en part, et qu'on peut aller de n'importe
> quel point à n'importe quel autre en suivant les flèches. Alors il existe une promenade fermée
> qui emprunte chaque flèche exactement une fois.

*Première idée : on ne reste bloqué qu'au point de départ.* Partons d'un point $P$ et avançons en
n'empruntant que des flèches pas encore utilisées, aussi longtemps que possible. Supposons qu'on
arrive en un point $Q$ différent de $P$. Chaque passage précédent par $Q$ a utilisé une flèche
qui arrive en $Q$ et une flèche qui en part. Avec l'arrivée actuelle, on a utilisé une flèche
d'arrivée de plus que de flèches de départ. Comme $Q$ a autant de flèches de départ que
d'arrivée, il reste une flèche de départ libre, et l'on peut continuer. Comme il n'y a qu'un
nombre fini de flèches, la promenade s'arrête, et elle ne peut s'arrêter qu'en $P$ : c'est une
promenade fermée.

*Deuxième idée : agrandir une promenade fermée.* Soit $C$ une promenade fermée qui emprunte
chaque flèche au plus une fois, et supposons qu'il reste des flèches non utilisées.

Une de ces flèches libres part d'un point de $C$. En effet, prenons une flèche libre, qui part
d'un point $U$. Si $U$ est sur $C$, c'est fini. Sinon, suivons un chemin de flèches qui va d'un
point de $C$ jusqu'à $U$. Ce chemin quitte $C$ à un moment : il emprunte une flèche qui part d'un
point de $C$ et qui arrive en dehors de $C$. Cette flèche n'appartient pas à $C$, elle est donc
libre.

Appelons $R$ le point de $C$ d'où part une flèche libre. La promenade $C$ a utilisé, en chaque
point, autant de flèches d'arrivée que de flèches de départ. Parmi les flèches libres, il y a
donc encore, en chaque point, autant d'arrivées que de départs. Par la première idée, une
promenade qui part de $R$ en n'empruntant que des flèches libres revient en $R$. On l'insère dans
$C$ : on suit $C$ jusqu'au premier passage en $R$, on fait le nouveau tour, puis on termine $C$.
On obtient une promenade fermée plus longue, qui emprunte encore chaque flèche au plus une fois.

On recommence tant qu'il reste des flèches libres. Comme les flèches sont en nombre fini, on
finit par les avoir toutes empruntées, une fois chacune. Le lemme est démontré.

**Étape 4. Conclusion.**

D'après l'étape 2, le dessin des codes vérifie les deux hypothèses du lemme. Il existe donc une
promenade qui emprunte chacune des $10\,000$ flèches exactement une fois, et elle donne une
suite de $10\,003$ chiffres qui essaie tous les codes.

**Conclusion : Pierre doit taper au minimum $10\,003$ chiffres, et ce nombre suffit.**

## Going further

Une suite de ce genre s'appelle une **suite de de Bruijn**. Le même raisonnement montre que pour
un code de $k$ chiffres, le minimum est $10^k + k - 1$.

Le dessin de points et de flèches s'appelle un **graphe orienté**, et une promenade qui emprunte
chaque flèche exactement une fois s'appelle un **circuit eulérien**, du nom d'Euler, qui a étudié
ces promenades en $1736$ à propos des sept ponts de Königsberg.
