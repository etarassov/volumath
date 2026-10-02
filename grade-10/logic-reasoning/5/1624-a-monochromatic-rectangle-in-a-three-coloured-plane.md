---
id: "1624"
title: "Un rectangle d'une seule couleur dans un plan tricolore"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 40
tags: [principe-des-tiroirs, coloriage, rectangle, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 1"
  reference: "Handout-2014-1714.pdf, problème 1 (USAMTS année 18, tour 1, problème 4)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2014-1714.pdf"
---

## Statement

On colorie **chaque** point du plan en rouge, en vert ou en bleu. Chaque point reçoit
exactement une couleur, et aucune règle n'est imposée : le coloriage peut être aussi
capricieux qu'on veut.

Montrer qu'il existe forcément un rectangle dont les quatre sommets sont de la même couleur.

## Hints

1. Le plan est infini, mais tu n'as pas besoin de tout : cherche le rectangle à l'intérieur d'une grille **finie** de points, régulièrement espacés.
2. Prends une grille de $4$ lignes et d'un grand nombre de colonnes. Regarde une colonne : elle contient $4$ points coloriés avec $3$ couleurs. Que peut-on affirmer ?
3. Dans chaque colonne, choisis deux points de la même couleur et note deux informations : **quelles lignes** ils occupent, et **quelle couleur** ils ont. Combien y a-t-il d'étiquettes différentes possibles ?
4. Il y a $6$ paires de lignes possibles et $3$ couleurs, donc $18$ étiquettes. Combien de colonnes faut-il pour être sûr que deux colonnes portent la même étiquette ?
5. Deux colonnes avec la même étiquette : dessine les quatre points concernés.

## Solution

**L'idée : le principe des tiroirs, appliqué deux fois. Une fois à l'intérieur de chaque
colonne, une fois entre les colonnes.**

**Étape 1. Se ramener à une grille finie.**

Il suffit de trouver le rectangle parmi les points d'une grille bien choisie. Considérons
l'ensemble des points de coordonnées
$$(i,\ j) \qquad\text{avec } i \in \{1, 2, \ldots, 19\} \text{ et } j \in \{1, 2, 3, 4\} .$$

C'est une grille de $4$ lignes et $19$ colonnes, soit $76$ points. Chacun a reçu l'une des
trois couleurs.

Remarquons dès maintenant ce qui fait marcher la suite : si deux colonnes $i \ne i'$ et deux
lignes $j \ne j'$ sont telles que les quatre points
$$(i,j), \quad (i,j'), \quad (i',j), \quad (i',j')$$
ont la même couleur, alors ces quatre points sont les sommets d'un rectangle (deux côtés
verticaux portés par les colonnes $i$ et $i'$, deux côtés horizontaux portés par les lignes
$j$ et $j'$). C'est exactement ce que nous cherchons.

**Étape 2. Dans chaque colonne, deux points de la même couleur.**

Fixons une colonne $i$. Elle contient $4$ points, coloriés avec $3$ couleurs seulement. Comme
$4 > 3$, le principe des tiroirs garantit que **deux de ces points ont la même couleur**.

Choisissons-en deux, une fois pour toutes, dans chaque colonne, et fabriquons l'**étiquette**
de la colonne :
$$\text{étiquette}(i) = \bigl(\{j_1, j_2\},\ \text{couleur}\bigr),$$
où $j_1$ et $j_2$ sont les deux lignes concernées et où la couleur est leur couleur commune.

**Étape 3. Il y a peu d'étiquettes possibles.**

Combien d'étiquettes différentes existe-t-il ?

- Le choix des deux lignes parmi quatre : les paires possibles sont
  $\{1,2\}$, $\{1,3\}$, $\{1,4\}$, $\{2,3\}$, $\{2,4\}$, $\{3,4\}$, soit $6$ paires.
- Le choix de la couleur : $3$ possibilités.

Au total,
$$6 \times 3 = 18 \text{ étiquettes possibles.}$$

**Étape 4. Deux colonnes portent la même étiquette.**

Nous avons $19$ colonnes et seulement $18$ étiquettes possibles. Par le principe des tiroirs
(les colonnes sont les objets, les étiquettes sont les tiroirs), **deux colonnes différentes
$i$ et $i'$ portent la même étiquette.**

Cela signifie qu'il existe deux lignes $j_1 \ne j_2$ et une couleur $c$ telles que les quatre
points
$$(i, j_1), \quad (i, j_2), \quad (i', j_1), \quad (i', j_2)$$
soient tous de la couleur $c$.

**Étape 5. Conclusion.**

Comme $i \ne i'$ et $j_1 \ne j_2$, ces quatre points sont bien les quatre sommets d'un vrai
rectangle, non aplati, et ils sont tous de la couleur $c$.

**Il existe donc toujours un rectangle dont les quatre sommets ont la même couleur.**

**Remarque.** Le raisonnement ne fabrique aucun rectangle explicite : il démontre qu'il en
existe un, sans dire lequel. C'est la marque du principe des tiroirs.

## Going further

Le même raisonnement fonctionne avec un nombre quelconque de couleurs. Avec $k$ couleurs, on
prend $k+1$ lignes (pour que deux points d'une colonne aient forcément la même couleur) ; le
nombre d'étiquettes est alors $\binom{k+1}{2} \times k$, et il suffit d'une colonne de plus.

- Avec $2$ couleurs : $3$ lignes, $3 \times 2 = 6$ étiquettes, donc une grille $3 \times 7$
  suffit.
- Avec $3$ couleurs : $4$ lignes, $18$ étiquettes, donc $4 \times 19$, comme ci-dessus.

Ces tailles ne sont pas les plus petites possibles : pour deux couleurs, une grille
$4 \times 6$ ou $3 \times 7$ fonctionne déjà, et on peut faire mieux avec des arguments plus
fins. Le principe des tiroirs donne une réponse rapide et sûre, rarement optimale.
