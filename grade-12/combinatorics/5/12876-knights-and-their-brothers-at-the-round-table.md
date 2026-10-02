---
id: "12876"
title: "Les chevaliers et leurs frères autour de la table ronde"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 120
tags: [table-ronde, echanges, monovariant, recurrence, minoration, majoration, double-comptage, principe-extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 janvier 2025"
  reference: "2025-10_Sujet-Test-2-2024-2025.pdf, test senior, exercice 7 ; corrigé 2025-10_Corrige-Test-2-2024-2025.pdf (on suit le plan du corrigé, paires croisées, séparées et « fades », avec ses deux lemmes ; le corrigé compte comme séparée toute paire non croisée qui contient deux frères assis face à face, et avec cette convention son lemme 1 est faux : pour n = 3 et la disposition 1, 2, 2, 1, 3, 3, il donne s = 2 et f = 1 ; ici on choisit un seul des deux arcs pour deux frères face à face, ce qui répare la preuve ; la preuve du lemme 2 est réécrite ; au passage, le corrigé écrit 2c + s au lieu de c + 2s, et « Dans un second temps » deux fois)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-2-2024-2025.pdf"
---

## Statement

Soit $n \geq 1$ un entier. $2n$ chevaliers sont assis autour d'une table ronde. Chaque chevalier a exactement un frère parmi les chevaliers assis à la table, et souhaite lui serrer la main. Deux chevaliers ne peuvent se serrer la main que s'ils sont assis côte à côte.

Un **coup** consiste à choisir deux chevaliers assis côte à côte et à échanger leurs places.

Déterminer, en fonction de $n$, le plus petit entier $k$ tel que, quelle que soit la disposition de départ des chevaliers, on puisse effectuer $k$ coups au bout desquels chaque paire de frères se sera serré la main au moins une fois pendant la réunion.

## Hints

1. Essayez $n = 2$ et $n = 3$ quand chaque chevalier est assis exactement en face de son frère.
2. Pour la minoration, gardez cette disposition. Combien de coups doivent concerner un chevalier d'une fratrie donnée ? Un coup concerne combien de fratries ?
3. Pour la majoration, regardez deux fratries à la fois : soit elles « se croisent », soit l'une est enfermée entre les deux frères de l'autre, soit aucune des deux. Une fratrie enfermée dans une autre coûte deux coups.
4. Montrez que les paires de fratries « enfermées » sont au plus aussi nombreuses que les paires du troisième type. Pour cela, retirez de la table les deux frères les plus éloignés l'un de l'autre, et raisonnez par récurrence sur $n$.

## Solution

La réponse : **le plus petit entier qui convient est $k = n(n - 1)/2$.**

On appelle **fratrie** une paire de deux frères. Il y a $n$ fratries.

### Il faut au moins n(n − 1)/2 coups

On place chaque chevalier exactement en face de son frère. La **distance** entre deux sièges est le plus petit nombre de pas pour aller de l'un à l'autre en tournant autour de la table. Deux frères sont au départ à distance $n$, et ils peuvent se serrer la main quand ils sont à distance $1$.

Fixons une fratrie qui finit par se serrer la main. Tant que les deux frères ne sont pas côte à côte, un coup ne peut pas les concerner tous les deux. Un coup qui en déplace un seul le fait avancer ou reculer d'un siège, et change leur distance d'au plus $1$. Un coup qui ne les concerne pas ne la change pas. Pour passer de $n$ à $1$, il faut donc au moins $n - 1$ coups qui concernent un chevalier de cette fratrie.

Si l'on fait $k$ coups, chacun concerne deux chevaliers, donc au plus deux fratries. En ajoutant, pour les $n$ fratries, le nombre de coups qui les concernent, on trouve au plus $2k$, et au moins $n(n - 1)$. Donc $2k \geq n(n - 1)$, c'est-à-dire

$$k \geq \frac{n(n - 1)}{2}.$$

### Petits arcs et longueurs

On montre maintenant que, quelle que soit la disposition de départ, on peut faire au plus $n(n - 1)/2$ coups au bout desquels **tous** les frères sont côte à côte en même temps. Si l'on a fini plus tôt, on complète par des coups quelconques : cela ne gêne pas, les mains déjà serrées le restent.

Soit $P$ une fratrie, formée des frères $X$ et $Y$. Les $2n - 2$ autres chevaliers sont répartis en deux côtés : ceux que l'on rencontre en allant de $X$ à $Y$ dans un sens, et ceux que l'on rencontre dans l'autre sens. Le **petit arc** de $P$, noté $\alpha_P$, est l'ensemble des sièges du côté qui compte le moins de chevaliers. Si les deux côtés en comptent autant, $n - 1$ chacun, on choisit l'un des deux une fois pour toutes.

La **longueur** $\ell_P$ est le nombre de chevaliers du petit arc. On a $0 \leq \ell_P \leq n - 1$, et $\ell_P = 0$ exactement quand $X$ et $Y$ sont côte à côte.

Une remarque servira souvent. Le petit arc est une suite de sièges consécutifs, et les deux sièges qui le bordent sont ceux de $X$ et de $Y$. Donc :

> (R) Si deux sièges voisins ne sont occupés ni par $X$ ni par $Y$, ils sont soit tous les deux dans $\alpha_P$, soit tous les deux en dehors.

### Trois sortes de paires de fratries

Soit $P$ et $Q$ deux fratries différentes.

- $P$ et $Q$ sont **croisées** si les deux frères de $Q$ sont de deux côtés différents de $P$. Cela revient à dire qu'en faisant le tour de la table, on rencontre alternativement un frère de $P$ et un frère de $Q$ : la définition ne dépend donc pas de l'ordre de $P$ et $Q$. Dans ce cas, $\alpha_P$ contient exactement un frère de $Q$, et $\alpha_Q$ exactement un frère de $P$.
- $Q$ est **enfermée** dans $P$ si les deux frères de $Q$ sont dans $\alpha_P$. Alors l'arc qui va d'un frère de $Q$ à l'autre sans sortir de $\alpha_P$ compte au plus $\ell_P - 2 \leq n - 3$ chevaliers, et l'autre côté au moins $n + 1$ : c'est donc le petit arc de $Q$, et $\ell_Q \leq \ell_P - 2$. En particulier, il ne contient ni $X$ ni $Y$, et **$P$ n'est pas enfermée dans $Q$**. On dit que la paire $\{P, Q\}$ est **emboîtée**.
- Sinon, la paire $\{P, Q\}$ est dite **indépendante**.

On note $c$, $e$ et $i$ les nombres de paires croisées, emboîtées et indépendantes. Chaque paire de deux fratries est d'une seule sorte, et il y a $n(n - 1)/2$ façons de choisir deux fratries parmi $n$, donc

$$c + e + i = \frac{n(n - 1)}{2}.$$

Tout repose sur deux propriétés :

- **Propriété 1.** On a toujours $e \leq i$.
- **Propriété 2.** On peut, en au plus $c + 2e$ coups, amener tous les frères côte à côte.

Avec les deux, le nombre de coups est au plus $c + 2e \leq c + e + i = n(n - 1)/2$, ce qu'on voulait.

### Preuve de la propriété 1

On montre par récurrence sur $n$ que, pour toute disposition de $2n$ chevaliers et tout choix des petits arcs, on a $e \leq i$. Pour $n = 1$, il n'y a aucune paire de fratries et $0 \leq 0$.

Soit $n \geq 2$. On choisit une fratrie $P = \{X, Y\}$ dont la longueur $\ell_P$ est la plus grande possible.

**Les paires qui contiennent $P$.** Soit $x$ le nombre de fratries croisées avec $P$, et $y$ le nombre de fratries enfermées dans $P$. Aucune fratrie $Q$ ne contient $P$ enfermée, sinon on aurait $\ell_Q \geq \ell_P + 2$. Comptons les chevaliers de $\alpha_P$ : chaque fratrie croisée avec $P$ en fournit un, chaque fratrie enfermée dans $P$ en fournit deux, les autres aucun. Donc $x + 2y = \ell_P \leq n - 1$. Les $n - 1 - x - y$ autres fratries forment avec $P$ une paire indépendante, et

$$n - 1 - x - y \geq (x + 2y) - x - y = y.$$

Parmi les paires qui contiennent $P$, il y a donc $y$ paires emboîtées et au moins $y$ paires indépendantes.

**On retire $X$ et $Y$.** Les $2n - 2$ autres chevaliers restent assis dans le même ordre autour d'une table plus petite. Pour chaque autre fratrie $Q$, on garde comme petit arc l'ancien $\alpha_Q$, privé des sièges de $X$ et $Y$. Vérifions que c'est bien un côté qui compte au plus autant de chevaliers que l'autre.

- Si $Q$ est croisée avec $P$, ce côté perd un chevalier et l'autre aussi : il en reste $\ell_Q - 1$ contre $2n - 3 - \ell_Q$, et $\ell_Q - 1 \leq 2n - 3 - \ell_Q$ car $\ell_Q \leq n - 1$.
- Sinon, $X$ et $Y$ sont tous les deux hors de $\alpha_Q$ : il reste $\ell_Q$ chevaliers contre $2n - 4 - \ell_Q$, et il suffit que $\ell_Q \leq n - 2$. Si $Q$ est enfermée dans $P$, on a $\ell_Q \leq \ell_P - 2 \leq n - 3$. Si la paire est indépendante et si l'on avait $\ell_Q = n - 1$, l'autre côté de $Q$ compterait $n - 1$ chevaliers, dont $X$, $Y$ et les $\ell_P$ chevaliers de $\alpha_P$. Cela donnerait $\ell_P \leq n - 3 < \ell_Q$, contraire au choix de $P$.

Pour deux fratries $Q$ et $R$ autres que $P$, la sorte de la paire $\{Q, R\}$ dépend seulement des frères de $R$ qui sont dans $\alpha_Q$ et des frères de $Q$ qui sont dans $\alpha_R$. Rien de cela ne change. Si $e'$ et $i'$ sont les nombres de paires emboîtées et indépendantes à la petite table, on a donc $e = e' + y$ et $i \geq i' + y$. L'hypothèse de récurrence donne $e' \leq i'$, donc $e \leq i$.

### Ce que fait un coup

Soit $U$ et $V$ deux chevaliers voisins, de fratries différentes $Q_U$ et $Q_V$, assis sur les sièges $u$ et $v$. On les échange. On suppose que **$\alpha_{Q_U}$ contient le siège $v$** : le petit arc de $Q_U$ part de $U$ dans la direction de $V$.

- Après le coup, $U$ est assis en $v$ et se rapproche de son frère. Son nouveau côté est l'ancien $\alpha_{Q_U}$ privé de $v$ : il a raccourci, c'est donc encore le petit arc. De même, dans le type 1 ci-dessous, le côté de $Q_V$ perd le siège $u$.
- Si $\alpha_{Q_V}$ ne contient pas $u$, alors $V$, assis maintenant en $u$, s'éloigne de son frère : le côté de $Q_V$ gagne le siège $v$, où est maintenant $U$, et passe à $\ell_{Q_V} + 1$ chevaliers. Si $\ell_{Q_V} \leq n - 2$, cela fait au plus $n - 1$, et on peut le garder comme petit arc.
- D'après (R), aucun autre chevalier n'entre dans un petit arc ou n'en sort, et les petits arcs des autres fratries ne changent pas. Seule la sorte de la paire $\{Q_U, Q_V\}$ peut changer.

**Coup de type 1 : $\alpha_{Q_V}$ contient aussi $u$.** Alors $Q_V$ n'est pas enfermée dans $Q_U$, sinon $\alpha_{Q_V}$ serait à l'intérieur de $\alpha_{Q_U}$, qui ne contient pas $u$. De même dans l'autre sens, donc $Q_U$ et $Q_V$ sont croisées. Après le coup, $V$ n'est plus dans le petit arc de $Q_U$, son frère n'y était pas, et de même pour $U$ et le petit arc de $Q_V$ : la paire devient indépendante. **$c$ diminue de $1$.**

**Coup de type 2 : $\alpha_{Q_V}$ ne contient pas $u$, et $Q_V$ est enfermée dans $Q_U$.** Alors $\ell_{Q_V} \leq \ell_{Q_U} - 2 \leq n - 3$. Après le coup, le petit arc de $Q_U$ contient le frère de $V$ mais plus $V$ : la paire devient croisée. **$e$ diminue de $1$ et $c$ augmente de $1$.**

Dans les deux cas, la quantité $c + 2e$ diminue exactement de $1$.

### Preuve de la propriété 2

Il suffit de montrer que, tant que deux frères ne sont pas côte à côte, il existe un coup de type 1 ou 2. En effet, $c + 2e$ est un entier positif ou nul, qui diminue de $1$ à chaque coup : on ne peut pas jouer plus de $c + 2e$ tels coups, et on s'arrête seulement quand tous les frères sont côte à côte.

Parmi les fratries dont les frères ne sont pas côte à côte, on en choisit une, $P = \{X, Y\}$, de longueur $\ell = \ell_P \geq 1$ la plus petite possible. On note $s_0$, $s_1$, ..., $s_\ell$, $s_{\ell + 1}$ les sièges que l'on rencontre en allant de $X$ à $Y$ par le petit arc : $X$ est en $s_0$, $Y$ en $s_{\ell + 1}$, et $\alpha_P = \{s_1, \ldots, s_\ell\}$.

Soit $Z$ un chevalier de $\alpha_P$, de fratrie $Q$.

- Si $Q$ est enfermée dans $P$, alors $\ell_Q < \ell$, donc $\ell_Q = 0$ par le choix de $P$ : le frère de $Z$ est assis à côté de lui, dans $\alpha_P$.
- Sinon, $Q$ est croisée avec $P$, et le frère de $Z$ est hors de $\alpha_P$. Le petit arc de $Q$ contient exactement un des deux frères $X$ et $Y$. S'il contient $Y$, on dit que $Z$ **regarde vers $Y$** : son petit arc contient alors tous les sièges qui vont du siège de $Z$ jusqu'à celui de $Y$. Sinon, son petit arc contient tous les sièges qui vont du siège de $Z$ jusqu'à celui de $X$.

On dit aussi que $X$ regarde vers $Y$. Soit $j$ le plus grand indice, entre $0$ et $\ell$, tel que les chevaliers assis en $s_0$, $s_1$, ..., $s_j$ regardent tous vers $Y$. Soit $U$ le chevalier assis en $s_j$ et $V$ celui assis en $s_{j + 1}$. Le petit arc de $Q_U$ contient $s_{j + 1}$, ..., $s_\ell$.

- Si $j = \ell$, alors $V = Y$, et le petit arc $\alpha_P$ de $Y$ contient $s_\ell$. Comme $\ell \geq 1$, $U$ n'est pas $X$, c'est un chevalier d'une fratrie croisée avec $P$. Le coup qui échange $U$ et $V$ est de type 1.
- Si $j < \ell$ et si $V$ est d'une fratrie croisée avec $P$, alors $V$ ne regarde pas vers $Y$, par le choix de $j$. Son petit arc contient donc $s_j$. Les chevaliers $U$ et $V$ ne sont pas frères : $U$ est $X$ ou bien son frère est hors de $\alpha_P$. Le coup est de type 1.
- Si $j < \ell$ et si $V$ est d'une fratrie enfermée dans $P$, son frère est assis à côté de lui dans $\alpha_P$, et ce n'est pas $U$. Il est donc en $s_{j + 2}$, avec $j + 2 \leq \ell$. Les deux frères sont dans le petit arc de $Q_U$, et le petit arc de $Q_V$ est vide. Le coup est de type 2.

Dans tous les cas, il existe un coup de type 1 ou 2, ce qui prouve la propriété 2.

### Conclusion

Quelle que soit la disposition de départ, $n(n - 1)/2$ coups suffisent, et quand chaque chevalier est assis en face de son frère, il en faut au moins autant. **Le plus petit entier $k$ est $n(n - 1)/2$.**

## Going further

1. Pour $n = 3$, les chevaliers sont assis dans l'ordre $1, 2, 2, 1, 3, 3$ autour de la table, où deux frères portent le même numéro. Calculez $c$, $e$ et $i$, puis amenez tous les frères côte à côte en deux coups.
2. Dans cette même disposition, la somme des longueurs des trois fratries vaut $2$. Trouvez un coup après lequel elle vaut encore $2$, alors que $c + 2e$ a diminué. Pourquoi la somme des longueurs ne suffit-elle pas à prouver la propriété 2 ?
