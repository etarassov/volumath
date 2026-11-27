---
id: "40447"
title: "Estimer la probabilité de passer tous les nombres premiers"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 60
tags: [probabilite-conditionnelle, probabilites-totales, des, nombres-premiers, variable-aleatoire, encadrement, produit, suite-recurrente]
adapted_from: null
see_also: ["40445", "40446"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2013, mathématiques, série S"
  reference: "cg-2013-s-sujet.pdf, problème III « Il faut passer les premiers », question 3 (a, b et c). La question 3 c), ouverte dans le sujet (un encadrement dont la qualité était laissée au candidat), est ici découpée en étapes guidées ; α_p n'est défini que pour p′ < 100."
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

On note $X$ le numéro de la case où se trouve le jeton à la fin de la réussite. On admet les
résultats suivants, que l'on obtient avec un arbre :
$$P(X = 2) = \frac{7}{36}, \qquad P(X = 3) = \frac{7}{36}, \qquad P(X \geq 4) = \frac{11}{18}, \qquad P(X = 5) = \frac{49}{216}.$$

Sisyphe voudrait connaître sa probabilité de gagner, $P(G) = P(X \geq 100)$, mais sa calculatrice
n'est pas assez puissante pour calculer toute la loi de $X$. Pour deux nombres premiers consécutifs
$p < p'$ inférieurs à $100$ (par exemple $p = 7$ et $p' = 11$), il considère la probabilité
conditionnelle
$$\alpha_p = P_{X > p}(X = p'),$$
c'est-à-dire la probabilité que la réussite se termine sur la case $p'$, sachant que le jeton a
dépassé la case $p$.

1. Calculer $\alpha_2$ et $\alpha_3$.
2. Exprimer $P(G)$ à l'aide des nombres $\alpha_p$, pour $p = 2, 3, 5, \ldots, 89$.
3. On cherche maintenant un encadrement de $\alpha_p$ pour $p \geq 5$, puis de $P(G)$. On pourra
   procéder ainsi.

   a) Imaginons un jeton qui avance avec le dé indéfiniment, sans jamais s'arrêter. Pour tout
   entier $m \geq 0$, on note $u_m$ la probabilité qu'il tombe un jour exactement sur la case
   située $m$ cases plus loin que son point de départ. Ainsi $u_0 = 1$, et on convient que
   $u_m = 0$ pour $m < 0$. Expliquer pourquoi, pour tout $m \geq 1$,
   $$u_m = \frac{u_{m-1} + u_{m-2} + u_{m-3} + u_{m-4} + u_{m-5} + u_{m-6}}{6},$$
   puis calculer $u_1, u_2, \ldots, u_7$.

   b) Soit $p \geq 5$ un nombre premier, $p' < 100$ le nombre premier suivant, et $d = p' - p$.
   Quand $X > p$, le jeton saute par-dessus la case $p$ ; on note $p - \delta$ la dernière case
   qu'il occupe avant ce saut, avec $1 \leq \delta \leq 5$. Montrer que, sachant que le jeton est
   sur la case $p - \delta$ et que le lancer suivant lui fait dépasser la case $p$, la probabilité
   que la réussite se termine sur la case $p'$ vaut
   $$A_\delta = \frac{u_{d-1} + u_{d-2} + \cdots + u_{d-(6-\delta)}}{6 - \delta}.$$

   c) En déduire que $\alpha_p$ est compris entre le plus petit et le plus grand des cinq nombres
   $A_1, A_2, A_3, A_4, A_5$, qui ne dépendent que de l'écart $d$.

   d) De $5$ à $97$, l'écart entre deux nombres premiers consécutifs vaut $2$, $4$, $6$ ou $8$.
   Calculer l'encadrement de $\alpha_p$ obtenu pour chacun de ces écarts, puis en déduire un
   encadrement de $P(G)$ (à la calculatrice).

## Hints

1. **Question 1.** L'événement $X = 3$ est contenu dans l'événement $X > 2$. Que vaut
   $P(X > 2)$ ?
2. **Question 2.** La réussite ne peut pas se terminer sur une case située strictement entre deux
   nombres premiers consécutifs $p$ et $p'$. Exprimer $P(X > p')$ en fonction de $P(X > p)$ et de
   $\alpha_p$.
3. **Question 3 a).** Pour tomber sur la case située $m$ cases plus loin, le jeton est
   d'abord tombé sur l'une des six cases qui la précèdent.
4. **Question 3 b).** Depuis la case $p - \delta$, quels lancers font dépasser la case $p$ ? Sur
   quelles cases le jeton atterrit-il alors ?
5. **Question 3 b).** Entre $p$ et $p'$, il n'y a aucun nombre premier ni aucune case supérieure
   ou égale à $100$ : jusqu'à ce qu'il atteigne ou dépasse $p'$, le jeton se comporte comme le
   jeton qui ne s'arrête jamais.
6. **Question 3 c).** Décomposer l'événement $X > p$ selon la valeur de $\delta$, et appliquer la
   formule des probabilités totales : $\alpha_p$ est une moyenne pondérée des nombres $A_\delta$.
7. **Question 3 d).** D'après la question 2,
   $P(G) = P(X > 5) \times (1 - \alpha_5)(1 - \alpha_7) \cdots (1 - \alpha_{89})$. Plus $\alpha_p$ est grand, plus $1 - \alpha_p$ est petit.

## Solution

**1.** La réussite se termine toujours sur une case au moins égale à $2$, donc l'événement
contraire de $X > 2$ est $X = 2$, et $P(X > 2) = 1 - \frac{7}{36} = \frac{29}{36}$. Comme
l'événement $X = 3$ est contenu dans $X > 2$,
$$\alpha_2 = \frac{P(X = 3)}{P(X > 2)} = \frac{7/36}{29/36} = \frac{7}{29}.$$

De même, $X > 3$ équivaut à $X \geq 4$, et $X = 5$ est contenu dans $X > 3$, donc
$$\alpha_3 = \frac{P(X = 5)}{P(X \geq 4)} = \frac{49/216}{132/216} = \frac{49}{132}.$$

**2.** Soit $p < p'$ deux nombres premiers consécutifs, avec $p' < 100$. Les cases situées
strictement entre $p$ et $p'$ ne sont pas premières et sont inférieures à $100$ : la réussite ne
peut pas s'y terminer. Donc l'événement $X > p$ est la réunion des deux événements incompatibles
$X = p'$ et $X > p'$, et
$$P(X > p') = P(X > p) - P(X = p') = P(X > p) - \alpha_p\,P(X > p) = (1 - \alpha_p)\,P(X > p).$$

En partant de $P(X > 2) = \frac{29}{36}$ et en appliquant cette relation de proche en proche pour
$p = 2, 3, 5, \ldots, 89$, on obtient $P(X > 97)$. Enfin $X > 97$ équivaut à $X \geq 100$, car la
réussite ne peut pas se terminer sur les cases $98$ et $99$. Donc
$$P(G) = \frac{29}{36}\,(1 - \alpha_2)(1 - \alpha_3)(1 - \alpha_5) \cdots (1 - \alpha_{89}),$$
où le produit porte sur les $24$ nombres premiers de $2$ à $89$.

**3. a)** Pour $m \geq 1$, le jeton qui tombe sur la case située $m$ cases plus loin vient
d'une case située $m - i$ cases plus loin, avec $1 \leq i \leq 6$ et $m - i \geq 0$, et il a
obtenu $i$ au lancer suivant. Le jeton avance toujours, il ne passe donc qu'une fois par chaque
case, et ces six façons d'arriver sont incompatibles. Chacune a la probabilité
$u_{m-i} \times \frac{1}{6}$, car le lancer est indépendant de ce qui précède. En additionnant
(avec $u_{m-i} = 0$ quand $m - i < 0$), on obtient la relation demandée.

On calcule de proche en proche :

| $m$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $u_m$ | $1$ | $\frac{1}{6}$ | $\frac{7}{36}$ | $\frac{49}{216}$ | $\frac{343}{1296}$ | $\frac{2401}{7776}$ | $\frac{16807}{46656}$ | $\frac{70993}{279936}$ |
| valeur approchée | $1$ | $\text{0,1667}$ | $\text{0,1944}$ | $\text{0,2269}$ | $\text{0,2647}$ | $\text{0,3088}$ | $\text{0,3602}$ | $\text{0,2536}$ |

Jusqu'à $m = 6$, chaque terme est le précédent multiplié par $\frac{7}{6}$ ; à partir de
$m = 7$, le terme $u_0 = 1$ ne compte plus dans la somme.

**3. b)** Depuis la case $p - \delta$, un lancer de valeur $k$ fait dépasser la case $p$ quand
$k$ vaut $\delta + 1, \delta + 2, \ldots, 6$. Ce sont $6 - \delta$ valeurs, et sachant que l'une d'elles
sort, chacune a la probabilité $\frac{1}{6 - \delta}$. Le jeton atterrit alors sur la case
$p + s$, où $s = k - \delta$ prend chacune des valeurs $1, 2, \ldots, 6 - \delta$ avec la
probabilité $\frac{1}{6 - \delta}$.

Depuis la case $p + s$, la probabilité de finir sur $p'$ vaut $u_{d - s}$ :

- si $s = d$, le jeton est sur $p'$ et la réussite s'y termine : probabilité $1 = u_0$ ;
- si $s > d$, le jeton a dépassé $p'$ : probabilité $0 = u_{d-s}$ ;
- si $s < d$, la case $p + s$ n'est pas première, et jusqu'à ce que le jeton atteigne ou dépasse
  $p'$, il ne rencontre ni nombre premier ni case supérieure ou égale à $100$. La réussite
  continue donc exactement comme pour le jeton qui ne s'arrête jamais, et la probabilité qu'il
  tombe sur $p'$, situé $d - s$ cases plus loin, vaut $u_{d-s}$.

En regroupant, la probabilité cherchée vaut
$$\frac{1}{6 - \delta}\left(u_{d-1} + u_{d-2} + \cdots + u_{d-(6-\delta)}\right) = A_\delta.$$

**3. c)** Pour $\delta = 1, \ldots, 5$, notons $E_\delta$ l'événement « le jeton tombe sur la
case $p - \delta$, puis le lancer suivant lui fait dépasser la case $p$ ». Ces cinq événements
sont incompatibles (le jeton saute une seule fois par-dessus $p$), et leur réunion est exactement
l'événement $X > p$ (certains peuvent avoir une probabilité nulle, par exemple quand $p - \delta$
est premier). D'après la question précédente, $P_{E_\delta}(X = p') = A_\delta$ quand
$P(E_\delta) > 0$. La formule des probabilités totales donne
$$P(X = p') = \sum_{\delta = 1}^{5} P(E_\delta)\,A_\delta,$$
la somme portant sur les $\delta$ tels que $P(E_\delta) > 0$, et donc
$$\alpha_p = \frac{P(X = p')}{P(X > p)} = \sum_{\delta = 1}^{5} \lambda_\delta\,A_\delta, \qquad \text{avec } \lambda_\delta = \frac{P(E_\delta)}{P(X > p)}.$$
Les nombres $\lambda_\delta$ sont positifs ou nuls et leur somme vaut $1$ : $\alpha_p$ est une
moyenne pondérée des $A_\delta$. Si $a$ et $A$ désignent le plus petit et le plus grand des
$A_\delta$, on a donc
$$a = \sum \lambda_\delta\,a \leq \alpha_p \leq \sum \lambda_\delta\,A = A.$$

**3. d)** On calcule les $A_\delta$ avec le tableau de la question a). Pour chaque écart, le
minorant est le plus petit des $A_\delta$ et le majorant le plus grand.

| écart $d$ | $A_1$ | $A_2$ | $A_3$ | $A_4$ | $A_5$ | minorant | majorant |
|---|---|---|---|---|---|---|---|
| $2$ | $\text{0,2333}$ | $\text{0,2917}$ | $\text{0,3889}$ | $\text{0,5833}$ | $\text{0,1667}$ | $\frac{1}{6}$ | $\frac{7}{12}$ |
| $4$ | $\text{0,3176}$ | $\text{0,3970}$ | $\text{0,1960}$ | $\text{0,2106}$ | $\text{0,2269}$ | $\text{0,1959}$ | $\text{0,3970}$ |
| $6$ | $\text{0,2323}$ | $\text{0,2487}$ | $\text{0,2668}$ | $\text{0,2867}$ | $\text{0,3088}$ | $\text{0,2322}$ | $\text{0,3088}$ |
| $8$ | $\text{0,2828}$ | $\text{0,2968}$ | $\text{0,3075}$ | $\text{0,3069}$ | $\text{0,2536}$ | $\text{0,2536}$ | $\text{0,3076}$ |

Les $A_\delta$ sont arrondis au plus proche ; les minorants sont arrondis par défaut et les
majorants par excès, de sorte que l'on a bien minorant $\leq \alpha_p \leq$ majorant.

Par exemple, pour $d = 2$ : $A_1 = \frac{u_1 + u_0}{5} = \frac{7}{30}$ (les termes $u_{-1}$,
$u_{-2}$, $u_{-3}$ sont nuls), et $A_5 = u_1 = \frac{1}{6}$. Les bornes exactes des autres lignes
sont $\frac{127}{648} \leq \alpha_p \leq \frac{343}{864}$ pour $d = 4$,
$\frac{9031}{38880} \leq \alpha_p \leq \frac{2401}{7776}$ pour $d = 6$, et
$\frac{70993}{279936} \leq \alpha_p \leq \frac{258271}{839808}$ pour $d = 8$.

*Les écarts.* Des $22$ couples de nombres premiers consécutifs de $(5, 7)$ à $(89, 97)$, sept ont
un écart $2$ ($5$, $11$, $17$, $29$, $41$, $59$, $71$), sept un écart $4$ ($7$, $13$, $19$, $37$,
$43$, $67$, $79$), sept un écart $6$ ($23$, $31$, $47$, $53$, $61$, $73$, $83$) et un seul un
écart $8$ ($89$).

*L'encadrement de $P(G)$.* D'après la question 2 et la question 1,
$$P(G) = P(X > 5) \times (1 - \alpha_5)(1 - \alpha_7) \cdots (1 - \alpha_{89}),$$
avec $P(X > 5) = \frac{29}{36} \times \frac{22}{29} \times \frac{83}{132} = \frac{83}{216}$. Chaque
facteur $1 - \alpha_p$ est positif et se trouve encadré en remplaçant $\alpha_p$ par ses bornes.
En multipliant ces encadrements de nombres positifs :
$$P(G) \geq \frac{83}{216} \times \left(\frac{5}{12}\right)^{7} \times \left(\frac{521}{864}\right)^{7} \times \left(\frac{5375}{7776}\right)^{7} \times \frac{581537}{839808},$$
$$P(G) \leq \frac{83}{216} \times \left(\frac{5}{6}\right)^{7} \times \left(\frac{521}{648}\right)^{7} \times \left(\frac{29849}{38880}\right)^{7} \times \frac{208943}{279936}.$$

**Conclusion :** à la calculatrice,
$$\text{1,2} \times 10^{-6} \leq P(G) \leq \text{2,8} \times 10^{-3}.$$
La probabilité de gagner une réussite est donc inférieure à $\text{0,3}\ \%$ : Sisyphe perd
presque toujours.

**Bilan.** La probabilité de gagner se factorise en un produit : $P(X > 2) = \frac{29}{36}$, puis
$24$ probabilités conditionnelles $1 - \alpha_p$, une par nombre premier à franchir de $3$ à $97$. Chacune se comprend en regardant d'où le jeton
saute par-dessus le nombre premier : c'est une moyenne pondérée de quantités que l'on sait
calculer, ce qui donne un encadrement rigoureux sans calculer toute la loi de $X$.

## Going further

- L'encadrement est rigoureux mais large. On peut l'améliorer : pour un nombre premier $p$ donné,
  la dernière case avant le saut ne peut pas être une case première, donc certaines valeurs de
  $\delta$ sont impossibles (pour $p = 13$, la case $13 - 2 = 11$ est exclue). En ne gardant que
  les $\delta$ possibles, la borne inférieure passe à environ $\text{9,6} \times 10^{-6}$.
- Le calcul exact, fait par un programme (exercice 40446), donne
  $P(G) \approx \text{3,45} \times 10^{-4}$.
- Quand $m$ devient grand, $u_m$ se rapproche de $\frac{2}{7}$. Pourquoi ce nombre ? *Le jeton
  avance en moyenne de $\text{3,5}$ cases par lancer, il tombe donc en moyenne sur une case sur
  $\text{3,5}$.* Si l'on remplace chaque $\alpha_p$ par $\frac{2}{7}$, on trouve
  $\frac{83}{216} \times \left(\frac{5}{7}\right)^{22} \approx \text{2,3} \times 10^{-4}$, assez
  proche de la vraie valeur.
- Le début du problème est dans les exercices 40445 et 40446.
