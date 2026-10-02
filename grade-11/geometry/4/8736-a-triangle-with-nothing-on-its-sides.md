---
id: "8736"
title: "Un triangle sans aucun point sur ses côtés"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [principe-de-l-extremum, inegalite-triangulaire, minimum, points-du-plan]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Principe de l'extremum » (Aimeric), exercice 3. L'énoncé du polycopié omet l'hypothèse « non tous alignés », sans laquelle l'affirmation est fausse"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

On se donne $n \geqslant 3$ points du plan, deux à deux distincts et **non tous alignés**.

Montrer qu'il existe trois de ces points $A$, $B$, $C$, formant un vrai triangle, tels qu'aucun des autres points donnés ne se trouve sur les segments $[AB]$, $[BC]$ ou $[CA]$.

## Hints

1. Il y a un nombre fini de triangles formés par trois des points donnés. Parmi les objets en nombre fini, on peut toujours en choisir un qui est extrême pour une grandeur : le plus grand, le plus petit…
2. Quelle grandeur choisir ? Essaie le **périmètre**, et prends le triangle de périmètre minimal parmi ceux qui ne sont pas aplatis.
3. Raisonne ensuite par l'absurde : suppose qu'un point $D$ se trouve sur le côté $[AB]$, et fabrique un triangle de périmètre plus petit.
4. Le triangle $DBC$ est un bon candidat. Compare son périmètre à celui de $ABC$ en utilisant l'inégalité triangulaire dans le triangle $ACD$.
5. Où l'hypothèse « non tous alignés » sert-elle ? Sans elle, existe-t-il seulement un triangle ?

## Solution

### Pourquoi l'hypothèse « non tous alignés » est indispensable

Si les $n$ points étaient tous sur une même droite, aucun triple ne formerait un vrai triangle, et le résultat n'aurait aucun sens. Avec l'hypothèse, il existe au moins trois points non alignés, donc au moins un vrai triangle.

### Le choix extrémal

Considérons l'ensemble de tous les triangles **non aplatis** dont les trois sommets sont parmi les $n$ points donnés. Cet ensemble est non vide, d'après ce qu'on vient de dire, et il est **fini** : il y a au plus autant de triangles que de façons de choisir $3$ points parmi $n$.

Un ensemble fini et non vide de nombres possède un plus petit élément. Choisissons donc un triangle $ABC$ de **périmètre minimal** parmi tous ceux-là.

Nous allons montrer que ce triangle convient.

### Le raisonnement par l'absurde

Supposons qu'un des autres points, appelons-le $D$, se trouve sur l'un des côtés, disons sur le segment $[AB]$. Comme $D$ est différent de $A$ et de $B$, il est strictement entre les deux :

$$AB = AD + DB, \qquad AD > 0, \qquad DB > 0 .$$

**Le triangle $DBC$ n'est pas aplati.** En effet, $D$ est sur la droite $(AB)$, et $C$ n'est pas sur cette droite puisque $ABC$ est un vrai triangle. Les points $D$, $B$, $C$ ne sont donc pas alignés.

**Son périmètre est strictement plus petit.** Appliquons l'inégalité triangulaire dans le triangle $ACD$. Ce triangle non plus n'est pas aplati : $A$ et $D$ sont sur la droite $(AB)$, distincts, et $C$ n'y est pas. L'inégalité est donc **stricte** :

$$CD < CA + AD .$$

Par conséquent,

$$\underbrace{DB + BC + CD}_{\text{périmètre de } DBC} \;<\; DB + BC + CA + AD = \underbrace{(AD + DB)}_{= \, AB} + BC + CA = \underbrace{AB + BC + CA}_{\text{périmètre de } ABC} .$$

Nous avons donc trouvé un triangle non aplati, à sommets parmi les points donnés, de périmètre strictement plus petit que celui de $ABC$. C'est contraire au choix de $ABC$.

Le raisonnement est le même si $D$ se trouve sur $[BC]$ ou sur $[CA]$, par symétrie des rôles.

### Conclusion

Aucun des autres points ne se trouve donc sur les côtés de $ABC$.

$$\boxed{\text{Le triangle de périmètre minimal convient.}}$$

*Ce qu'il faut retenir.* C'est le **principe de l'extremum**. Quand on cherche un objet ayant une propriété, il est souvent payant de prendre celui qui minimise ou maximise une certaine grandeur, puis de montrer que s'il n'avait pas la propriété voulue, on pourrait faire mieux. Deux conditions sont à vérifier avant de s'en servir : que l'ensemble des objets soit fini (ou au moins qu'un minimum existe), et qu'il ne soit pas vide.

## Going further

1. Où l'hypothèse « les points sont deux à deux distincts » a-t-elle servi ?

2. Le triangle de périmètre minimal n'est pas forcément unique. Donne un exemple avec quatre points où il y en a plusieurs. La démonstration reste-t-elle valable ?

3. Un autre choix extrémal aurait-il marché ? Essaie avec le triangle d'**aire** minimale non nulle : montre que si $D$ est sur $[AB]$, alors $DBC$ a une aire strictement plus petite. *Indication : même base $[BC]$ ? Non, compare plutôt les bases $AB$ et $DB$ pour la même hauteur issue de $C$.*

4. Un théorème beaucoup plus difficile, dit **de Sylvester-Gallai** : si $n \geqslant 3$ points ne sont pas tous alignés, alors il existe une droite passant par exactement deux d'entre eux. Sa démonstration classique repose aussi sur un choix extrémal, mais cette fois sur la plus petite distance non nulle d'un point à une droite.
