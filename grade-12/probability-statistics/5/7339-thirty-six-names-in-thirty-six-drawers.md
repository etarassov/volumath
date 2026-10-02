---
id: "7339"
title: "Trente-six noms dans trente-six tiroirs"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 60
tags: [probabilite, permutations, cycle, denombrement, comparaison-serie-integrale]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la première mi-temps », en TD, exercice 85. L'énoncé imprimé dit « moins de 18 tiroirs », ce qui ne donne que 26,5 % ; il faut lire « au plus 18 ». La solution imprimée comporte aussi deux coquilles, voir plus bas."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Trente-six stagiaires sont enfermés par un geôlier joueur. Dans une grande pièce, il a disposé $36$ tiroirs numérotés de $1$ à $36$. Il a écrit les noms des $36$ stagiaires sur $36$ papiers, et il a glissé un papier dans chaque tiroir, **au hasard** : les $36!$ rangements possibles sont également probables.

Les stagiaires entrent ensuite dans la pièce **un par un**. Chacun peut ouvrir jusqu'à $18$ tiroirs, c'est-à-dire la moitié, et doit y trouver son propre nom. Puis il referme tout, ne laisse aucune trace, et sort par une autre porte sans pouvoir communiquer avec les suivants.

Si **tous** trouvent leur nom, tout le monde est libéré. Si un seul échoue, personne ne sort.

Les stagiaires peuvent se mettre d'accord sur une stratégie **avant** que le premier n'entre.

**Trouver une stratégie qui leur donne au moins $30\,\%$ de chances de s'en sortir.**

## Hints

1. Commence par la stratégie bête : chacun ouvre $18$ tiroirs au hasard. Quelle est la probabilité de survie ? Tu obtiendras $(1/2)^{36}$, c'est-à-dire à peu près zéro. Il faut donc **lier** entre eux les sorts des $36$ stagiaires.
2. Numérote les stagiaires de $1$ à $36$. Le rangement des papiers définit alors une application de $\{1, \ldots, 36\}$ dans lui-même : le tiroir $i$ contient le nom $p(i)$. Quelle est la nature de cette application ?
3. Une permutation se décompose en **cycles**. Dessine-les pour une petite permutation, disons de $\{1, \ldots, 6\}$.
4. Voici la stratégie : le stagiaire $i$ ouvre d'abord le tiroir $i$, lit le nom $p(i)$ qui s'y trouve, puis ouvre le tiroir numéro $p(i)$, et ainsi de suite. Où cette promenade le mène-t-elle, et au bout de combien d'étapes ?
5. Tout le monde survit si et seulement si tous les cycles de $p$ sont courts. Courts comment ?
6. Il reste à majorer la probabilité qu'il existe un long cycle. Combien de permutations de $\{1, \ldots, 36\}$ ont un cycle d'une longueur $k$ donnée, avec $k \geqslant 19$ ? Remarque d'abord qu'il ne peut pas y en avoir deux.
7. Tu obtiendras une somme $\sum 1/k$. Compare chaque terme à une intégrale.

## Solution

### La stratégie

Numérotons les stagiaires de $1$ à $36$, et notons $p(i)$ le nom écrit sur le papier du tiroir $i$ (vu comme le numéro du stagiaire). Comme chaque nom apparaît une fois et une seule, l'application
$$p : \{1, \ldots, 36\} \longrightarrow \{1, \ldots, 36\}$$
est une **permutation**.

**Stratégie.** Le stagiaire $i$ ouvre le tiroir $i$. S'il n'y trouve pas son nom, il y lit un numéro $p(i)$ et ouvre le tiroir $p(i)$. Puis le tiroir $p(p(i))$, et ainsi de suite, jusqu'à trouver son nom ou avoir ouvert $18$ tiroirs.

### Pourquoi cette promenade finit toujours par retomber sur le bon tiroir

Le stagiaire $i$ visite successivement les tiroirs
$$i, \quad p(i), \quad p(p(i)), \quad p(p(p(i))), \quad \ldots$$

C'est exactement le **cycle de $p$ qui contient $i$**. Comme $p$ est une permutation d'un ensemble fini, cette suite revient nécessairement à son point de départ, et le premier retour se fait en $i$ lui-même (car $p$ est injective). Notons $\ell_i$ la longueur de ce cycle.

Le stagiaire $i$ trouve son nom au $\ell_i$-ième tiroir ouvert : c'est le tiroir $j$ tel que $p(j) = i$, c'est-à-dire l'avant-dernier point du cycle.

**Conclusion : le stagiaire $i$ réussit si et seulement si $\ell_i \leqslant 18$.**

Tout le monde survit donc **si et seulement si tous les cycles de $p$ ont une longueur au plus $18$**, c'est-à-dire s'il n'existe pas de cycle de longueur $\geqslant 19$.

### La probabilité d'avoir un long cycle

Un cycle de longueur $\geqslant 19$ utilise plus de la moitié des $36$ éléments : il ne peut donc pas y en avoir deux. Les événements
$$L_k = \text{« } p \text{ a un cycle de longueur } k \text{ »}, \qquad k = 19, 20, \ldots, 36 ,$$
sont donc deux à deux incompatibles.

**Comptons les permutations de $L_k$.** Pour en construire une :

- on choisit les $k$ éléments du cycle : $\displaystyle \binom{36}{k}$ façons ;
- on les arrange en cycle : $(k-1)!$ façons (on fixe le premier, puis on ordonne les $k-1$ autres) ;
- on permute librement les $36-k$ éléments restants : $(36-k)!$ façons.

D'où
$$\#L_k = \binom{36}{k} (k-1)! \, (36-k)! = \frac{36!}{k! \, (36-k)!} \times (k-1)! \times (36-k)! = \frac{36!}{k} .$$

La probabilité vaut donc, très simplement,
$$P(L_k) = \frac{36!/k}{36!} = \frac{1}{k} .$$

Par incompatibilité,
$$P(\text{échec}) = \sum_{k=19}^{36} \frac{1}{k} .$$

### On majore cette somme

Pour $k \geqslant 1$, la fonction $x \mapsto 1/x$ est décroissante, donc sur l'intervalle $[k-1, k]$ on a $\frac{1}{x} \geqslant \frac{1}{k}$, d'où
$$\frac{1}{k} \leqslant \int_{k-1}^{k} \frac{\mathrm{d}x}{x} .$$

En sommant pour $k$ de $19$ à $36$, les intervalles se recollent :
$$\sum_{k=19}^{36} \frac{1}{k} \leqslant \int_{18}^{36} \frac{\mathrm{d}x}{x} = \ln 36 - \ln 18 = \ln 2 \approx \text{0,6932} .$$

Donc
$$P(\text{survie}) = 1 - \sum_{k=19}^{36} \frac{1}{k} \geqslant 1 - \ln 2 \approx \text{0,3069} .$$

$$\boxed{\text{Cette stratégie donne plus de } 30\,\% \text{ de chances de survie.}}$$

*(La valeur exacte est $1 - \sum_{k=19}^{36} \frac{1}{k} \approx \text{0,3205}$, soit un peu plus de $32\,\%$.)*

### Ce qui rend le résultat surprenant

Avec $36$ stagiaires qui ouvriraient chacun $18$ tiroirs au hasard, la probabilité de survie serait $\left(\tfrac{1}{2}\right)^{36}$, soit moins d'une chance sur $68$ milliards. La stratégie ci-dessus la fait passer à près d'une chance sur trois — **sans qu'aucun stagiaire n'ait plus d'une chance sur deux individuellement.** Ce qui change, c'est que les réussites deviennent presque toutes simultanées : on ne multiplie plus $36$ petites probabilités, on parie une seule fois sur la structure du rangement.

Et la borne $1 - \ln 2$ ne dépend pas du nombre de stagiaires : avec $100$ prisonniers ouvrant $50$ tiroirs, ou $1000$ ouvrant $500$, la réponse reste au-dessus de $30\,\%$.

## Going further

1. Où la démonstration utilise-t-elle que chaque stagiaire peut ouvrir la **moitié** des tiroirs ? Que devient la probabilité s'ils n'ont droit qu'à $17$ tiroirs ? *(Réponse : environ $\text{26,5}\,\%$ — c'est ce que donne l'énoncé imprimé dans le polycopié, qui dit « moins de 18 ».)*
2. Minore de la même façon $\sum_{k=19}^{36} \frac{1}{k}$ par une intégrale, et encadre ainsi la probabilité de survie.
3. Avec $2n$ prisonniers ouvrant chacun $n$ tiroirs, montre que la probabilité de survie tend vers $1 - \ln 2$ quand $n$ devient grand.
4. Pourquoi la stratégie ne marcherait-elle plus si le geôlier, au lieu de tirer le rangement au hasard, le choisissait après avoir entendu la discussion des stagiaires ? Quelle parade simple ont-ils ? *(Indication : ils peuvent renuméroter les tiroirs entre eux, au hasard.)*
