-- Separate the business's public-facing email/phone from the primary human
-- contact (contact_email / contact_phone). Both new fields are optional.

alter table public.location_intake_submissions
  add column if not exists business_email text;

alter table public.location_intake_submissions
  add column if not exists business_phone text;
