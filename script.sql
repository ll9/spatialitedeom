create table test (id, geometry);
select RecoverGeometryColumn('test','geometry',4326,'POINT');

insert into test values (1,ST_GeomFromText('POINT (0 0)',4326));
insert into test values (2,ST_GeomFromText('POINT (0 0)',4326));
insert into test values (3,ST_GeomFromText('POINT (0 1)',4326));

update test set geometry=ST_GeomFromText('POINT (2 4)',4326);

-- Zuerst spatalite exe starten, dann '.read "script.sql" utf-8' auführen
-- Folgendes funktioniert momentan seltsamerweise nicht: spatalite.exe script.sql