-- Automation & Handoff section fields.
-- Forward-looking capture: the main app will consume these once downstream
-- plumbing is built. Promotions (bk_promotions) lives inside business_knowledge
-- jsonb so no column needed for it.

alter table public.location_intake_submissions
  add column if not exists automation_goals jsonb;

alter table public.location_intake_submissions
  add column if not exists handoff_config jsonb;

alter table public.location_intake_submissions
  add column if not exists notification_config jsonb;
