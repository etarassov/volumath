---
id: "0527"
title: "Former des paires et des équipes"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 35
tags: [denombrement, paires, equipes, combinaisons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 5, задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

De combien de façons peut-on répartir :

1. quatre personnes en deux paires ;
2. dix personnes en cinq paires ;
3. dix personnes en deux équipes de cinq ;
4. neuf personnes en trois groupes de trois ?

Dans chaque cas, les paires, les équipes et les groupes ne portent pas de numéro : seule compte la façon dont les personnes sont regroupées.

## Hints

1. Traite d'abord la question 1 en écrivant toutes les possibilités à la main. Elle est facile, et elle servira à vérifier les raisonnements des questions suivantes.
2. Choisis une personne une fois pour toutes, appelle-la Alice, et demande-toi avec qui elle se retrouve. Une fois son groupe formé, il reste exactement le même problème, mais avec moins de personnes.
3. Pour les questions 3 et 4, il faut compter des groupes dans lesquels l'ordre ne compte pas. Compte d'abord en tenant compte de l'ordre, puis divise par le nombre de façons de ranger un même groupe.
4. Méfie-toi du raisonnement « on choisit cinq personnes parmi dix » dans la question 3. Teste-le sur la question 1 : donne-t-il la bonne réponse ?

## Solution

L'idée qui résout les quatre questions est toujours la même : **on ancre une personne**, on regarde avec qui elle se retrouve, et on se ramène au même problème avec moins de monde.

### 1. Quatre personnes en deux paires

Appelons-les Alice, Bruno, Chloé et David. Regardons Alice. Elle est en paire avec l'une des $3$ autres, ce qui fait $3$ possibilités. Une fois sa paire choisie, les deux personnes restantes forment forcément la seconde paire.

Les trois partages sont : $\{AB, CD\}$, $\{AC, BD\}$, $\{AD, BC\}$.

Il y a **3** façons.

### 2. Dix personnes en cinq paires

Même méthode, et on descend de deux en deux.

- $2$ personnes : $1$ façon.
- $4$ personnes : Alice choisit son partenaire parmi $3$, puis il reste $2$ personnes, soit $3 \times 1 = 3$. On retrouve bien la question 1.
- $6$ personnes : Alice choisit parmi $5$, puis il reste $4$ personnes, soit $5 \times 3 = 15$.
- $8$ personnes : $7 \times 15 = 105$.
- $10$ personnes : $9 \times 105 = 945$.

En une seule ligne :

$$9 \times 7 \times 5 \times 3 \times 1 = 945.$$

Il y a **945** façons.

### 3. Dix personnes en deux équipes de cinq

Ancrons encore Alice. Son équipe, c'est elle plus $4$ personnes choisies parmi les $9$ autres. Les cinq restantes forment l'autre équipe, sans aucun choix supplémentaire. Tout revient donc à compter les façons de choisir $4$ personnes parmi $9$, l'ordre ne comptant pas.

- En tenant compte de l'ordre, il y a $9 \times 8 \times 7 \times 6 = 3024$ listes de quatre personnes.
- Mais un même groupe de $4$ personnes apparaît plusieurs fois dans cette énumération : une fois pour chacune de ses $4 \times 3 \times 2 \times 1 = 24$ façons d'être rangé.

$$\frac{3024}{24} = 126.$$

Il y a **126** façons.

**Le piège.** On est tenté de dire : « il suffit de choisir les $5$ joueurs d'une équipe parmi $10$ », ce qui donne

$$\frac{10 \times 9 \times 8 \times 7 \times 6}{5 \times 4 \times 3 \times 2 \times 1} = 252,$$

soit deux fois trop. En effet, choisir les cinq d'une équipe ou choisir les cinq de l'autre décrit le **même** partage, puisque les équipes ne sont pas numérotées. On le voit tout de suite sur la question 1 : ce raisonnement y donnerait $\frac{4 \times 3}{2} = 6$, alors que la bonne réponse est $3$. En ancrant Alice, on ne compte chaque partage qu'une seule fois.

### 4. Neuf personnes en trois groupes de trois

Ancrons Alice : elle choisit ses $2$ coéquipiers parmi les $8$ autres. En tenant compte de l'ordre cela fait $8 \times 7 = 56$ listes, et chaque paire est comptée $2$ fois, donc

$$\frac{8 \times 7}{2} = 28 \text{ façons.}$$

Il reste $6$ personnes. Ancrons l'une d'elles, Bruno : il choisit ses $2$ coéquipiers parmi les $5$ restants, soit

$$\frac{5 \times 4}{2} = 10 \text{ façons.}$$

Les $3$ dernières personnes forment le troisième groupe, sans aucun choix. Au total

$$28 \times 10 \times 1 = 280.$$

Il y a **280** façons.

**Le même piège, en plus fort.** Dire « on choisit $3$ personnes parmi $9$, puis $3$ parmi les $6$ restantes » donne $84 \times 20 = 1680$. C'est $6$ fois trop, car cela revient à numéroter les trois groupes $1$, $2$, $3$, et un même partage est alors compté $3 \times 2 \times 1 = 6$ fois. On retrouve bien $1680 \div 6 = 280$.

**Conclusion.** Les réponses sont $3$, $945$, $126$ et $280$.

## Going further

1. De combien de façons peut-on répartir $2n$ personnes en $n$ paires ? Écris la réponse comme un produit.
2. De combien de façons peut-on répartir douze personnes en quatre groupes de trois ?
