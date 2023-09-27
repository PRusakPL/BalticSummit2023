-- (1) OLD WAY TABLES (Standard) - not supporting ALM :-(

select displayname, entitysetname, logicalname, logicalcollectionname, schemaname, collectionschemaname, description, tabletype from metadata.entity
WHERE logicalname like '%adx_%' and displayname is not null
ORDER BY displayname ASC

select displayname, entitysetname, logicalname, logicalcollectionname, schemaname, collectionschemaname, description, tabletype from metadata.entity
WHERE logicalname like '%adx_%' and displayname is null
ORDER BY displayname ASC


-- (2) NEW STANDARD TABLES (very few of them)
select displayname, entitysetname, logicalname, logicalcollectionname, schemaname, collectionschemaname, description, tabletype from metadata.entity
WHERE logicalname like 'powerpage%' and displayname is not null
ORDER BY displayname ASC

select displayname, entitysetname, logicalname, logicalcollectionname, schemaname, collectionschemaname, description, tabletype from metadata.entity
WHERE logicalname like 'powerpage%' and displayname is null
ORDER BY displayname ASC


-- (3) What is inside
SELECT powerpagecomponenttypename, content FROM dbo.powerpagecomponent
ORDER BY powerpagecomponenttypename ASC



-- (4) VIRTUAL TABLES - CLEVER TRICK

select displayname, entitysetname, logicalname, logicalcollectionname, schemaname, collectionschemaname, description, tabletype from metadata.entity
WHERE logicalname like '%mspp_%' and displayname is not null
ORDER BY displayname ASC

select displayname, entitysetname, logicalname, logicalcollectionname, schemaname, collectionschemaname, description, tabletype from metadata.entity
WHERE logicalname like '%mspp_%' and displayname is null
ORDER BY displayname ASC




