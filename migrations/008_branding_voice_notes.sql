-- Free-text elaboration fields paired with the chatbot_voice radio and chatbot_tone checkboxes.

alter table public.location_intake_submissions
  add column if not exists chatbot_voice_notes text;

alter table public.location_intake_submissions
  add column if not exists chatbot_tone_notes text;
