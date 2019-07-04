
1-Afficher la liste des pays où simplon est présent

select * from pays left join fabrique on id_pays = fabrique.id_pays;
+----+-------+-----------+------+-----------------+--------------------------+-----------+---------------------------------------------+---------+
| id | nom   | ville     | id   | nom             | adresse                  | tel       | email                                       | id_pays |
+----+-------+-----------+------+-----------------+--------------------------+-----------+---------------------------------------------+---------+
|  1 | Dakar | Sénégal   |    1 | simplon dakar   | corniche                 | 338378817 | simplondakar@gmail.com                      |       1 |
|  2 | Paris | France    |    1 | simplon dakar   | corniche                 | 338378817 | simplondakar@gmail.com                      |       1 |

2-Afficher la liste des fabriques de la ville de dakar

select nom from fabrique where id_pays=1;
+-----------------+
| nom             |
+-----------------+
| simplon dakar   |
| sonatel academy |
+-----------------+

3-Afficher la liste des pays qui ont au moins deux fabriques




4-Afficher le nombre d’apprenants par fabrique
select nombre_apprenant from fabrique;
ERROR 1054 (42S22): Unknown column 'nombre_apprenant' in 'field list'

5-Afficher la liste des référentiels par fabrique
select nom_ref from fabrique;
ERROR 1054 (42S22): Unknown column 'nom_ref' in 'field list'

6-Afficher la liste des apprenants qui ont au moins un contrat

select * from apprenant left join contrat on id_apprenant = contrat.id_apprenant and type_contrat = 'CDI';alter table apprenant modify sexe char(1);

7- Ecrire l’ordre sql qui permet d’ajouter un champ ouvert à la table cohorte de type boolean
alter table cohorte add ouvert boolean;

8-Modifier le type du champ sexe en char(1)
alter table apprenant modify sexe char(1);
