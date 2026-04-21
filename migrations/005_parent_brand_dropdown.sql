-- Parent brand is now a dropdown with known brands + "Other". Adds:
--   - parent_brand_other: free-text name when the user picks "Other (please specify)"
--   - booking_payment_link: StretchLab-specific URL shown only when StretchLab is the brand

alter table public.location_intake_submissions
  add column if not exists parent_brand_other text;

alter table public.location_intake_submissions
  add column if not exists booking_payment_link text;
