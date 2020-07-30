## Le Airbnb des promenades de chiens

### Installation
Ruby version 2.5.1
Rails version 5.2.4.3

    git clone git@github.com:Bashalir/airbnb.git
    bundle install
    rails db:migrate
    rails db:seed
    <!-- pour tester l'implementation de la BDD -->
    rails console --sandbox
### Le pitch

En cours de "Bizness Growth Money Maker", on t'avait demandé de créer une entreprise à fort potentiel. À l'époque tu t'étais dit que ce serait une chouette idée de faire une plateforme où des personnes pourraient promener les chiens des autres, en échange de cash-money.

C'est dingue comme idée : ça va mettre tous les VC aux abois. Allez, on le fait !
### Les models

À priori, les models sont simples : il y a un model dogsitter et un model dog (on te laisse choisir au moins un attribut chacun). Un dogsitter peut promener plusieurs dog lors d'une stroll (promenade, en anglais) ; et un dog peut avoir plusieurs dogsitter via les stroll.

Maintenant tu veux préciser la ville des promeneurs et des chiens pour faire un super algorithme de matching. Tu devras donc créer un model City avec comme attribut city_name. Chaque ville contient plusieurs promeneurs et plusieurs chiens mais un chien et un promeneur ne peuvent appartenir qu'a une ville.

Cela ressemble beaucoup à notre schéma de docteurs tout ceci ! C'est fait exprès, rien de tel pour s'entraîner que de refaire les exercices. Tu vas dérouler tes prochains model grâce à ça.