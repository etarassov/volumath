---
id: "8160"
title: "Léo l'escargot et ses observateurs"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [recouvrement, intervalle, optimisation, extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 66 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil. L'énoncé d'origine ne précise pas que Léo n'a jamais reculé ; sans cette précision la distance parcourue n'est pas bornée. Elle a été ajoutée."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Aujourd'hui, Léo l'escargot a avancé le long d'un chemin de $8$ heures du matin à $6$ heures du soir, sans jamais reculer.

Plusieurs personnes l'ont observé pendant cette journée. Chacune est restée **exactement une heure**, et chacune a constaté que, pendant son heure de présence, Léo avait avancé d'**exactement un mètre**. Par ailleurs, à tout moment de la journée, il y avait au moins un observateur.

Quelle est la plus grande distance que Léo a pu parcourir ?

## Hints

1. Mesure le temps en heures à partir de $8$ h. La journée est alors l'intervalle $[0\,;\,10]$, et un observateur est un intervalle $[t\,;\,t+1]$ avec $0 \leqslant t \leqslant 9$. Ces intervalles recouvrent $[0\,;\,10]$.
2. Commence par une majoration. Si $k$ observateurs suffisent déjà à couvrir toute la journée, pourquoi Léo n'a-t-il pas pu parcourir plus de $k$ mètres ?
3. On peut donc se contenter d'une famille d'observateurs qui couvre la journée et dont **aucun** ne peut être retiré sans laisser un trou. Range-les par heure d'arrivée : $t_1 \leqslant t_2 \leqslant \cdots \leqslant t_k$.
4. Que se passerait-il si $t_{j+2} \leqslant t_j + 1$ ? Regarde l'observateur numéro $j+1$.
5. Tu obtiens $t_{j+2} > t_j + 1$. Fais alors avancer les indices de deux en deux, de $t_1$ ou de $t_2$ jusqu'à $t_k \leqslant 9$. Combien d'observateurs au maximum ?
6. Pour la construction, prends des observateurs qui arrivent à intervalles réguliers un peu plus longs qu'une demi-heure, et fais avancer Léo par petits bonds, chacun placé à un instant où un seul observateur le regarde.

## Solution

Mesurons le temps en heures à partir de $8$ h du matin : la journée est l'intervalle $[0\,;\,10]$. Notons $f(t)$ la position de Léo à l'instant $t$ ; $f$ est croissante puisqu'il ne recule jamais, et la distance parcourue vaut $D = f(10) - f(0)$.

Chaque observateur correspond à un intervalle $[t\,;\,t+1]$ contenu dans $[0\,;\,10]$, donc $0 \leqslant t \leqslant 9$, et il a vu $f(t+1) - f(t) = 1$. Ces intervalles recouvrent $[0\,;\,10]$.

**Étape 1 : on peut supprimer des observateurs.**

Les observateurs sont en nombre fini. Tant qu'il en existe un dont la suppression laisse encore toute la journée couverte, supprimons-le. Au bout d'un nombre fini d'étapes, on obtient une famille d'observateurs qui couvre encore $[0\,;\,10]$ et dont **aucun** ne peut être enlevé.

Notons $k$ le nombre d'observateurs restants et $t_1 \leqslant t_2 \leqslant \cdots \leqslant t_k$ leurs heures d'arrivée. Comme il faut couvrir l'instant $0$ et l'instant $10$, on a $t_1 = 0$ et $t_k = 9$.

**Étape 2 : Léo a parcouru au plus $k$ mètres.**

Construisons une chaîne d'observateurs qui traverse la journée. Partons du premier, d'intervalle $[0\,;\,1]$. Tant que l'extrémité droite atteinte n'est pas $10$, il existe un observateur qui couvre cet instant et va plus loin, puisque les intervalles couvrent tout. On obtient ainsi des observateurs $J_1, J_2, \ldots, J_r$, d'intervalles $[\alpha_1\,;\,\beta_1], \ldots, [\alpha_r\,;\,\beta_r]$, avec

$$\alpha_1 = 0, \qquad \beta_r = 10, \qquad \alpha_{i+1} \leqslant \beta_i \ \text{ pour tout } i .$$

Comme $f$ est croissante et $\alpha_{i+1} \leqslant \beta_i$, on a $f(\alpha_{i+1}) \leqslant f(\beta_i)$, donc

$$D = f(\beta_r) - f(\alpha_1) = \sum_{i=1}^{r}(f(\beta_i) - f(\alpha_i)) \ +\ \sum_{i=1}^{r-1}(f(\alpha_{i+1}) - f(\beta_i)) .$$

Chacun des termes de la seconde somme est négatif ou nul, donc

$$D \ \leqslant\ \sum_{i=1}^{r}(f(\beta_i) - f(\alpha_i)) \ = \ r ,$$

puisque chaque observateur a vu exactement $1$ mètre.

Ces $r$ observateurs font partie des $k$ restants, donc $r \leqslant k$ et

$$D \leqslant k .$$

**Étape 3 : il reste au plus $18$ observateurs.**

Fixons $j$ avec $1 \leqslant j \leqslant k-2$ et supposons $t_{j+2} \leqslant t_j + 1$. Alors les intervalles des observateurs $j$ et $j+2$ se recouvrent ou se touchent, donc leur réunion est l'intervalle $[t_j\,;\,t_{j+2}+1]$ tout entier. Or

$$t_j \leqslant t_{j+1} \qquad \text{et} \qquad t_{j+1} + 1 \leqslant t_{j+2} + 1 ,$$

donc l'intervalle de l'observateur $j+1$ est contenu dans cette réunion : on pourrait le supprimer sans créer de trou. C'est impossible d'après l'étape 1. Donc

$$t_{j+2} > t_j + 1 \qquad \text{pour tout } j \leqslant k-2 .$$

Les heures d'arrivée augmentent donc de plus de $1$ quand on avance de deux indices.

- Si $k = 2m$ est pair, on part de $t_2$ et on saute de deux en deux jusqu'à $t_{2m} = t_k = 9$ : il y a $m-1$ sauts, donc $9 = t_{2m} > t_2 + (m-1) \geqslant m-1$. D'où $m < 10$, donc $m \leqslant 9$ et $k \leqslant 18$.
- Si $k = 2m+1$ est impair, on part de $t_1 = 0$ et on saute de deux en deux jusqu'à $t_{2m+1} = 9$ : il y a $m$ sauts, donc $9 > 0 + m$, d'où $m \leqslant 8$ et $k \leqslant 17$.

Dans tous les cas $k \leqslant 18$, et avec l'étape 2 :

$$D \leqslant 18 .$$

**Étape 4 : $18$ mètres sont possibles.**

Posons $h = \dfrac{9}{17}$ heure, soit environ $31$ min $46$ s, et faisons arriver $18$ observateurs aux instants

$$t_j = (j-1)\,h \qquad (j = 1, 2, \ldots, 18) .$$

Le premier arrive à $t_1 = 0$ et le dernier à $t_{18} = 17h = 9$, donc repart à $10$ : tous tiennent dans la journée. Deux arrivées consécutives sont séparées de $h < 1$, donc les intervalles se chevauchent et il n'y a aucun trou : la journée est bien couverte.

Par ailleurs $t_{j+2} - t_j = 2h = \dfrac{18}{17} > 1$. Regardons alors, pour $2 \leqslant j \leqslant 17$, l'intervalle

$$F_j \ = \ \,]\,t_j + \tfrac{8}{17}\ ;\ t_j + \tfrac{9}{17}\,[ \quad \text{(intervalle ouvert)} .$$

Il est contenu dans l'intervalle de l'observateur $j$. Il est après la fin de l'observateur $j-1$, qui repart à $t_{j-1} + 1 = t_j + \tfrac{8}{17}$ ; et il est avant l'arrivée de l'observateur $j+1$, à $t_j + \tfrac{9}{17}$. Comme les observateurs sont rangés par heure d'arrivée, aucun autre qu'eux ne peut couvrir $F_j$. Donc **pendant $F_j$, seul l'observateur $j$ regarde Léo.**

On pose de même $F_1 = [\,0\ ;\ \tfrac{9}{17}\,[$ et $F_{18} = \,]\,9 + \tfrac{8}{17}\ ;\ 10\,]$, qui jouent le même rôle pour le premier et le dernier observateur.

Ces $18$ fenêtres sont deux à deux disjointes. Faisons maintenant avancer Léo de $1$ mètre pendant chaque fenêtre $F_j$, et immobile le reste du temps.

- L'observateur $j$ voit passer la fenêtre $F_j$ en entier, donc au moins $1$ m.
- Il ne voit aucune autre fenêtre, puisque $F_i$ n'est regardée que par l'observateur $i$.

Chaque observateur voit donc exactement $1$ m, comme demandé, et Léo a parcouru $18 \times 1 = 18$ mètres.

$$\boxed{\ \text{Léo a pu parcourir au plus } 18 \text{ mètres, et cette distance est atteignable.}\ }$$

## Going further

Le même raisonnement pour une journée de $T$ heures donne $2T - 2$ mètres. Ici $T = 10$ et l'on retrouve $18$.

Ce qui est frappant, c'est que les observateurs, censés surveiller Léo, servent en réalité à lui permettre d'aller plus loin : avec dix observateurs seulement, aux heures rondes, Léo ne pourrait parcourir que $10$ mètres. Ce sont les chevauchements qui créent les petites fenêtres où un seul regard se pose sur lui, et c'est là qu'il fonce.
