INSERT INTO tb_category(id,description) VALUES (1,'Curso');
INSERT INTO tb_category(id,description) VALUES (2,'Oficina');

INSERT INTO tb_activities(category_id,id,name,description,price) VALUES (1,1,'Curso de HTML','Aprenda HTML de forma pratica',50.00);
INSERT INTO tb_activities(category_id,id,name,description,price) VALUES (2,2,'Oficina dde Github','Contole de versoes de seus projetos',50.00);

INSERT INTO tb_block(activities_id,id,start,finish) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z',TIMESTAMP WITH TIME ZONE '2017-07-25T11:00:00Z');
INSERT INTO tb_block(activities_id,id,start,finish) VALUES (2,2,TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z',TIMESTAMP WITH TIME ZONE '2017-07-25T18:00:00Z');
INSERT INTO tb_block(activities_id,id,start,finish) VALUES (2,3,TIMESTAMP WITH TIME ZONE '2017-09-26T08:00:00Z',TIMESTAMP WITH TIME ZONE '2017-07-26T11:00:00Z');

INSERT INTO tb_participants(id,name,email) VALUES (1,'Jose Silva','jose@gmail.com');
INSERT INTO tb_participants(id,name,email) VALUES (2,'Tiago Faria','tiago@gmail.com');
INSERT INTO tb_participants(id,name,email) VALUES (3,'Maaria do Rosario','maria@gmail.com');
INSERT INTO tb_participants(id,name,email) VALUES (4,'Teresa Silva','teresa@gmail.com');

INSERT INTO tb_activities_participants(activities_id,participants_id) VALUES (1,1);
INSERT INTO tb_activities_participants(activities_id,participants_id) VALUES (2,1);
INSERT INTO tb_activities_participants(activities_id,participants_id) VALUES (1,2);
INSERT INTO tb_activities_participants(activities_id,participants_id) VALUES (1,3);
INSERT INTO tb_activities_participants(activities_id,participants_id) VALUES (2,3);
INSERT INTO tb_activities_participants(activities_id,participants_id) VALUES (2,4);