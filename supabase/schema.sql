-- =============================================================================
-- UFO ơi! Đừng bắt em! — Supabase schema
-- Mỗi thầy cô có tài khoản riêng (email + mật khẩu) và chỉ thấy các lớp của mình.
-- Chạy toàn bộ file này trong Supabase Dashboard → SQL Editor → New query → Run.
-- File chạy lại nhiều lần vẫn an toàn.
-- =============================================================================

create table if not exists public.classes (
  id          uuid primary key default gen_random_uuid(),
  owner_id    uuid not null default auth.uid() references auth.users (id) on delete cascade,
  name        text not null check (char_length(name) between 1 and 80),
  students    jsonb not null default '[]'::jsonb check (jsonb_typeof(students) = 'array'),
  called      jsonb not null default '[]'::jsonb check (jsonb_typeof(called) = 'array'),
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);

create index if not exists classes_owner_id_idx on public.classes (owner_id);

-- Tự cập nhật updated_at mỗi lần sửa lớp
create or replace function public.classes_touch_updated_at()
returns trigger
language plpgsql
set search_path = ''
as $$
begin
  new.updated_at := now();
  return new;
end;
$$;

drop trigger if exists classes_touch_updated_at on public.classes;
create trigger classes_touch_updated_at
  before update on public.classes
  for each row execute function public.classes_touch_updated_at();

-- Row Level Security: thầy cô chỉ đọc/ghi được lớp do chính mình tạo
alter table public.classes enable row level security;

drop policy if exists "classes_select_own" on public.classes;
create policy "classes_select_own" on public.classes
  for select to authenticated
  using ((select auth.uid()) = owner_id);

drop policy if exists "classes_insert_own" on public.classes;
create policy "classes_insert_own" on public.classes
  for insert to authenticated
  with check ((select auth.uid()) = owner_id);

drop policy if exists "classes_update_own" on public.classes;
create policy "classes_update_own" on public.classes
  for update to authenticated
  using ((select auth.uid()) = owner_id)
  with check ((select auth.uid()) = owner_id);

drop policy if exists "classes_delete_own" on public.classes;
create policy "classes_delete_own" on public.classes
  for delete to authenticated
  using ((select auth.uid()) = owner_id);
