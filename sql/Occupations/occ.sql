select tb1.name, tb2.name, tb3.name, tb4.name
from(
    (select rownum stt, name
    from (SELECT name from OCCUPATIONS where OCCUPATION = 'Doctor' order by name )) tb1
    full outer join (select rownum stt, name
    from (SELECT name from OCCUPATIONS where OCCUPATION = 'Professor' order by name )) tb2
    on tb1.stt = tb2.stt 
    full outer join (select rownum stt, name
    from (SELECT name from OCCUPATIONS where OCCUPATION = 'Singer' order by name )) tb3
    on tb2.stt = tb3.stt
    full outer join (select rownum stt, name
    from (SELECT name from OCCUPATIONS where OCCUPATION = 'Actor' order by name )) tb4
    on tb3.stt = tb4.stt
    );

