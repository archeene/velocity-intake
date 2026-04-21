-- SMS timing (initial reply delay + follow-up cadence) and client-declared KPI targets.
-- Lead sources and reactivation fields live inside the existing business_knowledge and
-- automation_goals jsonb columns — no migration needed for those.

alter table public.location_intake_submissions
  add column if not exists sms_cadence jsonb;

alter table public.location_intake_submissions
  add column if not exists kpi_targets text;
