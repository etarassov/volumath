---
id: "40445"
title: "Une réussite semée de nombres premiers : en insistant, on gagne"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 35
tags: [probabilite, des, nombres-premiers, evenement-contraire, independance, suite-croissante, limite, suite-geometrique]
adapted_from: null
see_also: ["40446", "40447"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2013, mathématiques, série S"
  reference: "cg-2013-s-sujet.pdf, problème III « Il faut passer les premiers », question 1 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2013-s-sujet.pdf"
---

## Statement

Sisyphe a dessiné au sol $106$ cases numérotées de $0$ à $105$. Il dispose d'un jeton et d'un dé
équilibré à six faces, et il joue à une *réussite* (un jeu qui se joue seul).

Au début de la réussite, il pose le jeton sur la case $0$. Il lance ensuite le dé ; quand le dé
affiche la valeur $k$, il avance le jeton de $k$ cases, et :

- si le jeton atteint ou dépasse la case $100$, Sisyphe a gagné ;
- si le jeton arrive sur une case dont le numéro est un nombre premier inférieur à $100$, Sisyphe
  a perdu ;
- dans les autres cas, Sisyphe relance le dé et la réussite continue.

Les vingt-cinq nombres premiers inférieurs à $100$ sont

$$2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97.$$

Dans cet exercice, chaque fois qu'il perd, Sisyphe remet le jeton sur la case $0$ et commence une
nouvelle réussite, en continuant à lancer le même dé. On note $p_n$ la probabilité qu'il ait gagné
au moins une réussite au cours de ses $n$ premiers lancers de dé.

1. Déterminer les valeurs de $n$ pour lesquelles $p_n > 0$.
2. Étudier la convergence de la suite $(p_n)$.

## Hints

1. **Question 1.** En $n$ lancers, de combien de cases le jeton peut-il avancer au plus ?
2. **Question 1.** Un multiple de $6$ n'est jamais un nombre premier.
3. **Question 2.** Comparer $p_n$ et $p_{n+1}$. Que peut-on en déduire ?
4. **Question 2.** Notons $w$ la probabilité de gagner une réussite. Pourquoi a-t-on $w > 0$ ? Et
   combien de lancers une réussite peut-elle durer, au maximum ?
5. **Question 2.** Si Sisyphe n'a rien gagné au cours des $100m$ premiers lancers, que s'est-il
   passé pendant ses $m$ premières réussites ?

## Solution

**1.** *Pour $n \leq 16$.* Chaque lancer fait avancer le jeton d'au plus $6$ cases. En $n$ lancers,
le jeton avance donc au total d'au plus $6n \leq 96$ cases depuis le début de la réussite en
cours. Il ne peut pas atteindre la case $100$ : $p_n = 0$.

*Pour $n \geq 17$.* Si les $17$ premiers lancers donnent tous $6$, le jeton passe par les cases
$6, 12, 18, \ldots, 96$, qui sont des multiples de $6$ et donc pas des nombres premiers (elles
sont paires et différentes de $2$), puis arrive en case $102$ au $17^{\text{e}}$ lancer : Sisyphe
a gagné. Cet événement a pour probabilité $\left(\frac{1}{6}\right)^{17}$. Comme gagner au cours
des $17$ premiers lancers, c'est aussi gagner au cours des $n$ premiers, on a
$$p_n \geq \left(\frac{1}{6}\right)^{17} > 0.$$

**Conclusion :** $p_n > 0$ si et seulement si $n \geq 17$.

**2.** *La suite converge.* Si Sisyphe a gagné une réussite au cours des $n$ premiers lancers,
il en a aussi gagné une au cours des $n + 1$ premiers. Donc $p_n \leq p_{n+1}$ : la suite
$(p_n)$ est croissante. Elle est majorée par $1$, puisque c'est une probabilité. Une suite
croissante et majorée converge : $(p_n)$ a une limite $\ell \leq 1$.

*La limite vaut $1$.* Notons $w$ la probabilité de gagner une réussite, en partant de la case $0$.
D'après la question 1, $w \geq \left(\frac{1}{6}\right)^{17} > 0$.

Une réussite dure au plus $100$ lancers : chaque lancer fait avancer le jeton d'au moins une
case, donc après $100$ lancers le jeton aurait atteint la case $100$.

Soit $m \geq 1$ un entier, et $n \geq 100m$. Supposons que Sisyphe n'ait gagné aucune réussite au
cours des $n$ premiers lancers. Ses $m$ premières réussites, qui durent chacune au plus $100$
lancers, sont toutes terminées au bout de $100m \leq n$ lancers ; elles ont donc toutes été
perdues. Les réussites successives utilisent des lancers différents, elles sont indépendantes, et
chacune est perdue avec la probabilité $1 - w$. Donc
$$0 \leq 1 - p_n \leq (1 - w)^m \qquad \text{pour tout } n \geq 100m.$$

En prenant pour $m$ la partie entière de $\frac{n}{100}$, on obtient, pour tout $n \geq 100$,
$$0 \leq 1 - p_n \leq (1 - w)^{m}, \qquad m = \left\lfloor \frac{n}{100} \right\rfloor.$$
Quand $n$ tend vers $+\infty$, $m$ tend aussi vers $+\infty$. Comme $0 \leq 1 - w < 1$, la suite
géométrique $(1 - w)^m$ tend vers $0$. Par le théorème des gendarmes, $1 - p_n$ tend vers $0$.

**Conclusion :** la suite $(p_n)$ est nulle jusqu'au rang $16$, puis strictement positive ; elle
est croissante et converge vers $1$.

**Bilan.** Il faut au moins $17$ lancers pour gagner une réussite. Mais si Sisyphe recommence
chaque fois qu'il perd, il est presque sûr de finir par gagner : la probabilité d'avoir gagné au
moins une fois tend vers $1$, même si la probabilité $w$ de gagner une seule réussite est très
petite.

## Going further

- En réalité, une réussite dure au plus $75$ lancers. Pourquoi ? *Le jeton ne s'arrête jamais
  deux fois sur la même case, et avant son dernier lancer il n'occupe que des cases qui ne sont
  pas des nombres premiers et qui sont inférieures à $100$.*
- La suite du sujet calcule $w$ (exercices 40446 et 40447) : on trouve
  $w \approx \text{3,45} \times 10^{-4}$, soit environ une réussite gagnée sur $2\,900$. À l'aide
  du logarithme, combien de réussites Sisyphe doit-il jouer pour avoir au moins une chance sur
  deux d'en gagner une ? *Réponse : il faut $(1 - w)^m \leq \frac{1}{2}$, soit environ
  $m \geq 2\,010$.*
