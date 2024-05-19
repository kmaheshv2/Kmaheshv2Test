with agentsDBT as (
SELECT * FROM MYFIRSTDB.STAGE.AGENTS where agent_name like 'A%'
)
select * from agentsDBT