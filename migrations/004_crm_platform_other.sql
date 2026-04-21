-- Capture the free-text CRM name when the user picks "Other" in the platform dropdown,
-- and the client's attestation that an admin account has been set up under admin@velocityaipartners.ai.

alter table public.location_intake_submissions
  add column if not exists crm_platform_other text;

alter table public.location_intake_submissions
  add column if not exists crm_account_confirmed boolean not null default false;
