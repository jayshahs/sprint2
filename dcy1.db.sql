BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	bigint(20) NOT NULL,
	"group_id"	int(11) NOT NULL,
	"permission_id"	int(11) NOT NULL,
	PRIMARY KEY("id"),
	CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id"),
	CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY("group_id") REFERENCES "auth_group"("id")
);
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	int(11) NOT NULL,
	"name"	varchar(150) NOT NULL
);
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	int(11) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"content_type_id"	int(11) NOT NULL,
	"codename"	varchar(100) NOT NULL,
	CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id")
);
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	bigint(20) NOT NULL,
	"user_id"	int(11) NOT NULL,
	"group_id"	int(11) NOT NULL,
	CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY("group_id") REFERENCES "auth_group"("id"),
	CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY("user_id") REFERENCES "auth_user"("id")
);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	bigint(20) NOT NULL,
	"user_id"	int(11) NOT NULL,
	"permission_id"	int(11) NOT NULL,
	CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY("user_id") REFERENCES "auth_user"("id"),
	CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id")
);
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	int(11) NOT NULL,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime(6) DEFAULT NULL,
	"is_superuser"	tinyint(1) NOT NULL,
	"username"	varchar(150) NOT NULL,
	"first_name"	varchar(150) NOT NULL,
	"last_name"	varchar(150) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	tinyint(1) NOT NULL,
	"is_active"	tinyint(1) NOT NULL,
	"date_joined"	datetime(6) NOT NULL
);
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	int(11) NOT NULL,
	"action_time"	datetime(6) NOT NULL,
	"object_id"	longtext,
	"object_repr"	varchar(200) NOT NULL,
	"change_message"	longtext NOT NULL,
	"content_type_id"	int(11) DEFAULT NULL,
	"user_id"	int(11) NOT NULL,
	CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id"),
	CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY("user_id") REFERENCES "auth_user"("id")
);
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	int(11) NOT NULL,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	bigint(20) NOT NULL,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime(6) NOT NULL
);
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	longtext NOT NULL,
	"expire_date"	datetime(6) NOT NULL
);
CREATE TABLE IF NOT EXISTS "app01_admin" (
	"id"	bigint(20) NOT NULL,
	"username"	varchar(32) NOT NULL,
	"password"	varchar(64) NOT NULL,
	"mail"	varchar(64) NOT NULL,
	"img"	varchar(128) NOT NULL,
	"comment"	longtext NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_auxiliary1" (
	"id"	bigint(20) NOT NULL,
	"aux1"	varchar(128) NOT NULL,
	"quantity"	int(11) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_auxiliary2" (
	"id"	bigint(20) NOT NULL,
	"aux2"	varchar(128) NOT NULL,
	"quantity"	int(11) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_meat" (
	"id"	bigint(20) NOT NULL,
	"meat"	varchar(128) NOT NULL,
	"quantity"	int(11) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_meat1" (
	"id"	bigint(20) NOT NULL,
	"meat1"	varchar(128) NOT NULL,
	"quantity"	int(11) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_menu" (
	"id"	bigint(20) NOT NULL,
	"name"	varchar(32) NOT NULL,
	"time"	int(11) NOT NULL,
	"tem"	int(11) NOT NULL,
	"inter"	varchar(256) NOT NULL,
	"img"	varchar(128) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_person" (
	"id"	bigint(20) NOT NULL,
	"mail"	varchar(64) NOT NULL,
	"img"	varchar(128) NOT NULL,
	"comment"	longtext NOT NULL,
	"addr"	longtext NOT NULL,
	"username_id"	bigint(20) NOT NULL,
	PRIMARY KEY("id"),
	CONSTRAINT "app01_person_username_id_61442845_fk_app01_admin_id" FOREIGN KEY("username_id") REFERENCES "app01_admin"("id")
);
CREATE TABLE IF NOT EXISTS "app01_vegetable" (
	"id"	bigint(20) NOT NULL,
	"veg"	varchar(128) NOT NULL,
	"quantity"	int(11) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_vegetable1" (
	"id"	bigint(20) NOT NULL,
	"veg1"	varchar(128) NOT NULL,
	"quantity"	int(11) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_auxiliary" (
	"id"	bigint(20) NOT NULL,
	"aux"	varchar(128) NOT NULL,
	"quantity"	int(11) NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "app01_cust_recipe" (
	"id"	bigint(20) NOT NULL,
	"name"	varchar(64) NOT NULL,
	"temperature"	int(11) NOT NULL,
	"time"	int(11) NOT NULL,
	"utensils"	varchar(128) NOT NULL,
	"cate"	smallint(6) NOT NULL,
	"description"	longtext NOT NULL,
	"quan"	int(11) NOT NULL,
	"steps"	longtext NOT NULL,
	"rate"	int(11) NOT NULL,
	"calories"	decimal(6, 2) NOT NULL,
	"img"	varchar(128) NOT NULL,
	"auxiliary_id"	bigint(20) NOT NULL,
	"auxiliary1_id"	bigint(20) NOT NULL,
	"auxiliary2_id"	bigint(20) NOT NULL,
	"meat_id"	bigint(20) NOT NULL,
	"meat1_id"	bigint(20) NOT NULL,
	"veg_id"	bigint(20) NOT NULL,
	"veg1_id"	bigint(20) NOT NULL,
	PRIMARY KEY("id"),
	CONSTRAINT "app01_cust_recipe_auxiliary2_id_c9ecbfeb_fk_app01_auxiliary2_id" FOREIGN KEY("auxiliary2_id") REFERENCES "app01_auxiliary2"("id"),
	CONSTRAINT "app01_cust_recipe_auxiliary_id_e3a7bfb7_fk_app01_auxiliary_id" FOREIGN KEY("auxiliary_id") REFERENCES "app01_auxiliary"("id"),
	CONSTRAINT "app01_cust_recipe_auxiliary1_id_a8da2ecf_fk_app01_auxiliary1_id" FOREIGN KEY("auxiliary1_id") REFERENCES "app01_auxiliary1"("id"),
	CONSTRAINT "app01_cust_recipe_meat1_id_785acea0_fk_app01_meat1_id" FOREIGN KEY("meat1_id") REFERENCES "app01_meat1"("id"),
	CONSTRAINT "app01_cust_recipe_meat_id_fd0935c0_fk_app01_meat_id" FOREIGN KEY("meat_id") REFERENCES "app01_meat"("id"),
	CONSTRAINT "app01_cust_recipe_veg1_id_d184099a_fk_app01_vegetable1_id" FOREIGN KEY("veg1_id") REFERENCES "app01_vegetable1"("id"),
	CONSTRAINT "app01_cust_recipe_veg_id_713cd7ca_fk_app01_vegetable_id" FOREIGN KEY("veg_id") REFERENCES "app01_vegetable"("id")
);
CREATE TABLE IF NOT EXISTS "app01_favorite" (
	"id"	bigint(20) NOT NULL,
	"name"	varchar(64) NOT NULL,
	"temperature"	int(11) NOT NULL,
	"time"	int(11) NOT NULL,
	"utensils"	varchar(128) NOT NULL,
	"cate"	smallint(6) NOT NULL,
	"description"	longtext NOT NULL,
	"quan"	int(11) NOT NULL,
	"steps"	longtext NOT NULL,
	"rate"	int(11) NOT NULL,
	"calories"	decimal(6, 2) NOT NULL,
	"img"	varchar(128) NOT NULL,
	"auxiliary_id"	bigint(20) NOT NULL,
	"auxiliary1_id"	bigint(20) NOT NULL,
	"auxiliary2_id"	bigint(20) NOT NULL,
	"meat_id"	bigint(20) NOT NULL,
	"meat1_id"	bigint(20) NOT NULL,
	"veg_id"	bigint(20) NOT NULL,
	"veg1_id"	bigint(20) NOT NULL,
	PRIMARY KEY("id"),
	CONSTRAINT "app01_favorite_veg1_id_c526a313_fk_app01_vegetable1_id" FOREIGN KEY("veg1_id") REFERENCES "app01_vegetable1"("id"),
	CONSTRAINT "app01_favorite_auxiliary_id_24da3d0d_fk_app01_auxiliary_id" FOREIGN KEY("auxiliary_id") REFERENCES "app01_auxiliary"("id"),
	CONSTRAINT "app01_favorite_meat_id_3d01cf04_fk_app01_meat_id" FOREIGN KEY("meat_id") REFERENCES "app01_meat"("id"),
	CONSTRAINT "app01_favorite_veg_id_f7ec0f6e_fk_app01_vegetable_id" FOREIGN KEY("veg_id") REFERENCES "app01_vegetable"("id"),
	CONSTRAINT "app01_favorite_meat1_id_a2a41164_fk_app01_meat1_id" FOREIGN KEY("meat1_id") REFERENCES "app01_meat1"("id"),
	CONSTRAINT "app01_favorite_auxiliary1_id_c74574aa_fk_app01_auxiliary1_id" FOREIGN KEY("auxiliary1_id") REFERENCES "app01_auxiliary1"("id"),
	CONSTRAINT "app01_favorite_auxiliary2_id_7b5e5964_fk_app01_auxiliary2_id" FOREIGN KEY("auxiliary2_id") REFERENCES "app01_auxiliary2"("id")
);
CREATE TABLE IF NOT EXISTS "app01_home" (
	"id"	bigint(20) NOT NULL,
	"name"	varchar(64) NOT NULL,
	"temperature"	int(11) NOT NULL,
	"time"	int(11) NOT NULL,
	"utensils"	varchar(128) NOT NULL,
	"cate"	smallint(6) NOT NULL,
	"description"	longtext NOT NULL,
	"quan"	int(11) NOT NULL,
	"steps"	longtext NOT NULL,
	"rate"	int(11) NOT NULL,
	"calories"	decimal(6, 2) NOT NULL,
	"img"	varchar(128) NOT NULL,
	"auxiliary_id"	bigint(20) NOT NULL,
	"auxiliary1_id"	bigint(20) NOT NULL,
	"auxiliary2_id"	bigint(20) NOT NULL,
	"meat_id"	bigint(20) NOT NULL,
	"meat1_id"	bigint(20) NOT NULL,
	"veg_id"	bigint(20) NOT NULL,
	"veg1_id"	bigint(20) NOT NULL,
	PRIMARY KEY("id"),
	CONSTRAINT "app01_home_meat_id_b11461a4_fk_app01_meat_id" FOREIGN KEY("meat_id") REFERENCES "app01_meat"("id"),
	CONSTRAINT "app01_home_veg_id_a9d76bf6_fk_app01_vegetable_id" FOREIGN KEY("veg_id") REFERENCES "app01_vegetable"("id"),
	CONSTRAINT "app01_home_meat1_id_f185754e_fk_app01_meat1_id" FOREIGN KEY("meat1_id") REFERENCES "app01_meat1"("id"),
	CONSTRAINT "app01_home_auxiliary_id_757be83a_fk_app01_auxiliary_id" FOREIGN KEY("auxiliary_id") REFERENCES "app01_auxiliary"("id"),
	CONSTRAINT "app01_home_auxiliary2_id_e0da3794_fk_app01_auxiliary2_id" FOREIGN KEY("auxiliary2_id") REFERENCES "app01_auxiliary2"("id"),
	CONSTRAINT "app01_home_veg1_id_724aebf3_fk_app01_vegetable1_id" FOREIGN KEY("veg1_id") REFERENCES "app01_vegetable1"("id"),
	CONSTRAINT "app01_home_auxiliary1_id_70d984e9_fk_app01_auxiliary1_id" FOREIGN KEY("auxiliary1_id") REFERENCES "app01_auxiliary1"("id")
);
INSERT INTO "app01_admin" VALUES (1,'dcy','46003345c771f3153cae852d900b300c','','Menu/10.jpeg','');
INSERT INTO "app01_auxiliary1" VALUES (1,'1 teaspoon paprika',1);
INSERT INTO "app01_auxiliary1" VALUES (2,'Olive oil, for tossing',1);
INSERT INTO "app01_auxiliary1" VALUES (3,'3 tablespoons grated Parmesan',1);
INSERT INTO "app01_auxiliary1" VALUES (4,'Toasted Almond Parsley Salsa, for serving',1);
INSERT INTO "app01_auxiliary1" VALUES (5,'2 cups whole milk',1);
INSERT INTO "app01_auxiliary1" VALUES (6,'1 cup apricot preserves',1);
INSERT INTO "app01_auxiliary1" VALUES (7,'1/4 cup Dijon mustard',1);
INSERT INTO "app01_auxiliary1" VALUES (8,'1/2 cup wheat germ',1);
INSERT INTO "app01_auxiliary1" VALUES (9,'3/4 pound whole-wheat linguine',1);
INSERT INTO "app01_auxiliary1" VALUES (10,'2 tablespoons honey',1);
INSERT INTO "app01_auxiliary1" VALUES (11,'Freshly grated nutmeg',1);
INSERT INTO "app01_auxiliary1" VALUES (12,'1 can tomato sauce (15 oz)',1);
INSERT INTO "app01_auxiliary2" VALUES (1,'Kosher salt and freshly ground black pepper',1);
INSERT INTO "app01_auxiliary2" VALUES (2,'1 1/2 cups freshly grated Parmigiano-Reggiano',1);
INSERT INTO "app01_auxiliary2" VALUES (3,'Kosher salt and freshly ground black pepper',1);
INSERT INTO "app01_auxiliary2" VALUES (4,'2 tablespoons vanilla extract',1);
INSERT INTO "app01_auxiliary2" VALUES (5,'1/4 cup whole-wheat flour',1);
INSERT INTO "app01_auxiliary2" VALUES (6,'1 cup sliced button mushrooms (4 ounces)',1);
INSERT INTO "app01_auxiliary2" VALUES (7,'Freshly grated Parmesan',1);
INSERT INTO "app01_auxiliary2" VALUES (8,'1 tablespoon cornstarch',1);
INSERT INTO "app01_auxiliary2" VALUES (9,'Mustard Horseradish Sauce (recipe follows)',1);
INSERT INTO "app01_auxiliary2" VALUES (10,'1/2 cup grated Parmesan cheese',1);
INSERT INTO "app01_meat" VALUES (2,'8 bone-in, skin-on chicken thighst 3 pounds',1);
INSERT INTO "app01_meat" VALUES (3,'12 ounces boneless, skinless chicken breast',1);
INSERT INTO "app01_meat" VALUES (4,'Four 3/4-inch bone-in pork chops (about 2 1/4 pounds)',1);
INSERT INTO "app01_meat" VALUES (5,'12 ounce salmon fillet, cut into 4 pieces',1);
INSERT INTO "app01_meat" VALUES (6,'None',1);
INSERT INTO "app01_meat" VALUES (8,'One 9- to 10-pound bone-in fully-smoked ham',1);
INSERT INTO "app01_meat" VALUES (9,'1 whole filet of beef (4 to 5 pounds), trimmed and tied',1);
INSERT INTO "app01_meat" VALUES (10,'1 pound Bob Evans Italian Roll Sausage',1);
INSERT INTO "app01_meat1" VALUES (1,'Chicken foam',1);
INSERT INTO "app01_meat1" VALUES (2,'leg meat of the hog',1);
INSERT INTO "app01_meat1" VALUES (3,'8 whole eggs',1);
INSERT INTO "app01_meat1" VALUES (4,'None',1);
INSERT INTO "app01_meat1" VALUES (5,'Zest and juice of 2 limes',1);
INSERT INTO "app01_vegetable" VALUES (1,'2 tablespoons chopped chives',1);
INSERT INTO "app01_vegetable" VALUES (2,'2 pinches freshly grated nutmeg',1);
INSERT INTO "app01_vegetable" VALUES (3,'1/2 cups freshly grated Parmigiano-Reggiano',1);
INSERT INTO "app01_vegetable" VALUES (4,'Kosher salt and freshly ground black pepper',1);
INSERT INTO "app01_vegetable" VALUES (5,'Lemon wedges, for serving, optional',1);
INSERT INTO "app01_vegetable" VALUES (6,'1 cup grape or cherry tomatoes, sliced in 1/2 (6 ounces)',1);
INSERT INTO "app01_vegetable" VALUES (7,'Oil wheat vegetables',1);
INSERT INTO "app01_vegetable1" VALUES (1,'garlic powder',1);
INSERT INTO "app01_vegetable1" VALUES (2,'1/2 cups freshly grated Parmigiano-Reggiano',1);
INSERT INTO "app01_vegetable1" VALUES (3,'1/2 cup toasted almonds',1);
INSERT INTO "app01_vegetable1" VALUES (4,'1 loaf crusty sourdough or French bread',1);
INSERT INTO "app01_vegetable1" VALUES (5,'1 cup sliced button mushrooms (4 ounces)',1);
INSERT INTO "app01_vegetable1" VALUES (6,'1/4 thinly sliced apple, such as Golden Delicious',1);
INSERT INTO "app01_auxiliary" VALUES (3,'1/2 teaspoons packed light brown sugar',1);
INSERT INTO "app01_auxiliary" VALUES (4,'Kosher salt and freshly ground black pepper',1);
INSERT INTO "app01_auxiliary" VALUES (5,'12 ounces fettuccine',1);
INSERT INTO "app01_auxiliary" VALUES (6,'5 tablespoons vegetable oil',1);
INSERT INTO "app01_auxiliary" VALUES (7,'Coarse-grained salt',1);
INSERT INTO "app01_auxiliary" VALUES (8,'Butter, for greasing',1);
INSERT INTO "app01_auxiliary" VALUES (9,'2 cups unsweetened pineapple juice',1);
INSERT INTO "app01_auxiliary" VALUES (10,'1/2 cup dry milk powder',1);
INSERT INTO "app01_auxiliary" VALUES (11,'1 cup grape or cherry tomatoes, sliced in 1/2 (6 ounces)',1);
INSERT INTO "app01_auxiliary" VALUES (12,'1 pound bowtie pasta',1);
INSERT INTO "app01_auxiliary" VALUES (13,'1 container ricotta cheese (15 oz)',1);
INSERT INTO "app01_cust_recipe" VALUES (1,'Chicken wings',200,50,'Knife, Gloves, Chopstickes',7,'Delicious',1,'1.Spray the basket of a 3.5-quart air fryer with cooking spray and set aside. Pat the chicken wings dry and sprinkle generously with salt. \r\n2.Meanwhile, warm the butter in a microwave-safe bowl in the microwave until melted, about 1 minute. Whisk in the hot sauce.',4,300,'Menu/2a_eH6lMDR.jpeg',4,12,10,3,1,7,5);
INSERT INTO "app01_cust_recipe" VALUES (2,'Pork Carnitas',300,60,'Knife, Gloves, Chopstickes, Knife, Fork',2,'Very delicious, if you like eating meat, this will be your favorite food.',1,'1.Rinse and dry the pork shoulder. Salt and pepper liberally. Mix the oregano and the cumin with olive oil and rub all over pork. \r\n2.Place the pork in a slow cooker and top with the onion, garlic, and jalapeno. Squeeze over the juice of the orange and add the two halves. Cover and cook on low for 8 to 10 hours or on high 4 hours.',4,230,'Menu/2b_oYZRV1s.jpeg',7,2,10,4,2,6,5);
INSERT INTO "app01_cust_recipe" VALUES (3,'Chinese noodles',100,20,'Chopstickes,Spoon,Fork, Bowl,Pan',6,'Delicious, it is suitable for breakfast and at the same time , it is simple.',1,'1.Put the noodels into pan last aroudn 10 minutes, with 100 degree\r\n2. At the 7 minutes, put eggs into it\r\n3.Put all other materials in it.',1,256,'Menu/14_iCWJ2LG.jpeg',7,12,1,3,3,7,5);
INSERT INTO "app01_cust_recipe" VALUES (7,'rtrt',99,99,'Knife, Gloves, Chopstickes',1,'Delicious',1,'ss',3,300,'Menu/1f_lgGIKwW.jpeg',4,2,4,3,3,4,3);
INSERT INTO "app01_favorite" VALUES (8,'Breakfast Muffins with Eggs',190,45,'Knife, Gloves, Fork, Oven',6,'What do you get when you take muffins and fill them with a secret eggy center? Breakfast Muffins that you can eat anytime you please!',1,'1.Preheat the oven to 375 degrees F (190 degrees C). Generously butter a 12-cup muffin pan.\r\n2.In a large bowl, whisk to combine the flour, baking powder, salt and onion powder.\r\n3.In a pitcher or large measuring cup, combine the milk, raw egg, sour cream and melted butter; whisk until evenly incorporated. Pour into the bowl with the dry ingredients and stir with a rubber spatula until a thick batter forms. Fold in the bacon, scallions and Cheddar.\r\n4.Using 2 spoons, drop heaped tablespoons of the batter into each cup of the prepared muffin pan. Add 1 hard-boiled egg to the center of each and press down so the egg meets the batter on the bottom of the pan.\r\n5.Using the same two spoons, drop heaped tablespoons of batter over each egg, using the spoons to push the batter down to fully encase the egg.',1,254,'Menu/1i_nDzTEbP.jpeg',10,7,5,3,3,6,2);
INSERT INTO "app01_home" VALUES (1,'Fall-Off-the-Bone Chicken',300,20,'Oven, Fork, Knife, Dish',1,'A dry brine combined with low and slow roasting, produces some seriously succulent and juicy meat. A quick flash under the broiler at the end turns the skin crisp and golden.',1,'1.Combine the sugar, paprika, garlic powder, 1 tablespoon salt and 1/2 teaspoon black pepper in a large bowl. Toss the chicken in the spice mixture until coated. Arrange the chicken in a single layer in a flameproof 9-by-13-inch baking dish. Cover with foil and refrigerate for at least 4 hours and up to overnight.\r\n2.Preheat the oven to 300 degrees F. \r\n3.Bake until the chicken is super moist and falling off the bone, about 2 hours. Remove the baking dish from the oven and remove the foil. Use a spoon or ladle to remove as much liquid from the dish as possible and reserve. Turn the oven to broil. \r\n4.Broil the chicken until the skin is golden brown and slightly crisp, about 5 minutes. Sprinkle the chicken with the chives and serve with the reserved pan juices.',4,246,'Menu/1a_w9eKAey.jpeg',3,1,1,2,1,1,1);
COMMIT;
