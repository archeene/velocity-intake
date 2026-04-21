-- Branding & messaging: chatbot voice/tone/CTA fields surfaced on the intake form.
-- Testimonials live inside the existing business_knowledge jsonb blob, so no column for that.

alter table public.location_intake_submissions
  add column if not exists chatbot_voice text;

alter table public.location_intake_submissions
  add column if not exists chatbot_tone jsonb;

alter table public.location_intake_submissions
  add column if not exists main_cta text;

alter table public.location_intake_submissions
  add column if not exists main_cta_other text;
