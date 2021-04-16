--
-- YOU MUST EXECUTE THIS COMMAND FIRST!!!
--
CREATE EXTENSION IF NOT EXISTS tablefunc;

--
--  Studies by year
--
select
   year,
   count(id) as total
from studies
group by year
order by 1 desc;


--
-- Studies by venues
--
select
   s.vehicle_name,
   s.vehicle_initials,
   s.vehicle_type,
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
group by s.vehicle_initials, s.vehicle_name, s.vehicle_type
order by count (s.id) desc

--
-- Studies by venue type
--
select
   s.vehicle_type,
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
group by s.vehicle_type
order by count (s.id) desc

--
-- Domains of studies
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_domain w on s.id = w.study_id
inner join domains d on d.id = w.domain_id
group by d."name"
order by count (s.id) desc

--
-- Goals of studies
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_goal w on s.id = w.study_id
inner join goals d on d.id = w.goal_id
group by d."name"
order by count (s.id) desc

--
-- Benefits Obtained in the study
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_benefit w on s.id = w.study_id
inner join benefits d on d.id = w.benefit_id
group by d."name"
order by count (s.id) desc

--
-- Executable notations
--
(select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_notation w on s.id = w.study_id
inner join notations d on d.id = w.notation_id and d.executable is true
group by d."name"
order by count (s.id) desc)

union all

(select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_notation w on s.id = w.study_id
inner join notations d on d.id = w.notation_id and d."name" = 'Not informed'
group by d."name"
order by count (s.id) desc)

order by 2 desc
--
-- Static notations
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_notation w on s.id = w.study_id
inner join notations d on d.id = w.notation_id and d.executable is false
group by d."name"
order by count (s.id) desc

--
-- Tools
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_tool w on s.id = w.study_id
inner join tools d on d.id = w.tool_id
group by d."name"
order by count (s.id) desc

--
-- SoS characteristics
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_sos_characteristic w on s.id = w.study_id
inner join sos_characteristics d on d.id = w.sos_characteristic_id
group by d."name"
order by count (s.id) desc

--
-- SoS Type
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_sos_type w on s.id = w.study_id
inner join sos_types d on d.id = w.sos_type_id
group by d."name"
order by count (s.id) desc

--
-- Quality Attributes
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_quality_attribute w on s.id = w.study_id
inner join quality_attributes d on d.id = w.quality_attribute_id
group by d."name"
order by count (s.id) desc

--
-- Architectural Phases
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_architectural_phase w on s.id = w.study_id
inner join architectural_phases d on d.id = w.architectural_phase_id
group by d."name"
order by count (s.id) desc

--
-- Evidences
--
select
   d."name",
   count (s.id) as total,
   string_agg(s.bibtex, ', ') as bibtex
from studies s
inner join study_evidence w on s.id = w.study_id
inner join evidences d on d.id = w.evidence_id
group by d."name"
order by count (s.id) desc

--
-- Frequency Quality Assessment
--
select
	qa,
	count(qa)
from (
	select
		id,
		("QA1" +
		"QA2" +
		"QA3" +
		"QA4" +
		"QA5" +
		"QA6") as qa
	from studies
) as T
group by qa
order by 1 asc


--
-- Average Quality Assessment
--
select
	avg(qa) as avg
from (
	select
		id,
		("QA1" +
		"QA2" +
		"QA3" +
		"QA4" +
		"QA5" +
		"QA6") as qa
	from studies
) as T

--
-- Median Quality Assessment
--
select
	qa
from (
	select
	   row_number() over (order by T1.qa asc) as num,
	   T1.qa
	from (
		select
			id,
			("QA1" +
			"QA2" +
			"QA3" +
			"QA4" +
			"QA5" +
			"QA6") as qa
		from studies
	) as T1
	order by T1.qa
) as T2
where T2.num = 18; -- floor(35/2)

--
--Quality Assessment frequency by questions
--
select
	T2."QA",
	coalesce(T2."V0", 0) as "V0",
	coalesce(T2."V0.5", 0) as "V0.5",
	coalesce(T2."V1", 0) as "V1"
from crosstab (
	$$select
		T1.qa as qa,
		T1.score as score,
		count(*) as count
	from (
		select
		'QA1',
		"QA1"
		from studies

		union all

		select
		'QA2',
		"QA2"
		from studies

		union all

		select
		'QA3',
		"QA3"
		from studies

		union all

		select
		'QA4',
		"QA4"
		from studies

		union all

		select
		'QA5',
		"QA5"
		from studies

		union all

		select
		'QA6',
		"QA6"
		from studies
	) as T1 (qa, score)
	group by qa, score
	order by qa, score
	$$,
	'VALUES (0), (0.5), (1)'
) as T2 ("QA" text, "V0" double precision , "V0.5" double precision, "V1" double precision)
