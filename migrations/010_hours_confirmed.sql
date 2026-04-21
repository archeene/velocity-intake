-- Client attestation that the Business Hours grid entries are accurate.
-- Prevents silent submission of the 9am-5pm default values.

alter table public.location_intake_submissions
  add column if not exists hours_confirmed boolean not null default false;
